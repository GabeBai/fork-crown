use std::ffi::c_char;

pub unsafe fn scan_decimal_number(start: *mut c_char) -> *mut c_char {
    let mut p = start;
    while *p >= b'0' as c_char && *p <= b'9' as c_char {
        p = p.add(1);
    }
    if p != start {
        p
    } else {
        std::ptr::null_mut()
    }
}