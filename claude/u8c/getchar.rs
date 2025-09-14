use std::io::{self, Read};

#[inline]
pub fn getchar() -> io::Result<Option<u8>> {
    io::stdin().bytes().next().transpose()
}