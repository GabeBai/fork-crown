use std::ptr;

pub fn osys_path_chext(buffer: *mut u8, bufsize: usize, old_path: *const u8, new_extname: *const u8) -> *mut u8 {
    if unsafe { *new_extname != b'.' as u8 } {
        return ptr::null_mut();
    }

    let mut i = 0;
    let mut pos = usize::MAX;

    while i < bufsize {
        let c = unsafe { *old_path.add(i) };
        if c == 0 {
            break;
        }
        unsafe {
            *buffer.add(i) = c;
        }
        if c == b'.' as u8 {
            pos = i;
        }
        i += 1;
    }

    if i >= bufsize {
        return ptr::null_mut();
    }

    if i > pos {
        i = pos;
    }

    loop {
        if i >= bufsize {
            return ptr::null_mut();
        }
        let c = unsafe { *new_extname };
        unsafe {
            *buffer.add(i) = c;
        }
        if c == 0 {
            return buffer;
        }
        i += 1;
        unsafe {
            new_extname = new_extname.add(1);
        }
    }
}