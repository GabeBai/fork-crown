use std::ffi::CStr;
use std::os::raw::c_char;
use libc::{c_int, size_t};

type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

#[no_mangle]
pub unsafe extern "C" fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut size_t) -> OpngBitsetT {
    let mut result: OpngBitsetT = 0;
    let c_str = CStr::from_ptr(str);
    let mut ptr = c_str.to_bytes();
    let mut state = 0;
    let mut out_of_range = false;
    let mut num1: i32 = -1;
    let mut num2: i32 = -1;

    loop {
        ptr = ptr.trim_start();
        match state {
            0 | 2 => {
                if let Some(&b) = ptr.first() {
                    if b.is_ascii_digit() {
                        let mut num: i32 = 0;
                        while let Some(&b) = ptr.first() {
                            if !b.is_ascii_digit() {
                                break;
                            }
                            num = 10 * num + (b - b'0') as i32;
                            if num > OPNG_BITSET_ELT_MAX {
                                out_of_range = true;
                                num = OPNG_BITSET_ELT_MAX;
                            }
                            ptr = &ptr[1..];
                        }
                        if state == 0 {
                            num1 = num;
                        }
                        num2 = num;
                        state += 1;
                        continue;
                    }
                }
            }
            1 => {
                if ptr.starts_with(b"-") {
                    ptr = &ptr[1..];
                    num2 = OPNG_BITSET_ELT_MAX;
                    state += 1;
                    continue;
                }
            }
            _ => {}
        }

        if state > 0 {
            state = 0;
            if num2 > OPNG_BITSET_ELT_MAX {
                out_of_range = true;
                num2 = OPNG_BITSET_ELT_MAX;
            }
            if num1 <= num2 {
                result |= if num1 <= num2 {
                    ((1u32 << (num2 - num1 + 1)) - 1) << num1
                } else {
                    0
                };
            } else {
                out_of_range = true;
            }
        }

        if ptr.starts_with(b",") || ptr.starts_with(b";") {
            ptr = &ptr[1..];
            continue;
        } else {
            break;
        }
    }

    if num1 == -1 {
        if !end_idx.is_null() {
            *end_idx = 0;
        }
        return 0;
    }

    if !end_idx.is_null() {
        *end_idx = (c_str.to_bytes().len() - ptr.len()) as size_t;
    }

    if out_of_range {
        *libc::__errno_location() = libc::ERANGE;
    }

    result
}