use std::ffi::VaList;
use std::io::{self, Write};

#[inline]
pub fn vprintf(fmt: &str, args: VaList) -> io::Result<i32> {
    let stdout = io::stdout();
    let mut handle = stdout.lock();
    let result = handle.write_fmt(format_args!("{}", fmt))?;
    Ok(result as i32)
}