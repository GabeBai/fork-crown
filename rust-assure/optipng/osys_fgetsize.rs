use std::fs::File;
use std::io::{self, Seek, SeekFrom};

fn osys_fgetsize(stream: &mut File) -> io::Result<u64> {
    let offset = stream.seek(SeekFrom::End(0))?;
    Ok(offset)
}
