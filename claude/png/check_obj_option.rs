use std::ffi::CStr;

fn check_obj_option(opt: *const i8, opt_arg: *const i8) {
    let opt_arg_str = unsafe { CStr::from_ptr(opt_arg).to_str().unwrap() };
    
    if opt_arg_str == "all" {
        return;
    }
    
    let valid_chars = opt_arg_str.chars().take(4).all(|c| c.is_ascii_alphabetic());
    
    if valid_chars && opt_arg_str.len() == 4 {
        panic!("Manipulation of individual chunks is not implemented");
    } else {
        err_option_arg(opt, opt_arg);
    }
}