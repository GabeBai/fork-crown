use std::ffi::c_void;
use std::os::raw::c_char;
use std::ptr;

static mut CON_FILE: *mut libc::FILE = ptr::null_mut();
static mut LOG_FILE: *mut libc::FILE = ptr::null_mut();
static mut START_OF_LINE: i32 = 0;

#[no_mangle]
pub unsafe extern "C" fn app_printf(fmt: *const c_char, mut args: ...) {
    if *fmt == 0 {
        return;
    }

    let fmt_str = std::ffi::CStr::from_ptr(fmt).to_str().unwrap();
    START_OF_LINE = if fmt_str.ends_with('\n') { 1 } else { 0 };

    if !CON_FILE.is_null() {
        libc::vfprintf(CON_FILE, fmt, args.as_va_list());
    }

    if !LOG_FILE.is_null() {
        libc::vfprintf(LOG_FILE, fmt, args.as_va_list());
    }
}