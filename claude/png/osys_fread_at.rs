use std::ffi::c_void;
use std::fs::File;
use std::io::{Read, Seek, SeekFrom};
use std::os::unix::io::AsRawFd;

pub fn osys_fread_at(
    stream: *mut libc::FILE,
    offset: i64,
    whence: i32,
    block: *mut c_void,
    blocksize: usize,
) -> usize {
    let mut file = unsafe { File::from_raw_fd(libc::fileno(stream)) };
    let original_pos = file.stream_position().unwrap_or(0);

    let seek_from = match whence {
        libc::SEEK_SET => SeekFrom::Start(offset as u64),
        libc::SEEK_CUR => SeekFrom::Current(offset),
        libc::SEEK_END => SeekFrom::End(offset),
        _ => return 0,
    };

    if file.seek(seek_from).is_err() {
        return 0;
    }

    let mut buffer = unsafe { std::slice::from_raw_parts_mut(block as *mut u8, blocksize) };
    let result = file.read(&mut buffer).unwrap_or(0);

    if file.seek(SeekFrom::Start(original_pos)).is_err() {
        return 0;
    }

    std::mem::forget(file);
    result
}