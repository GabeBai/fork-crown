use std::ffi::CStr;
use std::ptr;

pub unsafe fn u8strncpy(dest: *mut u8, src: *const u8, n: usize) -> *mut u8 {
    if n > 0 {
        let k = n - 1;
        ptr::write(dest.add(k), 0);
        ptr::copy_nonoverlapping(src, dest, n);
        
        if ptr::read(dest.add(k)) & 0x80 != 0 {
            let mut i = k;
            while i > 0 && (k - i) < 3 && (ptr::read(dest.add(i)) & 0xC0) == 0x80 {
                i -= 1;
            }
            match k - i {
                0 => ptr::write(dest.add(i), 0),
                1 => if (ptr::read(dest.add(i)) & 0xE0) != 0xC0 { ptr::write(dest.add(i), 0) },
                2 => if (ptr::read(dest.add(i)) & 0xF0) != 0xE0 { ptr::write(dest.add(i), 0) },
                3 => if (ptr::read(dest.add(i)) & 0xF8) != 0xF0 { ptr::write(dest.add(i), 0) },
                _ => {}
            }
        }
    }
    dest
}