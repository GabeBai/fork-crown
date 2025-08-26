use std::io::{self, Read};

#[inline]
fn getchar() -> Option<u8> {
    let mut buffer = [0; 1];
    io::stdin().read_exact(&mut buffer).ok()?;
    Some(buffer[0])
}
