use std::ffi::CString;
use std::ptr;

#[repr(C)]
pub struct UrlKeyValue {
    key: *const libc::c_char,
    value: *const libc::c_char,
}

#[repr(C)]
pub struct UrlData {
    whole_url: *mut libc::c_char,
    protocol: *const libc::c_char,
    userinfo: *const libc::c_char,
    host: *const libc::c_char,
    port: *const libc::c_char,
    path: *const libc::c_char,
    query: *const UrlKeyValue,
    fragment: *const libc::c_char,
}

extern "C" {
    fn url_parse(url: *const libc::c_char) -> *mut UrlData;
    fn url_free(data: *mut UrlData);
}

#[no_mangle]
pub extern "C" fn url_get_pathname(url: *const libc::c_char) -> *mut libc::c_char {
    unsafe {
        let data = url_parse(url);
        let out = if !data.is_null() && !(*data).path.is_null() {
            libc::strdup((*data).path)
        } else {
            ptr::null_mut()
        };
        url_free(data);
        out
    }
}