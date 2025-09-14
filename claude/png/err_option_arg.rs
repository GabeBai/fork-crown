use std::ffi::CStr;

fn err_option_arg(opt: *const i8, opt_arg: *const i8) {
    unsafe {
        if opt_arg.is_null() || opng_strltrim(opt_arg).is_null() || *opng_strltrim(opt_arg) == 0 {
            error(CStr::from_ptr("Missing argument for option %s\0".as_ptr() as *const i8), opt);
        } else {
            error(CStr::from_ptr("Invalid argument for option %s: %s\0".as_ptr() as *const i8), opt, opt_arg);
        }
    }
}