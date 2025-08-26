use std::ffi::CStr;
use std::os::raw::c_char;

fn scan_option<'a>(
    str: &'a str,
    opt_buf: &mut [u8],
    opt_arg_ptr: &mut Option<&'a str>,
) -> i32 {
    if !str.starts_with('-') || str.len() < 2 {
        return 0;
    }

    let mut opt_len = 0;
    let mut ptr = &str[1..];

    while ptr.starts_with('-') {
        ptr = &ptr[1..];
    }

    if ptr.is_empty() {
        ptr = &str[1..];
    }

    loop {
        if opt_len < opt_buf.len() {
            opt_buf[opt_len] = ptr.as_bytes()[0].to_ascii_lowercase();
        }
        opt_len += 1;
        ptr = &ptr[1..];

        if ptr.is_empty() || ptr.chars().next().map_or(false, |c| c.is_whitespace()) {
            while ptr.chars().next().map_or(false, |c| c.is_whitespace()) {
                ptr = &ptr[1..];
            }
            *opt_arg_ptr = if !ptr.is_empty() { Some(ptr) } else { None };
            break;
        }

        if ptr.starts_with('=') {
            ptr = &ptr[1..];
            *opt_arg_ptr = Some(ptr);
            break;
        }
    }

    if !opt_buf.is_empty() {
        if opt_len < opt_buf.len() {
            opt_buf[opt_len] = b'\0';
        } else {
            opt_buf[opt_buf.len() - 1] = b'\0';
        }
    }

    1
}

fn main() {
    let input = "-option=value";
    let mut buffer = [0u8; 10];
    let mut opt_arg: Option<&str> = None;

    let result = scan_option(input, &mut buffer, &mut opt_arg);

    println!("Result: {}", result);
    println!("Buffer: {:?}", std::str::from_utf8(&buffer).unwrap());
    println!("Option Argument: {:?}", opt_arg);
}
