use std::ffi::c_void;
use std::os::raw::c_int;
use std::os::raw::c_char;

#[repr(C)]
pub struct csv_parser {
    pstate: c_int,
    quoted: c_int,
    spaces: usize,
    entry_buf: *mut u8,
    entry_pos: usize,
    entry_size: usize,
    status: c_int,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<unsafe extern "C" fn(u8) -> c_int>,
    is_term: Option<unsafe extern "C" fn(u8) -> c_int>,
    blk_size: usize,
    malloc_func: Option<unsafe extern "C" fn(usize) -> *mut c_void>,
    realloc_func: Option<unsafe extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<unsafe extern "C" fn(*mut c_void)>,
}

#[no_mangle]
pub unsafe extern "C" fn csv_get_opts(p: *const csv_parser) -> c_int {
    if p.is_null() {
        return -1;
    }
    (*p).options as c_int
}