use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
pub struct url_key_value {
    key: *const c_char,
    value: *const c_char,
}

#[repr(C)]
pub struct url_data {
    whole_url: *mut c_char,
    protocol: *const c_char,
    userinfo: *const c_char,
    host: *const c_char,
    port: *const c_char,
    path: *const c_char,
    query: *const url_key_value,
    fragment: *const c_char,
}

#[no_mangle]
pub unsafe extern "C" fn url_get_query_value(url: *const url_data, key: *const c_char) -> *const c_char {
    if url.is_null() || (*url).query.is_null() {
        return std::ptr::null();
    }

    let key = CStr::from_ptr(key);
    let mut kv = (*url).query;

    while !(*kv).key.is_null() {
        if CStr::from_ptr((*kv).key) == key {
            return (*kv).value;
        }
        kv = kv.add(1);
    }

    std::ptr::null()
}