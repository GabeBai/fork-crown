use std::io::{self, Write};

fn panic(msg: &str) {
    writeln!(io::stderr(), "\n** INTERNAL ERROR: {}", msg).unwrap();
    writeln!(io::stderr(), "Please submit a defect report.\nhttp://optipng.sourceforge.net/\n").unwrap();
    io::stderr().flush().unwrap();
    
    if unsafe { (*GLOBAL_OPTIONS).debug != 0 } {
        std::process::abort();
    } else {
        osys_terminate();
    }
}

static mut GLOBAL_OPTIONS: *const opng_options = std::ptr::null();

#[repr(C)]
struct opng_options {
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
    out_name: *const libc::c_char,
    dir_name: *const libc::c_char,
    log_name: *const libc::c_char,
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

extern "C" {
    fn osys_terminate() -> !;
}