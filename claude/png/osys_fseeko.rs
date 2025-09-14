use std::fs::File;
use std::io::{self, Seek, SeekFrom};

fn osys_fseeko(stream: &mut File, offset: i64, whence: i32) -> io::Result<()> {
    let seek_from = match whence {
        0 => SeekFrom::Start(offset as u64),
        1 => SeekFrom::Current(offset),
        2 => SeekFrom::End(offset),
        _ => return Err(io::Error::new(io::ErrorKind::InvalidInput, "Invalid whence value")),
    };

    stream.seek(seek_from).map(|_| ())
}