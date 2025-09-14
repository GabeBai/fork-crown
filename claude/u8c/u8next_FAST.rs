fn u8next_fast(txt: &str, ch: Option<&mut i32>) -> usize {
    let mut len = 0;
    let s = txt.as_bytes();
    if let Some(&first) = s.get(0) {
        let mut val = first as i32;
        if first > 0x7F {
            let mut i = 1;
            val = (s[i] & 0x3F) as i32;
            if (first & 0xF8) == 0xF0 {
                val |= (first as i32 & 0x07) << 6;
                val <<= 6;
                i += 1;
                if let Some(&byte) = s.get(i) {
                    val |= (byte & 0x3F) as i32;
                }
                val <<= 6;
                i += 1;
                if let Some(&byte) = s.get(i) {
                    val |= (byte & 0x3F) as i32;
                }
            } else if (first & 0xF0) == 0xE0 {
                val |= (first as i32 & 0x0F) << 6;
                val <<= 6;
                i += 1;
                if let Some(&byte) = s.get(i) {
                    val |= (byte & 0x3F) as i32;
                }
            } else {
                val |= (first as i32 & 0x1F) << 6;
            }
            len = i + 1;
        } else {
            len = 1;
        }
        if let Some(ch_ref) = ch {
            *ch_ref = val;
        }
    }
    len
}