extern crate unicode_normalization;

use unicode_normalization::UnicodeNormalization;

fn u8stricmp(s: &str, t: &str) -> i32 {
    let s_folded: String = s.nfkc().flat_map(|c| c.to_lowercase()).collect();
    let t_folded: String = t.nfkc().flat_map(|c| c.to_lowercase()).collect();

    for (cs, ct) in s_folded.chars().zip(t_folded.chars()) {
        let cs_folded = cs.to_lowercase().next().unwrap_or(cs);
        let ct_folded = ct.to_lowercase().next().unwrap_or(ct);

        if cs_folded != ct_folded {
            return cs_folded as i32 - ct_folded as i32;
        }
    }

    s_folded.len() as i32 - t_folded.len() as i32
}

fn main() {
    let s = "example";
    let t = "Example";
    let result = u8stricmp(s, t);
    println!("Comparison result: {}", result);
}
