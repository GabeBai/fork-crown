#[repr(C)]
pub enum CharacterClass {
    ISupper = if 0 < 8 { (1 << 0) << 8 } else { (1 << 0) >> 8 },
    ISLower = if 1 < 8 { (1 << 1) << 8 } else { (1 << 1) >> 8 },
    ISAlpha = if 2 < 8 { (1 << 2) << 8 } else { (1 << 2) >> 8 },
    ISDigit = if 3 < 8 { (1 << 3) << 8 } else { (1 << 3) >> 8 },
    ISXdigit = if 4 < 8 { (1 << 4) << 8 } else { (1 << 4) >> 8 },
    ISSpace = if 5 < 8 { (1 << 5) << 8 } else { (1 << 5) >> 8 },
    ISPrint = if 6 < 8 { (1 << 6) << 8 } else { (1 << 6) >> 8 },
    ISGraph = if 7 < 8 { (1 << 7) << 8 } else { (1 << 7) >> 8 },
    ISBlank = if 8 < 8 { (1 << 8) << 8 } else { (1 << 8) >> 8 },
    ISCntrl = if 9 < 8 { (1 << 9) << 8 } else { (1 << 9) >> 8 },
    ISPunct = if 10 < 8 { (1 << 10) << 8 } else { (1 << 10) >> 8 },
    ISAlnum = if 11 < 8 { (1 << 11) << 8 } else { (1 << 11) >> 8 },
}

type OpngBitsetT = u32;

extern "C" {
    fn opng_rangeset_string_to_bitset(str: *const i8, end_idx: *mut usize) -> OpngBitsetT;
    fn opng_strltrim(s: *const i8) -> *const i8;
}

pub fn opng_rangeset2bitset(out_val: &mut OpngBitsetT, in_str: *const i8) -> i32 {
    unsafe {
        let mut end_idx: usize = 0;
        *out_val = opng_rangeset_string_to_bitset(in_str, &mut end_idx);
        if end_idx == 0 || *opng_strltrim(in_str.add(end_idx)) != 0 {
            *libc::__errno_location() = 22;
            return -1;
        }
        0
    }
}