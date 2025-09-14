use std::ffi::c_void;
use std::os::raw::c_int;

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
    is_space: Option<extern "C" fn(u8) -> c_int>,
    is_term: Option<extern "C" fn(u8) -> c_int>,
    blk_size: usize,
    malloc_func: Option<extern "C" fn(usize) -> *mut c_void>,
    realloc_func: Option<extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<extern "C" fn(*mut c_void)>,
}

#[no_mangle]
pub unsafe extern "C" fn csv_fini(
    p: *mut csv_parser,
    cb1: Option<extern "C" fn(*mut c_void, usize, *mut c_void)>,
    cb2: Option<extern "C" fn(c_int, *mut c_void)>,
    data: *mut c_void,
) -> c_int {
    if p.is_null() {
        return -1;
    }

    let mut quoted = (*p).quoted;
    let mut pstate = (*p).pstate;
    let mut spaces = (*p).spaces;
    let mut entry_pos = (*p).entry_pos;

    if pstate == 2 && (*p).quoted != 0 && ((*p).options & 1) != 0 && ((*p).options & 4) != 0 {
        (*p).status = 1;
        return -1;
    }

    match pstate {
        3 => {
            (*p).entry_pos -= (*p).spaces + 1;
            entry_pos = (*p).entry_pos;
        }
        1 | 2 => {
            if quoted == 0 {
                entry_pos -= spaces;
            }
            if ((*p).options & 8) != 0 {
                *(*p).entry_buf.add(entry_pos) = b'\0';
            }
            if let Some(cb1_fn) = cb1 {
                if ((*p).options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                    cb1_fn(std::ptr::null_mut(), entry_pos, data);
                } else {
                    cb1_fn((*p).entry_buf as *mut c_void, entry_pos, data);
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;

            if let Some(cb2_fn) = cb2 {
                cb2_fn(-1, data);
            }
            pstate = 0;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
        }
        0 => {}
        _ => {}
    }

    (*p).spaces = 0;
    (*p).quoted = 0;
    (*p).entry_pos = 0;
    (*p).status = 0;
    (*p).pstate = 0;

    0
}