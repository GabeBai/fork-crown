use std::ffi::CStr;

fn opng_strltrim(str: *const i8) -> *const i8 {
    let cstr = unsafe { CStr::from_ptr(str) };
    let mut ptr = str;
    
    for &byte in cstr.to_bytes() {
        if !byte.is_ascii_whitespace() {
            break;
        }
        unsafe { ptr = ptr.offset(1) };
    }
    
    ptr
}