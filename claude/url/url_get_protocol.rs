use std::ffi::CStr;
use std::os::raw::c_char;

#[no_mangle]
pub extern "C" fn url_get_protocol(url: *const c_char) -> *mut c_char {
    unsafe { url_get_scheme(url) }
}

extern "C" {
    fn url_get_scheme(url: *const c_char) -> *mut c_char;
}