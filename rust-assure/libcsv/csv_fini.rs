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

#[no_mangle] fn csv_fini<'a>(
    p: Option<&mut CsvParser<'a>>,
    cb1: Option<fn(&[u8], usize, *mut std::ffi::c_void)>,
    cb2: Option<fn(i32, *mut std::ffi::c_void)>,
    data: *mut std::ffi::c_void,
) -> i32 {
    let p = match p {
        Some(parser) => parser,
        None => return -1,
    };

    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if pstate == 2 && p.quoted != 0 && (p.options & 1) != 0 && (p.options & 4) != 0 {
        p.status = 1;
        return -1;
    }

    match pstate {
        3 => {
            p.entry_pos -= p.spaces + 1;
            entry_pos = p.entry_pos;
            // fall through to case 1 and 2
        }
        1 | 2 => {
            if quoted == 0 {
                entry_pos -= spaces;
            }
            if (p.options & 8) != 0 {
                if let Some(ref mut buf) = p.entry_buf {
                    buf[entry_pos] = 0;
                }
            }
            if let Some(cb1) = cb1 {
                if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                    cb1(&[], entry_pos, data);
                } else {
                    if let Some(ref buf) = p.entry_buf {
                        cb1(buf, entry_pos, data);
                    }
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
        }
        _ => {}
    }

    if let Some(cb2) = cb2 {
        cb2(-1, data);
    }

    p.spaces = 0;
    p.quoted = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.pstate = 0;

    0
}
