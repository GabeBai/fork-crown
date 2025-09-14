use std::ffi::CStr;

pub fn url_is_ssh(str: *const i8) -> bool {
    let c_str = unsafe { CStr::from_ptr(str) };
    if let Ok(s) = c_str.to_str() {
        s == "ssh" || s == "git"
    } else {
        false
    }
}