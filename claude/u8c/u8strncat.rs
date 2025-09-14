use std::ffi::CStr;
use std::os::raw::c_char;

#[no_mangle]
pub unsafe extern "C" fn u8strncat(dest: *mut c_char, src: *const c_char, n: usize) -> *mut c_char {
    let mut d = dest;
    while *d != 0 {
        d = d.add(1);
    }
    u8strncpy(d, src, n);
    *d.add(n) = 0;
    dest
}