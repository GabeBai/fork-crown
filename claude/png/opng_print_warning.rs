use std::ffi::CStr;

pub fn opng_print_warning(msg: *const i8) {
    unsafe {
        usr_print_cntrl('\x0b' as i32);
        usr_printf(b"Warning: %s\n\0".as_ptr() as *const i8, msg);
    }
}

extern "C" {
    fn usr_print_cntrl(cntrl_code: i32);
    fn usr_printf(fmt: *const i8, ...);
}