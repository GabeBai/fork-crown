use std::ffi::c_void;
use std::ptr;
use std::io::Write;

type PngByte = u8;
type PngBytep = *mut PngByte;
type PngConstCharp = *const i8;
type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

struct Timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

struct FdSet {
    __fds_bits: [i64; 1024 / (8 * std::mem::size_of::<i64>())],
}

union PthreadAttrT {
    __size: [u8; 56],
    __align: i64,
}

static mut CON_FILE: *mut std::fs::File = ptr::null_mut();

fn app_progress(current_step: u64, total_steps: u64) {
    unsafe {
        if !CON_FILE.is_null() {
            if let Some(file) = CON_FILE.as_mut() {
                let _ = file.flush();
            }
        }
    }
    if current_step != 0 && total_steps != 0 {
        return;
    }
}
