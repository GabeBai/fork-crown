use std::ffi::c_void;

#[repr(C)]
pub struct csv_parser {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: *mut u8,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<unsafe extern "C" fn(u8) -> i32>,
    is_term: Option<unsafe extern "C" fn(u8) -> i32>,
    blk_size: usize,
    malloc_func: Option<unsafe extern "C" fn(usize) -> *mut c_void>,
    realloc_func: Option<unsafe extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<unsafe extern "C" fn(*mut c_void)>,
}

#[no_mangle]
pub unsafe extern "C" fn csv_free(p: *mut csv_parser) {
    if p.is_null() {
        return;
    }
    
    let parser = &mut *p;
    
    if !parser.entry_buf.is_null() && parser.free_func.is_some() {
        (parser.free_func.unwrap())(parser.entry_buf as *mut c_void);
    }
    
    parser.entry_buf = std::ptr::null_mut();
    parser.entry_size = 0;
}