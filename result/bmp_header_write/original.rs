use std::fs::File;
use std::io::{Error, Write};

#[repr(C)]
#[derive(Debug)]
struct BmpHeader {
    bfSize: u32,
    bfReserved: u32,
    bfOffBits: u32,
    biSize: u32,
    biWidth: i32,
    biHeight: i32,
    biPlanes: u16,
    biBitCount: u16,
    biCompression: u32,
    biSizeImage: u32,
    biXPelsPerMeter: i32,
    biYPelsPerMeter: i32,
    biClrUsed: u32,
    biClrImportant: u32,
}

#[derive(Debug)]
enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

fn bmp_header_write(header: &BmpHeader, mut img_file: &File) -> Result<(), BmpError> {
    if header as *const _ == std::ptr::null() {
        return Err(BmpError::HeaderNotInitialized);
    } else if img_file as *const _ == std::ptr::null() {
        return Err(BmpError::FileNotOpened);
    }

    let magic: u16 = 19778;
    img_file.write_all(&magic.to_ne_bytes()).map_err(|_| BmpError::Error)?;
    img_file.write_all(unsafe {
        std::slice::from_raw_parts(header as *const _ as *const u8, std::mem::size_of::<BmpHeader>())
    }).map_err(|_| BmpError::Error)?;

    Ok(())
}
