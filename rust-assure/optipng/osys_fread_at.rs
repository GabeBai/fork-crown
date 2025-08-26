use std::io::{self, Read, Seek, SeekFrom};
use std::fs::File;

fn osys_fread_at(stream: &mut File, offset: i64, whence: SeekFrom, block: &mut [u8]) -> io::Result<usize> {
    let current_pos = stream.stream_position()?;
    stream.seek(whence)?;
    let result = stream.read(block)?;
    stream.seek(SeekFrom::Start(current_pos))?;
    Ok(result)
}
