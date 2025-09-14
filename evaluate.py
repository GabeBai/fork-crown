
#!/usr/bin/env python3
"""
Batch runner for Rust analysis.

Workflow per .rs file:
  1) Copy its contents into buffer/src/buffer.rs
  2) Copy the original .rs into result/<file_stem>/original.rs
  3) Run: bash ./analyse.sh buffer
  4) Copy buffer/analysis_results/statistics.json into result/<file_stem>/statistics.json

After processing all files:
  - Aggregate to result/_summary/summary.json and result/_summary/summary.csv
  - status = "fail" iff:
        * statistics.json is missing, OR
        * analyse.stderr.log contains the word "error" (case-insensitive).
    Non-empty stderr with only warnings does NOT cause fail.

CSV columns:
  file_stem,function,status,num_unsafe_ptrs,num_unsafe_usages

Usage:
  python run_analysis.py /path/to/rs_dir [--skip-existing] [--timeout SEC] [--verbose]
"""
import argparse
import csv
import json
import re
import shutil
import subprocess
import sys
from pathlib import Path
from typing import List, Optional, Dict, Any

ROOT = Path.cwd()
ANALYSE_SCRIPT = ROOT / "analyse.sh"
BUFFER_RS = ROOT / "buffer" / "src" / "buffer.rs"
ANALYSIS_JSON = ROOT / "buffer" / "analysis_results" / "statistics.json"
RESULT_DIR = ROOT / "result"

ERROR_RE = re.compile(r"\berror\b", re.IGNORECASE)


def find_rs_files(directory: Path) -> List[Path]:
    return sorted(p for p in directory.rglob("*.rs") if p.is_file())


def write_buffer_rs(content: str) -> None:
    BUFFER_RS.parent.mkdir(parents=True, exist_ok=True)
    BUFFER_RS.write_text(content, encoding="utf-8", errors="ignore")


def run_analyse(timeout: Optional[float], verbose: bool) -> subprocess.CompletedProcess:
    if not ANALYSE_SCRIPT.exists():
        raise FileNotFoundError(f"Analyse script not found: {ANALYSE_SCRIPT}")
    cmd = ["bash", str(ANALYSE_SCRIPT), "buffer"]
    if verbose:
        print(f"[cmd] {' '.join(cmd)}")
    return subprocess.run(
        cmd,
        check=False,
        text=True,
        capture_output=True,
        timeout=timeout,
    )


def save_results(dst_dir: Path) -> bool:
    if not ANALYSIS_JSON.exists():
        return False
    dst_dir.mkdir(parents=True, exist_ok=True)
    shutil.copy2(ANALYSIS_JSON, dst_dir / "statistics.json")
    return True


FN_PATTERN = re.compile(
    r'(?m)^\s*(?:pub\s+)?(?:unsafe\s+)?(?:extern\s*(?:"[^"]*"\s*)?)?\s*fn\s+([A-Za-z_][A-Za-z0-9_]*)'
)


def detect_function_name_from_text(text: str, fallback: str) -> str:
    m = FN_PATTERN.search(text)
    return m.group(1) if m else fallback


def _extract_metrics(data: Optional[Dict[str, Any]]) -> Dict[str, Optional[int]]:
    # Expecting shape like:
    # {"num_unsafe_ptrs":0, "num_non_arr_unsafe_ptrs":0, ... "num_unsafe_usages":0, ...}
    if not isinstance(data, dict):
        return {"num_unsafe_ptrs": None, 
                "num_unsafe_usages": None, 
                "num_non_arr_mut_unsafe_usages":None,
                "num_owning_ptrs_detected":None
                }
    def _get_int(k: str) -> Optional[int]:
        v = data.get(k, None)
        if isinstance(v, int):
            return v
        # try to coerce
        try:
            return int(v)
        except Exception:
            return None
    return {
        "num_unsafe_ptrs": _get_int("num_unsafe_ptrs"),
        "num_unsafe_usages": _get_int("num_unsafe_usages"),
        "num_non_arr_mut_unsafe_usages": _get_int("num_non_arr_mut_unsafe_usages"),
        "num_owning_ptrs_detected": _get_int("num_owning_ptrs_detected")
    }


def aggregate_results() -> Dict[str, Any]:
    """
    Walk result/* directories, collect statistics.json and status.
    Status rules:
      - fail if statistics.json missing OR analyse.stderr.log contains 'error' (case-insensitive)
      - ok otherwise
    Detect function name from original.rs (preferred) or fallback to directory name.
    """
    summary_dir = RESULT_DIR / "_summary"
    summary_dir.mkdir(parents=True, exist_ok=True)
    items = []
    for child in sorted(RESULT_DIR.iterdir() if RESULT_DIR.exists() else []):
        if not child.is_dir() or child.name == "_summary":
            continue
        stem = child.name
        stats_path = child / "statistics.json"
        stderr_path = child / "analyse.stderr.log"
        orig_path = child / "original.rs"

        status = "ok"
        stderr_text = ""
        has_error = False
        if stderr_path.exists():
            try:
                stderr_text = stderr_path.read_text(encoding="utf-8", errors="ignore")
                has_error = bool(ERROR_RE.search(stderr_text or ""))
            except Exception:
                pass

        if not stats_path.exists() or has_error:
            status = "fail"

        fn_name = stem
        try:
            if orig_path.exists():
                src_text = orig_path.read_text(encoding="utf-8", errors="ignore")
                fn_name = detect_function_name_from_text(src_text, fallback=stem)
        except Exception:
            fn_name = stem

        data = None
        if stats_path.exists():
            try:
                with stats_path.open("r", encoding="utf-8") as f:
                    data = json.load(f)
            except Exception as e:
                status = "fail"
                data = {"_parse_error": str(e)}

        metrics = _extract_metrics(data)

        items.append({
            "file_stem": stem,
            "function": fn_name,
            "status": status,
            "metrics": metrics,
            "result_path": str(stats_path) if stats_path.exists() else None,
            "stderr_has_error": has_error,
        })
        # ---- NEW: 统计四个字段的合计 ----
    keys = [
        "num_unsafe_ptrs",
        "num_unsafe_usages",
        "num_non_arr_mut_unsafe_usages",
        "num_owning_ptrs_detected",
    ]
    totals = {k: 0 for k in keys}
    for it in items:
        m = it["metrics"]
        for k in keys:
            v = m.get(k)
            if isinstance(v, int):
                totals[k] += v
            # 忽略 None 或非整型
    # Write JSON summary
    summary_json_path = summary_dir / "summary.json"
    with summary_json_path.open("w", encoding="utf-8") as f:
        json.dump({"results": items}, f, ensure_ascii=False, indent=2)

    # CSV with the requested fields
    summary_csv_path = summary_dir / "summary.csv"
    with summary_csv_path.open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=["file_stem", 
                        "function", 
                        "status", 
                        "num_unsafe_ptrs", 
                        "num_unsafe_usages", 
                        "num_non_arr_mut_unsafe_usages", 
                        "num_owning_ptrs_detected"]
        )
        writer.writeheader()
        for it in items:
            writer.writerow({
                "file_stem": it["file_stem"],
                "function": it["function"],
                "status": it["status"],
                "num_unsafe_ptrs": it["metrics"]["num_unsafe_ptrs"],
                "num_unsafe_usages": it["metrics"]["num_unsafe_usages"],
                "num_non_arr_mut_unsafe_usages": it["metrics"]["num_non_arr_mut_unsafe_usages"],
                "num_owning_ptrs_detected": it["metrics"]["num_owning_ptrs_detected"],
            })

    print("[totals]", ", ".join(f"{k}={totals[k]}" for k in keys))
    print(f"[summary] Wrote {summary_json_path} and {summary_csv_path}")
    return {"json": str(summary_json_path), "csv": str(summary_csv_path), "count": len(items)}


def main(argv: List[str]) -> int:
    ap = argparse.ArgumentParser(description="Batch Rust analysis runner")
    ap.add_argument("directory", type=Path, help="Directory to search for .rs files")
    ap.add_argument("--skip-existing", action="store_true",
                    help="Skip targets that already have result/<file_stem>/statistics.json")
    ap.add_argument("--timeout", type=float, default=None,
                    help="Timeout in seconds for analyse.sh")
    ap.add_argument("--verbose", action="store_true", help="Verbose logs")
    args = ap.parse_args(argv)

    base_dir: Path = args.directory.resolve()
    if not base_dir.exists():
        print(f"[error] Directory does not exist: {base_dir}", file=sys.stderr)
        return 2

    rs_files = find_rs_files(base_dir)
    if not rs_files:
        print(f"[warn] No .rs files found under {base_dir}")
        # Still write empty summary
        aggregate_results()
        return 0

    RESULT_DIR.mkdir(parents=True, exist_ok=True)

    print(f"[info] Found {len(rs_files)} .rs files under {base_dir}")
    successes = 0
    failures = 0

    for idx, rs_path in enumerate(rs_files, 1):
        stem = rs_path.stem
        out_dir = RESULT_DIR / stem

        if args.skip_existing and (out_dir / "statistics.json").exists():
            print(f"[skip] ({idx}/{len(rs_files)}) {rs_path} -> {out_dir}/statistics.json already exists")
            continue

        print(f"[proc] ({idx}/{len(rs_files)}) {rs_path}")
        try:
            # Create result dir and store original rs
            out_dir.mkdir(parents=True, exist_ok=True)
            shutil.copy2(rs_path, out_dir / "original.rs")

            # Write into buffer/src/buffer.rs
            content = rs_path.read_text(encoding="utf-8", errors="ignore")
            write_buffer_rs(content)

            # Run analysis
            cp = run_analyse(args.timeout, args.verbose)

            # Save logs
            (out_dir / "analyse.stdout.log").write_text(cp.stdout or "", encoding="utf-8", errors="ignore")
            (out_dir / "analyse.stderr.log").write_text(cp.stderr or "", encoding="utf-8", errors="ignore")

            if cp.returncode != 0:
                print(f"[warn] analyse.sh exited with code {cp.returncode} for {rs_path}")

            # Save result JSON
            if save_results(out_dir):
                print(f"[ok]   Saved results -> {out_dir/'statistics.json'}")
                successes += 1
            else:
                print(f"[fail] statistics.json not found after analysis for {rs_path}")
                failures += 1
        except subprocess.TimeoutExpired:
            print(f"[fail] Timeout after {args.timeout}s for {rs_path}")
            failures += 1
        except Exception as e:
            print(f"[fail] Exception for {rs_path}: {e}")
            failures += 1

    # Aggregate at the end
    agg = aggregate_results()
    print(f"[done] Success: {successes}, Failures: {failures}, Aggregated: {agg['count']} items")
    return 0 if failures == 0 else 1


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
