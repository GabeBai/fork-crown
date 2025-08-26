use std::io::{self, Write};

#[inline]
pub fn putchar(c: i32) -> io::Result<()> {
    io::stdout().write_all(&[c as u8])
}
