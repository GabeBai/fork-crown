use std::io::{self, Seek, SeekFrom, Write};
use std::fs::File;

fn osys_fwrite_at(stream: &mut File, offset: i64, whence: SeekFrom, block: &[u8]) -> usize {
    let pos = match stream.seek(SeekFrom::Current(0)) {
        Ok(pos) => pos,
        Err(_) => return 0,
    };

    if stream.flush().is_err() {
        return 0;
    }

    let result = if stream.seek(whence).is_ok() && stream.seek(SeekFrom::Start(offset as u64)).is_ok() {
        match stream.write(block) {
            Ok(bytes_written) => bytes_written,
            Err(_) => 0,
        }
    } else {
        0
    };

    if stream.flush().is_err() {
        return 0;
    }

    if stream.seek(SeekFrom::Start(pos)).is_err() {
        return 0;
    }

    result
}
