use std::ffi::c_void;
use std::os::raw::{c_char, c_int, c_uchar};

#[repr(C)]
pub struct csv_parser {
    pstate: c_int,
    quoted: c_int,
    spaces: usize,
    entry_buf: *mut c_uchar,
    entry_pos: usize,
    entry_size: usize,
    status: c_int,
    options: c_uchar,
    quote_char: c_uchar,
    delim_char: c_uchar,
    is_space: Option<extern "C" fn(c_uchar) -> c_int>,
    is_term: Option<extern "C" fn(c_uchar) -> c_int>,
    blk_size: usize,
    malloc_func: Option<extern "C" fn(usize) -> *mut c_void>,
    realloc_func: Option<extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<extern "C" fn(*mut c_void)>,
}

#[no_mangle]
pub unsafe extern "C" fn csv_parse(
    p: *mut csv_parser,
    s: *const c_void,
    len: usize,
    cb1: Option<extern "C" fn(*mut c_void, usize, *mut c_void)>,
    cb2: Option<extern "C" fn(c_int, *mut c_void)>,
    data: *mut c_void,
) -> usize {
    assert!(!p.is_null(), "received null csv_parser");
    if s.is_null() {
        return 0;
    }

    let us = s as *const c_uchar;
    let mut pos = 0;
    let delim = (*p).delim_char;
    let quote = (*p).quote_char;
    let is_space = (*p).is_space;
    let is_term = (*p).is_term;
    let mut quoted = (*p).quoted;
    let mut pstate = (*p).pstate;
    let mut spaces = (*p).spaces;
    let mut entry_pos = (*p).entry_pos;

    if (*p).entry_buf.is_null() && pos < len {
        if csv_increase_buffer(p) != 0 {
            (*p).quoted = quoted;
            (*p).pstate = pstate;
            (*p).spaces = spaces;
            (*p).entry_pos = entry_pos;
            return pos;
        }
    }

    while pos < len {
        if entry_pos == (if (*p).options & 8 != 0 { (*p).entry_size - 1 } else { (*p).entry_size }) {
            if csv_increase_buffer(p) != 0 {
                (*p).quoted = quoted;
                (*p).pstate = pstate;
                (*p).spaces = spaces;
                (*p).entry_pos = entry_pos;
                return pos;
            }
        }

        let c = *us.add(pos);
        pos += 1;

        match pstate {
            0 | 1 => {
                if (is_space.map_or(c == 0x20 || c == 0x09, |f| f(c) != 0)) && c != delim {
                    continue;
                } else if is_term.map_or(c == 0x0d || c == 0x0a, |f| f(c) != 0) {
                    if pstate == 1 {
                        submit_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                        submit_row(c, cb2, data);
                        pstate = 0;
                    } else if (*p).options & 2 != 0 {
                        submit_row(c, cb2, data);
                        pstate = 0;
                    }
                    continue;
                } else if c == delim {
                    submit_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                    pstate = 1;
                } else if c == quote {
                    pstate = 2;
                    quoted = 1;
                } else {
                    pstate = 2;
                    quoted = 0;
                    *(*p).entry_buf.add(entry_pos) = c;
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                        pstate = 3;
                    } else {
                        if (*p).options & 1 != 0 {
                            (*p).status = 1;
                            (*p).quoted = quoted;
                            (*p).pstate = pstate;
                            (*p).spaces = spaces;
                            (*p).entry_pos = entry_pos;
                            return pos - 1;
                        }
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                    } else {
                        submit_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                        pstate = 1;
                    }
                } else if is_term.map_or(c == 0x0d || c == 0x0a, |f| f(c) != 0) {
                    if quoted == 0 {
                        submit_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                        submit_row(c, cb2, data);
                        pstate = 0;
                    } else {
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                    }
                } else if quoted == 0 && is_space.map_or(c == 0x20 || c == 0x09, |f| f(c) != 0) {
                    *(*p).entry_buf.add(entry_pos) = c;
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    *(*p).entry_buf.add(entry_pos) = c;
                    entry_pos += 1;
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos -= spaces + 1;
                    submit_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                    pstate = 1;
                } else if is_term.map_or(c == 0x0d || c == 0x0a, |f| f(c) != 0) {
                    entry_pos -= spaces + 1;
                    submit_field(p, &mut quoted, &mut entry_pos, &mut spaces, cb1, data);
                    submit_row(c, cb2, data);
                    pstate = 0;
                } else if is_space.map_or(c == 0x20 || c == 0x09, |f| f(c) != 0) {
                    *(*p).entry_buf.add(entry_pos) = c;
                    entry_pos += 1;
                    spaces += 1;
                } else if c == quote {
                    if spaces != 0 {
                        if (*p).options & 1 != 0 {
                            (*p).status = 1;
                            (*p).quoted = quoted;
                            (*p).pstate = pstate;
                            (*p).spaces = spaces;
                            (*p).entry_pos = entry_pos;
                            return pos - 1;
                        }
                        spaces = 0;
                        *(*p).entry_buf.add(entry_pos) = c;
                        entry_pos += 1;
                    } else {
                        pstate = 2;
                    }
                } else {
                    if (*p).options & 1 != 0 {
                        (*p).status = 1;
                        (*p).quoted = quoted;
                        (*p).pstate = pstate;
                        (*p).spaces = spaces;
                        (*p).entry_pos = entry_pos;
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    *(*p).entry_buf.add(entry_pos) = c;
                    entry_pos += 1;
                }
            }
            _ => {}
        }
    }

    (*p).quoted = quoted;
    (*p).pstate = pstate;
    (*p).spaces = spaces;
    (*p).entry_pos = entry_pos;
    pos
}

extern "C" {
    fn submit_field(p: *mut csv_parser, quoted: &mut c_int, entry_pos: &mut usize, spaces: &mut usize, cb1: Option<extern "C" fn(*mut c_void, usize, *mut c_void)>, data: *mut c_void);
}

extern "C" {
    fn submit_row(c: c_uchar, cb2: Option<extern "C" fn(c_int, *mut c_void)>, data: *mut c_void);
}

extern "C" {
    fn csv_increase_buffer(p: *mut csv_parser) -> c_int;
}