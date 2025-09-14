use std::io::{self, Write};

#[inline]
pub fn putchar(c: i32) -> i32 {
    io::stdout().write(&[c as u8]).map(|_| c).unwrap_or(-1)
}