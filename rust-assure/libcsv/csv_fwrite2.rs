use std::fs::File;
use std::io::{self, Write};
use std::os::raw::{c_int, c_uchar, c_void};

pub fn csv_fwrite2(fp: &mut File, src: *const c_void, src_size: usize, quote: c_uchar) -> c_int {
    let csrc = unsafe { std::slice::from_raw_parts(src as *const u8, src_size) };

    if fp.write_all(&[quote]).is_err() {
        return -1;
    }

    for &byte in csrc {
        if byte == quote {
            if fp.write_all(&[quote]).is_err() {
                return -1;
            }
        }
        if fp.write_all(&[byte]).is_err() {
            return -1;
        }
    }

    if fp.write_all(&[quote]).is_err() {
        return -1;
    }

    0
}

#[no_mangle] fn main() {
    // Example usage
    let mut file = File::create("output.csv").expect("Unable to create file");
    let data = b"example data";
    let quote = b'"';

    let result = csv_fwrite2(&mut file, data.as_ptr() as *const c_void, data.len(), quote);
    if result == -1 {
        eprintln!("Error writing to file");
    }
}
