fn u8encode_(ch: i32, s: *mut u8) -> i32 {
    let mut len = -1;
    let mut t = [0u8; 8];
    let mut s_ptr = if s.is_null() { t.as_mut_ptr() } else { s };

    unsafe {
        if ch == 0 {
            len = 2;
            *s_ptr = 0xC0;
            *s_ptr.add(1) = 0x80;
            s_ptr = s_ptr.add(2);
        } else if ch < 0x80 {
            len = 1;
            *s_ptr = ch as u8;
            s_ptr = s_ptr.add(1);
        } else if ch < 0x0800 {
            len = 2;
            *s_ptr = (0xC0 | (ch >> 6)) as u8;
            *s_ptr.add(1) = (0x80 | (ch & 0x3F)) as u8;
            s_ptr = s_ptr.add(2);
        } else if ch < 0x10000 {
            len = 3;
            *s_ptr = (0xE0 | (ch >> 12)) as u8;
            *s_ptr.add(1) = (0x80 | ((ch >> 6) & 0x3F)) as u8;
            *s_ptr.add(2) = (0x80 | (ch & 0x3F)) as u8;
            s_ptr = s_ptr.add(3);
        } else if ch < 0x110000 {
            len = 4;
            *s_ptr = (0xF0 | (ch >> 18)) as u8;
            *s_ptr.add(1) = (0x80 | ((ch >> 12) & 0x3F)) as u8;
            *s_ptr.add(2) = (0x80 | ((ch >> 6) & 0x3F)) as u8;
            *s_ptr.add(3) = (0x80 | (ch & 0x3F)) as u8;
            s_ptr = s_ptr.add(4);
        }
        *s_ptr = b'\0';
    }

    len
}