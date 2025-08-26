fn u8next_fast(txt: *const u8, ch: &mut i32) -> i32 {
    let mut len = 0;
    let mut s = txt;
    let first = unsafe { *s };
    let mut val = 0;
    if first != 0 {
        val = first as i32;
        if first > 0x7F {
            s = unsafe { s.add(1) };
            val = unsafe { *s & 0x3F } as i32;
            if (first & 0xF8) == 0xF0 {
                val |= ((first & 0x07) as i32) << 6;
                goto_l4(&mut s, &mut val);
            } else if (first & 0xF0) == 0xE0 {
                val |= ((first & 0x0F) as i32) << 6;
                goto_l3(&mut s, &mut val);
            } else {
                val |= ((first & 0x1F) as i32) << 6;
                goto_l2();
            }
        }
        len = 1 + (s as isize - txt as isize) as i32;
    }
    *ch = val;
    len
}

fn goto_l4(s: &mut *const u8, val: &mut i32) {
    *val <<= 6;
    if unsafe { **s } != 0 {
        *s = unsafe { s.add(1) };
    }
    *val |= (unsafe { **s } & 0x3F) as i32;
    goto_l3(s, val);
}

fn goto_l3(s: &mut *const u8, val: &mut i32) {
    *val <<= 6;
    if unsafe { **s } != 0 {
        *s = unsafe { s.add(1) };
    }
    *val |= (unsafe { **s } & 0x3F) as i32;
}

fn goto_l2() {}
