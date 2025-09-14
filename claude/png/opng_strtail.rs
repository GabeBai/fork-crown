use std::ffi::CStr;

pub fn opng_strtail(str: *const i8, num: usize) -> *mut i8 {
    let len = unsafe { CStr::from_ptr(str).to_bytes().len() };
    if len <= num {
        str as *mut i8
    } else {
        unsafe { str.add(len - num) as *mut i8 }
    }
}