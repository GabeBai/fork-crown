use std::io::{self, Write};
use std::ptr;

static mut S1: *mut u8 = ptr::null_mut();
static S: [&str; 4] = ["Aa", "èa", "会員", "𧀀𧀍"];
static CP: [i32; 4] = [0x41, 0xE8, 0x4F1A, 0x27000];

extern "C" {
    fn u8next_(txt: *const u8, ch: *mut i32) -> i32;
    fn u8next_FAST(txt: *const u8, ch: *mut i32) -> i32;
}

fn main() {
    for k in 0..S.len() {
        unsafe {
            S1 = S[k].as_ptr() as *mut u8;
            let mut c: i32 = 0;
            let l = u8next_(S1, &mut c);
            
            assert_eq!(l, k as i32 + 1, "Wrong length: expected {}, got {}", k + 1, l);
            assert_eq!(c, CP[k], "Wrong code: expected {:06X}, got {:06X}", CP[k], c);
            
            let l = u8next_FAST(S1, &mut c);
            
            assert_eq!(l, k as i32 + 1, "(FAST) Wrong length: expected {}, got {}", k + 1, l);
            assert_eq!(c, CP[k], "(FAST) Wrong code: expected {:06X}, got {:06X}", CP[k], c);
        }
    }
}