use std::panic;

pub struct OpngOptions {
    pub backup: i32,
    pub clobber: i32,
    pub debug: i32,
    pub fix: i32,
    pub force: i32,
    pub full: i32,
    pub preserve: i32,
    pub quiet: i32,
    pub simulate: i32,
    pub verbose: i32,
    pub out_name: *const libc::c_char,
    pub dir_name: *const libc::c_char,
    pub log_name: *const libc::c_char,
    pub interlace: i32,
    pub nb: i32,
    pub nc: i32,
    pub np: i32,
    pub nz: i32,
    pub optim_level: i32,
    pub compr_level_set: OpngBitsetT,
    pub mem_level_set: OpngBitsetT,
    pub strategy_set: OpngBitsetT,
    pub filter_set: OpngBitsetT,
    pub window_bits: i32,
    pub snip: i32,
    pub strip_all: i32,
}

pub struct OpngProcessStruct {
    pub status: u32,
    pub num_iterations: i32,
    pub in_datastream_offset: OsysFoffsetT,
    pub in_file_size: OsysFsizeT,
    pub out_file_size: OsysFsizeT,
    pub in_idat_size: OsysFsizeT,
    pub out_idat_size: OsysFsizeT,
    pub best_idat_size: OsysFsizeT,
    pub max_idat_size: OsysFsizeT,
    pub in_plte_trns_size: u32,
    pub out_plte_trns_size: u32,
    pub reductions: u32,
    pub compr_level_set: OpngBitsetT,
    pub mem_level_set: OpngBitsetT,
    pub strategy_set: OpngBitsetT,
    pub filter_set: OpngBitsetT,
    pub best_compr_level: i32,
    pub best_mem_level: i32,
    pub best_strategy: i32,
    pub best_filter: i32,
}

pub struct OpngImageStruct {
    pub width: u32,
    pub height: u32,
    pub bit_depth: i32,
    pub color_type: i32,
    pub compression_type: i32,
    pub filter_type: i32,
    pub interlace_type: i32,
    pub row_pointers: *mut *mut u8,
    pub palette: *mut PngColor,
    pub num_palette: i32,
    pub background_ptr: *mut PngColor16,
    pub background: PngColor16,
    pub hist: *mut u16,
    pub sig_bit_ptr: *mut PngColor8,
    pub sig_bit: PngColor8,
    pub trans_alpha: *mut u8,
    pub num_trans: i32,
    pub trans_color_ptr: *mut PngColor16,
    pub trans_color: PngColor16,
    pub unknowns: *mut PngUnknownChunk,
    pub num_unknowns: i32,
}

type OpngBitsetT = u32;
type OsysFoffsetT = i64;
type OsysFsizeT = u64;

const IDAT_SIZE_MAX: OsysFsizeT = 0x7fffffff;

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

static mut IMAGE: OpngImageStruct = OpngImageStruct {
    width: 0,
    height: 0,
    bit_depth: 0,
    color_type: 0,
    compression_type: 0,
    filter_type: 0,
    interlace_type: 0,
    row_pointers: std::ptr::null_mut(),
    palette: std::ptr::null_mut(),
    num_palette: 0,
    background_ptr: std::ptr::null_mut(),
    background: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    hist: std::ptr::null_mut(),
    sig_bit_ptr: std::ptr::null_mut(),
    sig_bit: PngColor8 { red: 0, green: 0, blue: 0, gray: 0, alpha: 0 },
    trans_alpha: std::ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: std::ptr::null_mut(),
    trans_color: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    unknowns: std::ptr::null_mut(),
    num_unknowns: 0,
};

static mut USR_PANIC: Option<unsafe extern "C" fn(*const libc::c_char) -> ()> = None;

pub unsafe fn opng_init_iterations() {
    let mut compr_level_set: OpngBitsetT;
    let mut mem_level_set: OpngBitsetT;
    let mut strategy_set: OpngBitsetT;
    let mut filter_set: OpngBitsetT;
    let mut strategy_singles_set: OpngBitsetT;
    let mut preset_index: i32;
    let mut t1: i32;
    let mut t2: i32;

    if (PROCESS.status & 0x2000) != 0 || OPTIONS.full != 0 {
        PROCESS.max_idat_size = IDAT_SIZE_MAX;
    } else {
        if PROCESS.in_idat_size == 0 {
            panic!("No IDAT in input");
        }
        PROCESS.max_idat_size = PROCESS.in_idat_size + PROCESS.in_plte_trns_size as u64;
    }

    preset_index = OPTIONS.optim_level;
    if preset_index < 0 {
        preset_index = 2;
    } else if preset_index > 7 {
        preset_index = 7;
    }

    opng_init_iteration(OPTIONS.compr_level_set, (1 << (9 + 1)) - (1 << 1),
                        presets[preset_index as usize].compr_level, &mut compr_level_set);
    opng_init_iteration(OPTIONS.mem_level_set, (1 << (9 + 1)) - (1 << 1),
                        presets[preset_index as usize].mem_level, &mut mem_level_set);
    opng_init_iteration(OPTIONS.strategy_set, (1 << (3 + 1)) - (1 << 0),
                        presets[preset_index as usize].strategy, &mut strategy_set);
    opng_init_iteration(OPTIONS.filter_set, (1 << (5 + 1)) - (1 << 0),
                        presets[preset_index as usize].filter, &mut filter_set);

    if compr_level_set == 0 {
        compr_level_set |= 1 << 9;
    }
    if mem_level_set == 0 {
        mem_level_set |= 1 << 8;
    }
    if IMAGE.bit_depth < 8 || !IMAGE.palette.is_null() {
        if strategy_set == 0 {
            strategy_set |= 1 << 0;
        }
        if filter_set == 0 {
            filter_set |= 1 << 0;
        }
    } else {
        if strategy_set == 0 {
            strategy_set |= 1 << 1;
        }
        if filter_set == 0 {
            filter_set |= 1 << 5;
        }
    }

    PROCESS.compr_level_set = compr_level_set;
    PROCESS.mem_level_set = mem_level_set;
    PROCESS.strategy_set = strategy_set;
    PROCESS.filter_set = filter_set;

    strategy_singles_set = (1 << 2) | (1 << 3);
    t1 = opng_bitset_count(compr_level_set) *
         opng_bitset_count(strategy_set & !strategy_singles_set);
    t2 = opng_bitset_count(strategy_set & strategy_singles_set);
    PROCESS.num_iterations = (t1 + t2) *
        opng_bitset_count(mem_level_set) * opng_bitset_count(filter_set);

    if PROCESS.num_iterations == 0 {
        panic!("Invalid iteration parameters");
    }
}