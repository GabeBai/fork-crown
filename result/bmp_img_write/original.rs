use std::fs::File;
use std::io::{Result, Error};
use std::io::prelude::*;

#[repr(C)]
pub struct BmpHeader {
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

#[repr(C)]
pub struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

pub struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

#[derive(Debug)]
pub enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

fn bmp_header_write(header: &BmpHeader, file: &mut File) -> Result<(), Error> {
    // Write the header to the file
    file.write_all(unsafe {
        std::slice::from_raw_parts(
            header as *const BmpHeader as *const u8,
            std::mem::size_of::<BmpHeader>(),
        )
    })?;
    Ok(())
}

fn bmp_img_write(img: &BmpImg, filename: &str) -> Result<(), BmpError> {
    let mut img_file = match File::create(filename) {
        Ok(file) => file,
        Err(_) => return Err(BmpError::FileNotOpened),
    };

    match bmp_header_write(&img.img_header, &mut img_file) {
        Ok(_) => (),
        Err(_) => {
            return Err(BmpError::HeaderNotInitialized);
        }
    }

    let h = img.img_header.biHeight.abs() as usize;
    let offset = if img.img_header.biHeight > 0 { h - 1 } else { 0 };
    let padding: [u8; 3] = [0, 0, 0];

    for y in 0..h {
        img_file.write_all(unsafe {
            std::slice::from_raw_parts(
                img.img_pixels[offset - y].as_ptr() as *const u8,
                img.img_header.biWidth as usize * std::mem::size_of::<BmpPixel>(),
            )
        })?;

        img_file.write_all(&padding[0..(img.img_header.biWidth as usize % 4)])?;
    }

    Ok(())
}
