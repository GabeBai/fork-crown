use std::ptr;

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
    malloc_func: Option<fn(usize) -> *mut libc::c_void>,
    realloc_func: Option<fn(*mut libc::c_void, usize) -> *mut libc::c_void>,
    free_func: Option<fn(*mut libc::c_void)>,
}

pub fn csv_init(p: *mut csv_parser, options: u8) -> i32 {
    if p.is_null() {
        return -1;
    }

    unsafe {
        (*p).entry_buf = ptr::null_mut();
        (*p).pstate = 0;
        (*p).quoted = 0;
        (*p).spaces = 0;
        (*p).entry_pos = 0;
        (*p).entry_size = 0;
        (*p).status = 0;
        (*p).options = options;
        (*p).quote_char = 0x22;
        (*p).delim_char = 0x2c;
        (*p).is_space = None;
        (*p).is_term = None;
        (*p).blk_size = 128;
        (*p).malloc_func = None;
        (*p).realloc_func = Some(libc::realloc);
        (*p).free_func = Some(libc::free);
    }

    0
}