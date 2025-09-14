use std::ffi::CStr;
use std::os::raw::c_char;

#[no_mangle]
pub unsafe extern "C" fn opng_str2ulong(out_val: *mut u64, in_str: *const c_char, allow_multiplier: i32) -> i32 {
    let in_str = CStr::from_ptr(in_str).to_str().unwrap();
    let begin_ptr = in_str.trim_start();
    
    if begin_ptr.starts_with(|c: char| c.is_ascii_digit()) {
        match begin_ptr.parse::<u64>() {
            Ok(val) => {
                *out_val = val;
                let end_ptr = &begin_ptr[val.to_string().len()..];
                
                if allow_multiplier != 0 {
                    let multiplier = match end_ptr.chars().next() {
                        Some('k') | Some('K') => 1024,
                        Some('M') => 1024 * 1024,
                        Some('G') => 1024 * 1024 * 1024,
                        _ => 1,
                    };
                    
                    if multiplier > 1 {
                        match val.checked_mul(multiplier) {
                            Some(result) => *out_val = result,
                            None => {
                                *std::io::Error::last_os_error().raw_os_error().unwrap() = 34;
                                *out_val = u64::MAX;
                            }
                        }
                    }
                }
                
                if end_ptr.trim_start().is_empty() {
                    return 0;
                }
            }
            Err(_) => {}
        }
    }
    
    *std::io::Error::last_os_error().raw_os_error().unwrap() = 22;
    *out_val = 0;
    -1
}