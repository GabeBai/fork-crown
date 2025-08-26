use std::fmt::Write; // For using write! macro
use std::io::{self, Write as IoWrite}; // For stdout

type OpngBitset = u32;
const IDAT_SIZE_MAX: u64 = 0x7fffffff;

struct OpngOptions {
    verbose: bool,
    full: bool,
}

struct OpngProcess {
    status: u32,
    num_iterations: i32,
    out_idat_size: u64,
    best_idat_size: u64,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
    compr_level_set: OpngBitset,
    mem_level_set: OpngBitset,
    strategy_set: OpngBitset,
    filter_set: OpngBitset,
}

fn opng_bitset_find_first(set: OpngBitset) -> i32 {
    (0..32).find(|&i| (set & (1 << i)) != 0).unwrap_or(-1)
}

fn usr_printf(fmt: &str, args: std::fmt::Arguments) {
    let mut stdout = io::stdout();
    stdout.write_fmt(format_args!(fmt, args)).unwrap();
}

fn usr_print_cntrl(cntrl_code: i32) {
    let mut stdout = io::stdout();
    stdout.write_all(&[cntrl_code as u8]).unwrap();
}

fn usr_progress(num: u64, denom: u64) {
    println!("Progress: {}/{}", num, denom);
}

fn opng_iterate(process: &mut OpngProcess, options: &OpngOptions) {
    let mut compr_level_set = process.compr_level_set;
    let mem_level_set = process.mem_level_set;
    let strategy_set = process.strategy_set;
    let filter_set = process.filter_set;
    let mut counter = 0;
    let mut line_reused = false;

    if process.num_iterations <= 0 {
        panic!("Iterations not initialized");
    }

    if process.num_iterations == 1 && (process.status & 0x2000) != 0 {
        process.best_idat_size = 0;
        process.best_compr_level = opng_bitset_find_first(process.compr_level_set);
        process.best_mem_level = opng_bitset_find_first(process.mem_level_set);
        process.best_strategy = opng_bitset_find_first(process.strategy_set);
        process.best_filter = opng_bitset_find_first(process.filter_set);
        return;
    }

    process.best_idat_size = IDAT_SIZE_MAX + 1;
    process.best_compr_level = -1;
    process.best_mem_level = -1;
    process.best_strategy = -1;
    process.best_filter = -1;

    usr_printf("\nTrying:\n", format_args!(""));

    for filter in 0..=5 {
        if (filter_set & (1 << filter)) != 0 {
            for strategy in 0..=3 {
                if (strategy_set & (1 << strategy)) != 0 {
                    let saved_compr_level_set = compr_level_set;
                    if strategy == 2 {
                        compr_level_set = 1 << 1;
                    } else if strategy == 3 {
                        compr_level_set = 1 << 9;
                    }
                    for compr_level in (1..=9).rev() {
                        if (compr_level_set & (1 << compr_level)) != 0 {
                            for mem_level in (1..=9).rev() {
                                if (mem_level_set & (1 << mem_level)) != 0 {
                                    usr_printf(
                                        "  zc = {}  zm = {}  zs = {}  f = {}",
                                        format_args!(compr_level, mem_level, strategy, filter)
                                    );
                                    usr_progress(counter as u64, process.num_iterations as u64);
                                    counter += 1;
                                    // opng_write_file(None, compr_level, mem_level, strategy, filter);
                                    if process.out_idat_size > IDAT_SIZE_MAX {
                                        if options.verbose {
                                            usr_printf("\t\tIDAT too big\n", format_args!(""));
                                            line_reused = false;
                                        } else {
                                            usr_print_cntrl(b'\r' as i32);
                                            line_reused = true;
                                        }
                                        continue;
                                    }
                                    usr_printf("\t\tIDAT size = {}\n", format_args!("{}", process.out_idat_size));
                                    line_reused = false;
                                    if process.best_idat_size < process.out_idat_size {
                                        continue;
                                    }
                                    if process.best_idat_size == process.out_idat_size && process.best_strategy >= 2 {
                                        continue;
                                    }
                                    process.best_compr_level = compr_level;
                                    process.best_mem_level = mem_level;
                                    process.best_strategy = strategy;
                                    process.best_filter = filter;
                                    process.best_idat_size = process.out_idat_size;
                                    if !options.full {
                                        process.best_idat_size = process.out_idat_size;
                                    }
                                }
                            }
                        }
                    }
                    compr_level_set = saved_compr_level_set;
                }
            }
        }
    }

    if line_reused {
        usr_print_cntrl(-31);
    }

    if counter != process.num_iterations {
        panic!("Inconsistent iteration counter");
    }

    usr_progress(counter as u64, process.num_iterations as u64);
}
