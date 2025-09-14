use std::panic;

struct OpngOptions {
    backup: i32,
    clobber: i32,
    debug: i32,
    fix: i32,
    force: i32,
    full: i32,
    preserve: i32,
    quiet: i32,
    simulate: i32,
    verbose: i32,
    out_name: *const i8,
    dir_name: *const i8,
    log_name: *const i8,
    interlace: i32,
    nb: i32,
    nc: i32,
    np: i32,
    nz: i32,
    optim_level: i32,
    compr_level_set: u32,
    mem_level_set: u32,
    strategy_set: u32,
    filter_set: u32,
    window_bits: i32,
    snip: i32,
    strip_all: i32,
}

type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

const INPUT_IS_PNG_FILE: u32 = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: u32 = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: u32 = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: u32 = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: u32 = 0x0010;
const INPUT_HAS_APNG: u32 = 0x0020;
const INPUT_HAS_STRIPPED_DATA: u32 = 0x0040;
const INPUT_HAS_JUNK: u32 = 0x0080;
const INPUT_HAS_ERRORS: u32 = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: u32 = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;
const OUTPUT_HAS_ERRORS: u32 = 0x4000;

type OsysFoffsetT = i64;
type OsysFsizeT = u64;
type PngUint32 = u32;

struct OpngProcessStruct {
    status: u32,
    num_iterations: i32,
    in_datastream_offset: OsysFoffsetT,
    in_file_size: OsysFsizeT,
    out_file_size: OsysFsizeT,
    in_idat_size: OsysFsizeT,
    out_idat_size: OsysFsizeT,
    best_idat_size: OsysFsizeT,
    max_idat_size: OsysFsizeT,
    in_plte_trns_size: PngUint32,
    out_plte_trns_size: PngUint32,
    reductions: PngUint32,
    compr_level_set: OpngBitsetT,
    mem_level_set: OpngBitsetT,
    strategy_set: OpngBitsetT,
    filter_set: OpngBitsetT,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}

const IDAT_SIZE_MAX: OsysFsizeT = 0x7fffffff;

static mut PROCESS: OpngProcessStruct = OpngProcessStruct {
    status: 0,
    num_iterations: 0,
    in_datastream_offset: 0,
    in_file_size: 0,
    out_file_size: 0,
    in_idat_size: 0,
    out_idat_size: 0,
    best_idat_size: 0,
    max_idat_size: 0,
    in_plte_trns_size: 0,
    out_plte_trns_size: 0,
    reductions: 0,
    compr_level_set: 0,
    mem_level_set: 0,
    strategy_set: 0,
    filter_set: 0,
    best_compr_level: 0,
    best_mem_level: 0,
    best_strategy: 0,
    best_filter: 0,
};

static mut OPTIONS: OpngOptions = OpngOptions {
    backup: 0,
    clobber: 0,
    debug: 0,
    fix: 0,
    force: 0,
    full: 0,
    preserve: 0,
    quiet: 0,
    simulate: 0,
    verbose: 0,
    out_name: std::ptr::null(),
    dir_name: std::ptr::null(),
    log_name: std::ptr::null(),
    interlace: 0,
    nb: 0,
    nc: 0,
    np: 0,
    nz: 0,
    optim_level: 0,
    compr_level_set: 0,
    mem_level_set: 0,
    strategy_set: 0,
    filter_set: 0,
    window_bits: 0,
    snip: 0,
    strip_all: 0,
};

extern "C" {
    fn opng_bitset_find_first(set: OpngBitsetT) -> i32;
    fn opng_write_file(
        out_name: *const i8,
        compr_level: i32,
        mem_level: i32,
        strategy: i32,
        filter: i32,
    );
    fn usr_printf(fmt: *const i8, ...);
    fn usr_print_cntrl(cntrl_code: i32);
    fn usr_progress(num: u64, denom: u64);
    fn usr_panic(msg: *const i8) -> !;
}

unsafe fn opng_iterate() {
    let mut compr_level_set: OpngBitsetT;
    let mut mem_level_set: OpngBitsetT;
    let mut strategy_set: OpngBitsetT;
    let mut filter_set: OpngBitsetT;
    let mut saved_compr_level_set: OpngBitsetT;
    let mut compr_level: i32;
    let mut mem_level: i32;
    let mut strategy: i32;
    let mut filter: i32;
    let mut counter: i32;
    let mut line_reused: i32;

    if PROCESS.num_iterations <= 0 {
        usr_panic(b"Iterations not initialized\0".as_ptr() as *const i8);
    }

    if PROCESS.num_iterations == 1 && (PROCESS.status & OUTPUT_NEEDS_NEW_IDAT) != 0 {
        PROCESS.best_idat_size = 0;
        PROCESS.best_compr_level = opng_bitset_find_first(PROCESS.compr_level_set);
        PROCESS.best_mem_level = opng_bitset_find_first(PROCESS.mem_level_set);
        PROCESS.best_strategy = opng_bitset_find_first(PROCESS.strategy_set);
        PROCESS.best_filter = opng_bitset_find_first(PROCESS.filter_set);
        return;
    }

    compr_level_set = PROCESS.compr_level_set;
    mem_level_set = PROCESS.mem_level_set;
    strategy_set = PROCESS.strategy_set;
    filter_set = PROCESS.filter_set;
    PROCESS.best_idat_size = IDAT_SIZE_MAX + 1;
    PROCESS.best_compr_level = -1;
    PROCESS.best_mem_level = -1;
    PROCESS.best_strategy = -1;
    PROCESS.best_filter = -1;

    usr_printf(b"\nTrying:\n\0".as_ptr() as *const i8);
    line_reused = 0;
    counter = 0;

    for filter in 0..=5 {
        if (filter_set & (1 << filter)) != 0 {
            for strategy in 0..=3 {
                if (strategy_set & (1 << strategy)) != 0 {
                    saved_compr_level_set = compr_level_set;
                    if strategy == 2 {
                        compr_level_set = 0;
                        compr_level_set |= 1 << 1;
                    } else if strategy == 3 {
                        compr_level_set = 0;
                        compr_level_set |= 1 << 9;
                    }
                    for compr_level in (1..=9).rev() {
                        if (compr_level_set & (1 << compr_level)) != 0 {
                            for mem_level in (1..=9).rev() {
                                if (mem_level_set & (1 << mem_level)) != 0 {
                                    usr_printf(
                                        b"  zc = %d  zm = %d  zs = %d  f = %d\0".as_ptr() as *const i8,
                                        compr_level,
                                        mem_level,
                                        strategy,
                                        filter,
                                    );
                                    usr_progress(counter as u64, PROCESS.num_iterations as u64);
                                    counter += 1;
                                    opng_write_file(
                                        std::ptr::null(),
                                        compr_level,
                                        mem_level,
                                        strategy,
                                        filter,
                                    );
                                    if PROCESS.out_idat_size > IDAT_SIZE_MAX {
                                        if OPTIONS.verbose != 0 {
                                            usr_printf(b"\t\tIDAT too big\n\0".as_ptr() as *const i8);
                                            line_reused = 0;
                                        } else {
                                            usr_print_cntrl(b'\r' as i32);
                                            line_reused = 1;
                                        }
                                        continue;
                                    }
                                    usr_printf(
                                        b"\t\tIDAT size = %lu\n\0".as_ptr() as *const i8,
                                        PROCESS.out_idat_size,
                                    );
                                    line_reused = 0;
                                    if PROCESS.best_idat_size < PROCESS.out_idat_size {
                                        continue;
                                    }
                                    if PROCESS.best_idat_size == PROCESS.out_idat_size
                                        && PROCESS.best_strategy >= 2
                                    {
                                        continue;
                                    }
                                    PROCESS.best_compr_level = compr_level;
                                    PROCESS.best_mem_level = mem_level;
                                    PROCESS.best_strategy = strategy;
                                    PROCESS.best_filter = filter;
                                    PROCESS.best_idat_size = PROCESS.out_idat_size;
                                    if OPTIONS.full == 0 {
                                        PROCESS.max_idat_size = PROCESS.out_idat_size;
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

    if line_reused != 0 {
        usr_print_cntrl(-31);
    }

    if counter != PROCESS.num_iterations {
        usr_panic(b"Inconsistent iteration counter\0".as_ptr() as *const i8);
    }

    usr_progress(counter as u64, PROCESS.num_iterations as u64);
}