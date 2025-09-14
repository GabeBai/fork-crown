use std::ffi::CStr;
use std::os::raw::c_char;

#[no_mangle]
pub extern "C" fn atoi(nptr: *const c_char) -> i32 {
    let c_str = unsafe { CStr::from_ptr(nptr) };
    let s = c_str.to_str().unwrap_or("");
    s.parse::<i32>().unwrap_or(0)
}