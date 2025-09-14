use std::io::{self, Write};

fn csv_fwrite2(fp: &mut dyn Write, src: &[u8], quote: u8) -> io::Result<()> {
    if src.is_empty() {
        return Ok(());
    }

    fp.write_all(&[quote])?;

    for &byte in src {
        if byte == quote {
            fp.write_all(&[quote])?;
        }
        fp.write_all(&[byte])?;
    }

    fp.write_all(&[quote])?;

    Ok(())
}