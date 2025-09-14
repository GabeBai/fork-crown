use std::ptr;

pub fn csv_write2(dest: *mut u8, dest_size: usize, src: *const u8, src_size: usize, quote: u8) -> usize {
    let mut cdest = dest;
    let mut csrc = src;
    let mut chars = 0;

    if src.is_null() {
        return 0;
    }

    let dest_size = if dest.is_null() { 0 } else { dest_size };

    if dest_size > 0 {
        unsafe {
            *cdest = quote;
            cdest = cdest.add(1);
        }
    }
    chars += 1;

    let mut remaining_size = src_size;
    while remaining_size > 0 {
        unsafe {
            if *csrc == quote {
                if dest_size > chars {
                    *cdest = quote;
                    cdest = cdest.add(1);
                }
                if chars < usize::MAX {
                    chars += 1;
                }
            }
            if dest_size > chars {
                *cdest = *csrc;
                cdest = cdest.add(1);
            }
            if chars < usize::MAX {
                chars += 1;
            }
            remaining_size -= 1;
            csrc = csrc.add(1);
        }
    }

    if dest_size > chars {
        unsafe {
            *cdest = quote;
        }
    }
    if chars < usize::MAX {
        chars += 1;
    }

    chars
}