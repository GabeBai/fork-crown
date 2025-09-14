use std::fs::File;
use std::io::{Write, Result};

#[repr(C)]
pub struct BmpHeader {
    bf_size: u32,
    bf_reserved: u32,
    bf_off_bits: u32,
    bi_size: u32,
    bi_width: i32,
    bi_height: i32,
    bi_planes: u16,
    bi_bit_count: u16,
    bi_compression: u32,
    bi_size_image: u32,
    bi_x_pels_per_meter: i32,
    bi_y_pels_per_meter: i32,
    bi_clr_used: u32,
    bi_clr_important: u32,
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

#[repr(i32)]
pub enum BmpError {
    FileNotOpened = -4,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok = 0,
}

fn bmp_header_write(header: &BmpHeader, file: &mut File) -> Result<()> {
    // Implementation not provided, assuming it's defined elsewhere
    unimplemented!()
}

pub fn bmp_img_write(img: &BmpImg, filename: &str) -> BmpError {
    let mut img_file = match File::create(filename) {
        Ok(file) => file,
        Err(_) => return BmpError::FileNotOpened,
    };

    if let Err(_) = bmp_header_write(&img.img_header, &mut img_file) {
        return BmpError::Error;
    }

    let h = img.img_header.bi_height.abs() as usize;
    let offset = if img.img_header.bi_height > 0 { h - 1 } else { 0 };
    let padding = [0u8; 3];

    for y in 0..h {
        let row = &img.img_pixels[offset.abs_diff(y)];
        if let Err(_) = img_file.write_all(unsafe { std::slice::from_raw_parts(row.as_ptr() as *const u8, row.len() * std::mem::size_of::<BmpPixel>()) }) {
            return BmpError::Error;
        }
        if let Err(_) = img_file.write_all(&padding[..(img.img_header.bi_width as usize % 4)]) {
            return BmpError::Error;
        }
    }

    BmpError::Ok
}