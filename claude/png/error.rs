use std::ffi::c_char;
use std::os::raw::c_int;
use std::ptr;

#[no_mangle]
pub extern "C" fn error(fmt: *const c_char, mut args: ...) {
    unsafe {
        let stderr = libc::stderr();
        libc::fprintf(stderr, b"** Error: \0".as_ptr() as *const c_char);
        libc::vfprintf(stderr, fmt, args.as_va_list());
        libc::fprintf(stderr, b"\n\0".as_ptr() as *const c_char);
        libc::exit(1);
    }
}