use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
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
    out_name: *const c_char,
    dir_name: *const c_char,
    log_name: *const c_char,
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

#[repr(C)]
struct OpngEngineStruct {
    started: i32,
}

#[repr(C)]
struct OpngProcessStruct {
    status: u32,
    num_iterations: i32,
    in_datastream_offset: i64,
    in_file_size: u64,
    out_file_size: u64,
    in_idat_size: u64,
    out_idat_size: u64,
    best_idat_size: u64,
    max_idat_size: u64,
    in_plte_trns_size: u32,
    out_plte_trns_size: u32,
    reductions: u32,
    compr_level_set: u32,
    mem_level_set: u32,
    strategy_set: u32,
    filter_set: u32,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}

#[repr(C)]
struct OpngSummaryStruct {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

static mut engine: OpngEngineStruct = OpngEngineStruct { started: 0 };
static mut process: OpngProcessStruct = OpngProcessStruct {
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
static mut summary: OpngSummaryStruct = OpngSummaryStruct {
    file_count: 0,
    err_count: 0,
    fix_count: 0,
    snip_count: 0,
};
static mut options: OpngOptions = OpngOptions {
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
    fn usr_printf(fmt: *const c_char, ...);
    fn usr_panic(msg: *const c_char) -> !;
    fn opng_clear_image_info();
    fn opng_optimize_impl(infile_name: *const c_char);
    fn opng_print_error(err_msg: *const c_char);
    fn opng_destroy_image_info();
}

#[no_mangle]
pub unsafe extern "C" fn opng_optimize(infile_name: *const c_char) -> i32 {
    let mut result: i32;

    if engine.started == 0 {
        usr_panic(b"The OptiPNG engine is not running\0".as_ptr() as *const c_char);
    }

    usr_printf(b"** Processing: %s\n\0".as_ptr() as *const c_char, infile_name);
    summary.file_count += 1;

    opng_clear_image_info();

    let res = std::panic::catch_unwind(|| {
        opng_optimize_impl(infile_name);
        if process.status & 0x0100 != 0 {
            summary.err_count += 1;
            summary.fix_count += 1;
        }
        if process.status & 0x0010 != 0 {
            if options.snip != 0 {
                summary.snip_count += 1;
            }
        }
        0
    });

    match res {
        Ok(val) => result = val,
        Err(_) => {
            summary.err_count += 1;
            opng_print_error(b"An error occurred\0".as_ptr() as *const c_char);
            result = -1;
        }
    }

    opng_destroy_image_info();
    usr_printf(b"\n\0".as_ptr() as *const c_char);
    result
}