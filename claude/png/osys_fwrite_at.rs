use std::ffi::c_void;
use std::fs::File;
use std::io::{Seek, SeekFrom, Write};
use std::os::unix::io::AsRawFd;

pub fn osys_fwrite_at(
    stream: *mut libc::FILE,
    offset: i64,
    whence: i32,
    block: *const c_void,
    blocksize: usize,
) -> usize {
    let mut file = unsafe { File::from_raw_fd(libc::fileno(stream)) };
    let mut pos = 0;
    
    if unsafe { libc::fgetpos(stream, &mut pos) != 0 || libc::fflush(stream) != 0 } {
        return 0;
    }

    let seek_from = match whence {
        libc::SEEK_SET => SeekFrom::Start(offset as u64),
        libc::SEEK_CUR => SeekFrom::Current(offset),
        libc::SEEK_END => SeekFrom::End(offset),
        _ => return 0,
    };

    let result = match file.seek(seek_from) {
        Ok(_) => {
            let slice = unsafe { std::slice::from_raw_parts(block as *const u8, blocksize) };
            file.write(slice).unwrap_or(0)
        }
        Err(_) => 0,
    };

    if unsafe { libc::fflush(stream) != 0 } {
        return 0;
    }

    if unsafe { libc::fsetpos(stream, &pos) != 0 } {
        return 0;
    }

    result
}