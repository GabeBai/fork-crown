pub struct CsvParser {
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
    malloc_func: Option<fn(usize) -> *mut libc::c_void>,
    realloc_func: Option<fn(*mut libc::c_void, usize) -> *mut libc::c_void>,
    free_func: Option<fn(*mut libc::c_void)>,
}

pub fn csv_set_realloc_func(p: *mut CsvParser, f: Option<fn(*mut libc::c_void, usize) -> *mut libc::c_void>) {
    if !p.is_null() && f.is_some() {
        unsafe {
            (*p).realloc_func = f;
        }
    }
}