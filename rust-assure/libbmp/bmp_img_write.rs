use std::fs::File;
use std::io::{self, Write};
use std::path::Path;

#[derive(Debug)]
enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

#[repr(C)]
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

#[repr(C)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

fn bmp_header_write(header: &BmpHeader, file: &mut File) -> Result<(), BmpError> {
    // Serialize the header to bytes and write to the file
    let header_bytes = unsafe {
        std::slice::from_raw_parts(
            (header as *const BmpHeader) as *const u8,
            std::mem::size_of::<BmpHeader>(),
        )
    };
    file.write_all(header_bytes).map_err(|_| BmpError::Error)
}

fn bmp_img_write(img: &BmpImg, filename: &str) -> Result<(), BmpError> {
    let path = Path::new(filename);
    let mut img_file = File::create(&path).map_err(|_| BmpError::FileNotOpened)?;

    bmp_header_write(&img.img_header, &mut img_file)?;

    let h = img.img_header.biHeight.abs() as usize;
    let offset = if img.img_header.biHeight > 0 { h - 1 } else { 0 };
    let padding = [0u8; 3];

    for y in 0..h {
        let row = &img.img_pixels[(offset as isize - y as isize).abs() as usize];
        for pixel in row {
            img_file.write_all(&[pixel.blue, pixel.green, pixel.red]).map_err(|_| BmpError::Error)?;
        }
        img_file.write_all(&padding[..(img.img_header.biWidth as usize % 4)]).map_err(|_| BmpError::Error)?;
    }

    Ok(())
}
