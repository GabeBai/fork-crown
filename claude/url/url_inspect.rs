use std::ffi::CStr;

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
    fn url_data_inspect(data: *const UrlData);
}

#[no_mangle]
pub extern "C" fn url_inspect(url: *const libc::c_char) {
    unsafe {
        let parsed_url = url_parse(url);
        url_data_inspect(parsed_url);
    }
}