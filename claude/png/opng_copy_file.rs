use std::io::{Read, Write};
use std::mem;

fn opng_copy_file(mut infile: impl Read, mut outfile: impl Write) -> Result<(), Box<dyn std::error::Error>> {
    let mut write_ptr = png::create_write_struct("1.6.21", None, None, None)?;
    
    let mut buf = Vec::new();
    let buf_size_incr = 0x1000;
    
    png::write_sig(&mut write_ptr, &mut outfile)?;
    
    loop {
        let mut chunk_hdr = [0u8; 8];
        infile.read_exact(&mut chunk_hdr)?;
        
        let length = u32::from_be_bytes([chunk_hdr[0], chunk_hdr[1], chunk_hdr[2], chunk_hdr[3]]);
        
        if length > i32::MAX as u32 {
            if buf.is_empty() && length == 0x89504e47 {
                continue;
            }
            return Err("Data error".into());
        }
        
        if (length + 4) as usize > buf.len() {
            let new_size = ((length + 4 + buf_size_incr - 1) / buf_size_incr) * buf_size_incr;
            buf.resize(new_size as usize, 0);
        }
        
        infile.read_exact(&mut buf[..(length + 4) as usize])?;
        
        png::write_chunk(&mut write_ptr, &mut outfile, &chunk_hdr[4..8], &buf[..length as usize])?;
        
        if &chunk_hdr[4..8] == b"IEND" {
            break;
        }
    }
    
    Ok(())
}