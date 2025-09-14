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
    is_space: Option<fn(u8) -> i32>,
    is_term: Option<fn(u8) -> i32>,
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut c_void>,
    realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<fn(*mut c_void)>,
}

#[no_mangle]
pub unsafe extern "C" fn csv_set_free_func(p: *mut csv_parser, f: Option<unsafe extern "C" fn(*mut c_void)>) {
    if !p.is_null() && f.is_some() {
        (*p).free_func = f;
    }
}