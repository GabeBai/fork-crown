use std::ptr;
use std::mem;

#[derive(Clone)]
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
    out_name: Option<String>,
    dir_name: Option<String>,
    log_name: Option<String>,
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

struct OpngUI {
    printf_fn: Option<fn(&str)>,
    print_cntrl_fn: Option<fn(i32)>,
    progress_fn: Option<fn(u64, u64)>,
    panic_fn: Option<fn(&str)>,
}

struct OpngEngine {
    started: i32,
}

struct OpngSummary {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

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
    out_name: None,
    dir_name: None,
    log_name: None,
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

static mut ENGINE: OpngEngine = OpngEngine { started: 0 };
static mut SUMMARY: OpngSummary = OpngSummary {
    file_count: 0,
    err_count: 0,
    fix_count: 0,
    snip_count: 0,
};

static mut USR_PRINTF: Option<fn(&str)> = None;
static mut USR_PRINT_CNTRL: Option<fn(i32)> = None;
static mut USR_PROGRESS: Option<fn(u64, u64)> = None;
static mut USR_PANIC: Option<fn(&str)> = None;

fn opng_initialize(init_options: &OpngOptions, init_ui: &OpngUI) -> i32 {
    unsafe {
        USR_PRINTF = init_ui.printf_fn;
        USR_PRINT_CNTRL = init_ui.print_cntrl_fn;
        USR_PROGRESS = init_ui.progress_fn;
        USR_PANIC = init_ui.panic_fn;

        if USR_PRINTF.is_none() || USR_PRINT_CNTRL.is_none() || USR_PROGRESS.is_none() || USR_PANIC.is_none() {
            return -1;
        }

        OPTIONS = init_options.clone();

        if OPTIONS.optim_level == 0 {
            OPTIONS.nb = 1;
            OPTIONS.nc = 1;
            OPTIONS.np = 1;
            OPTIONS.nz = 1;
        }

        ptr::write_bytes(&mut SUMMARY, 0, 1);
        ENGINE.started = 1;
    }
    0
}
