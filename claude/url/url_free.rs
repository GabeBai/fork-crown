use std::ffi::c_void;

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

#[no_mangle]
pub unsafe extern "C" fn url_free(data: *mut UrlData) {
    if data.is_null() {
        return;
    }
    let data = &mut *data;
    libc::free(data.whole_url as *mut c_void);
    libc::free(data.query as *mut c_void);
    libc::free(data as *mut UrlData as *mut c_void);
}