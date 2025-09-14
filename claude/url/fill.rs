use std::mem::transmute;

static mut CHAR_CAT: [u8; 256] = [0; 256];

#[repr(u32)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

unsafe fn fill(value: u32, alnum: *const i8, special: *const i8) {
    let mut alnum_ptr = alnum;
    while *alnum_ptr != 0 {
        let index = *alnum_ptr as u8 as usize;
        CHAR_CAT[index] |= value as u8;
        alnum_ptr = alnum_ptr.offset(1);
    }

    let mut special_ptr = special;
    while *special_ptr != 0 {
        let index = *special_ptr as u8 as usize;
        CHAR_CAT[index] |= value as u8;
        special_ptr = special_ptr.offset(1);
    }
}