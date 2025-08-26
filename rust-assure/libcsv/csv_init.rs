use std::ffi::c_void;
use std::alloc::{self, Layout};

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
    is_space: Option<&'a dyn Fn(u8) -> i32>,
    is_term: Option<&'a dyn Fn(u8) -> i32>,
    blk_size: usize,
    malloc_func: Option<&'a dyn Fn(usize) -> *mut c_void>,
    realloc_func: Option<&'a dyn Fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<&'a dyn Fn(*mut c_void)>,
}

impl<'a> CsvParser<'a> {
    fn csv_init(p: &mut CsvParser, options: u8) -> i32 {
        if p as *mut _ == std::ptr::null_mut() {
            return -1;
        }
        p.entry_buf = None;
        p.pstate = 0;
        p.quoted = 0;
        p.spaces = 0;
        p.entry_pos = 0;
        p.entry_size = 0;
        p.status = 0;
        p.options = options;
        p.quote_char = 0x22;
        p.delim_char = 0x2c;
        p.is_space = None;
        p.is_term = None;
        p.blk_size = 128;
        p.malloc_func = None;
        p.realloc_func = Some(&|ptr, size| unsafe {
            alloc::realloc(ptr as *mut u8, Layout::from_size_align_unchecked(size, 1), size) as *mut c_void
        });
        p.free_func = Some(&|ptr| unsafe {
            alloc::dealloc(ptr as *mut u8, Layout::from_size_align_unchecked(1, 1))
        });
        0
    }
}

#[no_mangle] fn main() {
    let mut parser = CsvParser {
        pstate: 0,
        quoted: 0,
        spaces: 0,
        entry_buf: None,
        entry_pos: 0,
        entry_size: 0,
        status: 0,
        options: 0,
        quote_char: 0,
        delim_char: 0,
        is_space: None,
        is_term: None,
        blk_size: 128,
        malloc_func: None,
        realloc_func: None,
        free_func: None,
    };

    CsvParser::csv_init(&mut parser, 0);
}
