use std::ptr::null_mut;

fn csv_increase_buffer(p: *mut csv_parser) -> i32 {
    if p.is_null() {
        return 0;
    }
    
    let p = unsafe { &mut *p };
    
    if p.realloc_func.is_none() {
        return 0;
    }
    
    let mut to_add = p.blk_size;
    let mut vp: *mut u8;
    
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }
    
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    
    while {
        vp = unsafe { (p.realloc_func.unwrap())(p.entry_buf as *mut _, p.entry_size + to_add) as *mut u8 };
        vp.is_null()
    } {
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }
    
    p.entry_buf = vp;
    p.entry_size += to_add;
    0
}