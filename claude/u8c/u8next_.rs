fn u8next(txt: *const i8, ch: *mut i32) -> i32 {
    let mut len = 0;
    let mut s = txt as *const u8;
    let first = unsafe { *s };
    let mut val = 0;

    if first != 0 {
        val = first as i32;
        'fsm: loop {
            unsafe {
                if *s < 0x80 { len = 1; break; }
                if *s == 0xC0 { len = 2; val = 0; s = s.add(1); if *s != 0x80 { len = -1; val = first as i32; break; } break; }
                if *s <= 0xC1 { len = -1; val = first as i32; break; }
                if *s <= 0xDF { val &= 0x1F; len = 2; s = s.add(1); if *s < 0x80 || 0xBF < *s { len = -1; val = first as i32; break; } val = (val << 6) | (*s & 0x3F) as i32; break; }
                if *s == 0xE0 { val &= 0x0F; len = 3; s = s.add(1); if *s < 0xA0 || 0xBF < *s { len = -1; val = first as i32; break; } }
                else if *s <= 0xEC { val &= 0x0F; len = 3; s = s.add(1); if *s < 0x80 || 0xBF < *s { len = -1; val = first as i32; break; } }
                else if *s == 0xED { val &= 0x0F; len = 3; s = s.add(1); if *s < 0x80 || 0x9F < *s { len = -1; val = first as i32; break; } }
                else if *s <= 0xEF { val &= 0x0F; len = 3; s = s.add(1); if *s < 0x80 || 0xBF < *s { len = -1; val = first as i32; break; } }
                else if *s == 0xF0 { val &= 0x07; len = 4; s = s.add(1); if *s < 0x90 || 0xBF < *s { len = -1; val = first as i32; break; } }
                else if *s <= 0xF3 { val &= 0x07; len = 4; s = s.add(1); if *s < 0x80 || 0xBF < *s { len = -1; val = first as i32; break; } }
                else if *s == 0xF4 { val &= 0x07; len = 4; s = s.add(1); if *s < 0x80 || 0x8F < *s { len = -1; val = first as i32; break; } }
                else { len = -1; val = first as i32; break; }

                val = (val << 6) | (*s & 0x3F) as i32;
                if len == 4 {
                    s = s.add(1);
                    if *s < 0x80 || 0xBF < *s { len = -1; val = first as i32; break; }
                    val = (val << 6) | (*s & 0x3F) as i32;
                }
                s = s.add(1);
                if *s < 0x80 || 0xBF < *s { len = -1; val = first as i32; break; }
                val = (val << 6) | (*s & 0x3F) as i32;
                break;
            }
        }
    }

    if !ch.is_null() {
        unsafe { *ch = val; }
    }
    len
}