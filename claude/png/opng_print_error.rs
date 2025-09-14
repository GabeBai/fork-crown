use std::ffi::CStr;

pub fn opng_print_error(msg: *const libc::c_char) {
    unsafe {
        (usr_print_cntrl)('\x0b' as libc::c_int);
        (usr_printf)(b"Error: %s\n\0".as_ptr() as *const libc::c_char, msg);
    }
}

extern "C" {
    static usr_printf: unsafe extern "C" fn(*const libc::c_char, ...);
    static usr_print_cntrl: unsafe extern "C" fn(libc::c_int);
}