use libc::c_char;
use libc::c_int;
use libc::c_uint;
use libc::size_t;
use libc::tolower;
use std::ptr;

#[no_mangle]
pub unsafe extern "C" fn scan_option(
    str: *const c_char,
    opt_buf: *mut c_char,
    opt_buf_size: size_t,
    opt_arg_ptr: *mut *const c_char,
) -> c_int {
    let mut ptr = str;
    let mut opt_len: c_uint = 0;

    if *ptr != b'-' as c_char || *ptr.offset(1) == 0 {
        return 0;
    }

    ptr = ptr.offset(1);
    while *ptr == b'-' as c_char {
        ptr = ptr.offset(1);
    }
    if *ptr == 0 {
        ptr = ptr.offset(-1);
    }

    loop {
        if (opt_len as usize) < opt_buf_size {
            *opt_buf.offset(opt_len as isize) = tolower(*ptr as c_int) as c_char;
        }
        opt_len += 1;
        ptr = ptr.offset(1);

        if *ptr == 0 || libc::isspace(*ptr as c_int) != 0 {
            while libc::isspace(*ptr as c_int) != 0 {
                ptr = ptr.offset(1);
            }
            *opt_arg_ptr = if *ptr != 0 { ptr } else { ptr::null() };
            break;
        }
        if *ptr == b'=' as c_char {
            ptr = ptr.offset(1);
            *opt_arg_ptr = ptr;
            break;
        }
    }

    if opt_buf_size > 0 {
        if (opt_len as usize) < opt_buf_size {
            *opt_buf.offset(opt_len as isize) = b'\0' as c_char;
        } else {
            *opt_buf.offset((opt_buf_size - 1) as isize) = b'\0' as c_char;
        }
    }

    1
}