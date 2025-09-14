use std::ffi::c_void;

#[no_mangle]
pub unsafe extern "C" fn csv_get_delim(p: *const csv_parser) -> u8 {
    assert!(!p.is_null(), "received null csv_parser");
    (*p).delim_char
}

struct csv_parser {
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