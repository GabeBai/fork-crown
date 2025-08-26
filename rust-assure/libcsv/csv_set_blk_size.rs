struct CsvParser<'a> {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<Vec<u8>>,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: &'a dyn Fn(u8) -> i32,
    is_term: &'a dyn Fn(u8) -> i32,
    blk_size: usize,
    malloc_func: &'a dyn Fn(usize) -> *mut std::ffi::c_void,
    realloc_func: &'a dyn Fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void,
    free_func: &'a dyn Fn(*mut std::ffi::c_void),
}

#[no_mangle] fn csv_set_blk_size(p: &mut CsvParser, size: usize) {
    if p.blk_size != 0 {
        p.blk_size = size;
    }
}
