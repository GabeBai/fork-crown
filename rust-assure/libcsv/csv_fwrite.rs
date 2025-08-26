use std::fs::File;
use std::io::{self, Write};
use std::os::raw::{c_void, c_ulong, c_int};

pub extern "C" fn csv_fwrite(fp: *mut File, src: *const c_void, src_size: c_ulong) -> c_int {
    // Safety: Ensure the pointers are valid
    if fp.is_null() || src.is_null() {
        return -1;
    }

    let file = unsafe { &mut *fp };
    let data = unsafe { std::slice::from_raw_parts(src as *const u8, src_size as usize) };

    match file.write_all(data) {
        Ok(_) => 0,
        Err(_) => -1,
    }
}

pub extern "C" fn csv_fwrite2(fp: *mut File, src: *const c_void, src_size: c_ulong, quote: u8) -> c_int {
    // Safety: Ensure the pointers are valid
    if fp.is_null() || src.is_null() {
        return -1;
    }

    let file = unsafe { &mut *fp };
    let data = unsafe { std::slice::from_raw_parts(src as *const u8, src_size as usize) };

    let mut quoted_data = Vec::with_capacity(data.len() + 2);
    quoted_data.push(quote);
    quoted_data.extend_from_slice(data);
    quoted_data.push(quote);

    match file.write_all(&quoted_data) {
        Ok(_) => 0,
        Err(_) => -1,
    }
}

#[no_mangle]
pub extern "C" fn csv_fwrite_wrapper(fp: *mut File, src: *const c_void, src_size: c_ulong) -> c_int {
    csv_fwrite2(fp, src, src_size, b'"')
}
