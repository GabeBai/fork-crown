use std::ffi::CStr;

fn u8codepoint(s: *mut i8) -> i32 {
    let mut c: i32 = 0;
    unsafe {
        u8next_(CStr::from_ptr(s as *const i8).as_ptr(), &mut c);
    }
    c
}

extern "C" {
    fn u8next_(txt: *const i8, ch: *mut i32) -> i32;
}