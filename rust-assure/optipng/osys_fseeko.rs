use std::fs::File;
use std::io::{self, Seek, SeekFrom};
use std::os::raw::c_int;

type osys_foffset_t = i64; // Assuming osys_foffset_t is a 64-bit integer

fn osys_fseeko(stream: &mut File, offset: osys_foffset_t, whence: c_int) -> c_int {
    let seek_from = match whence {
        0 => SeekFrom::Start(offset as u64),
        1 => SeekFrom::Current(offset),
        2 => SeekFrom::End(offset),
        _ => return -1, // Invalid whence
    };

    match stream.seek(seek_from) {
        Ok(_) => 0,
        Err(_) => -1,
    }
}

fn main() {
    // Example usage
    let mut file = File::open("example.txt").expect("Failed to open file");
    let result = osys_fseeko(&mut file, 10, 0);
    println!("Seek result: {}", result);
}
