use std::ptr;
use std::fs::File;
use std::io::{self, BufWriter};

enum Operation {
    Run,
    ShowHelp,
    ShowVersion,
}

struct OpngOptions {
    // Fields omitted for brevity
}

static mut OPERATION: Operation = Operation::Run;
static mut OPTIONS: OpngOptions = OpngOptions { /* fields omitted */ };
static mut CON_FILE: *mut libc::FILE = ptr::null_mut();
static mut LOG_FILE: *mut libc::FILE = ptr::null_mut();
static mut START_OF_LINE: i32 = 0;

unsafe fn app_init() {
    START_OF_LINE = 1;
    CON_FILE = match OPERATION {
        Operation::ShowHelp | Operation::ShowVersion => libc::stdout(),
        _ if !OPTIONS.quiet => libc::stderr(),
        _ => ptr::null_mut(),
    };

    if !OPTIONS.log_name.is_null() {
        LOG_FILE = libc::fopen(OPTIONS.log_name, b"a\0".as_ptr() as *const i8);
        if LOG_FILE.is_null() {
            error("Can't open log file: %s\n", OPTIONS.log_name);
        }
        libc::setvbuf(LOG_FILE, ptr::null_mut(), libc::_IOLBF as i32, 8192);
        app_printf("** Warning: %s\n\n",
                   b"The option -log is deprecated; use shell redirection\0".as_ptr() as *const i8);
    }
}