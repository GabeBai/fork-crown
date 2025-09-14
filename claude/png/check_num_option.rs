use std::ffi::CStr;

fn check_num_option(opt: *const i8, opt_arg: *const i8, lowest: i32, highest: i32) -> i32 {
    let value: u64;
    unsafe {
        let opt_arg_str = CStr::from_ptr(opt_arg).to_str().unwrap();
        match opt_arg_str.parse::<u64>() {
            Ok(v) if v <= 2147483647 && (v as i32) >= lowest && (v as i32) <= highest => {
                value = v;
            },
            _ => {
                let opt_str = CStr::from_ptr(opt).to_str().unwrap();
                err_option_arg(opt_str, opt_arg_str);
                unreachable!();
            }
        }
    }
    value as i32
}