use std::ffi::CStr;
use std::os::raw::c_char;

#[no_mangle]
pub extern "C" fn url_get_hash(url: *const c_char) -> *mut c_char {
    unsafe { url_get_fragment(url) }
}

extern "C" {
    fn url_get_fragment(url: *const c_char) -> *mut c_char;
}