use std::ptr;

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
    pub compr_level_set: u32,
    pub mem_level_set: u32,
    pub strategy_set: u32,
    pub filter_set: u32,
    pub window_bits: i32,
    pub snip: i32,
    pub strip_all: i32,
}

pub struct OpngUi {
    pub printf_fn: unsafe extern "C" fn(*const libc::c_char, ...) -> (),
    pub print_cntrl_fn: unsafe extern "C" fn(i32) -> (),
    pub progress_fn: unsafe extern "C" fn(libc::c_ulong, libc::c_ulong) -> (),
    pub panic_fn: unsafe extern "C" fn(*const libc::c_char) -> (),
}

static mut engine: OpngEngineStruct = OpngEngineStruct { started: 0 };
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
    out_name: ptr::null(),
    dir_name: ptr::null(),
    log_name: ptr::null(),
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
static mut usr_printf: Option<unsafe extern "C" fn(*const libc::c_char, ...) -> ()> = None;
static mut usr_print_cntrl: Option<unsafe extern "C" fn(i32) -> ()> = None;
static mut usr_progress: Option<unsafe extern "C" fn(libc::c_ulong, libc::c_ulong) -> ()> = None;
static mut usr_panic: Option<unsafe extern "C" fn(*const libc::c_char) -> ()> = None;

struct OpngEngineStruct {
    started: i32,
}

struct OpngSummaryStruct {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

#[no_mangle]
pub unsafe extern "C" fn opng_initialize(
    init_options: *const OpngOptions,
    init_ui: *const OpngUi,
) -> i32 {
    usr_printf = Some((*init_ui).printf_fn);
    usr_print_cntrl = Some((*init_ui).print_cntrl_fn);
    usr_progress = Some((*init_ui).progress_fn);
    usr_panic = Some((*init_ui).panic_fn);

    if usr_printf.is_none() || usr_print_cntrl.is_none() || usr_progress.is_none() || usr_panic.is_none() {
        return -1;
    }

    options = *init_options;
    if options.optim_level == 0 {
        options.nb = 1;
        options.nc = 1;
        options.np = 1;
        options.nz = 1;
    }

    ptr::write_bytes(&mut summary as *mut OpngSummaryStruct as *mut u8, 0, std::mem::size_of::<OpngSummaryStruct>());
    engine.started = 1;
    0
}