use std::fs::File;
use std::io::{Read, Seek, SeekFrom};

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

#[derive(Debug, PartialEq)]
pub enum BmpError {
    FileNotOpened = -4,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok = 0,
}

fn bmp_header_read(header: &mut BmpHeader, file: &mut File) -> BmpError {
    // Implementation not provided, assuming it's defined elsewhere
    unimplemented!()
}

fn bmp_img_alloc(img: &mut BmpImg) {
    // Implementation not provided, assuming it's defined elsewhere
    unimplemented!()
}

pub fn bmp_img_read(img: &mut BmpImg, filename: &str) -> BmpError {
    let mut img_file = match File::open(filename) {
        Ok(file) => file,
        Err(_) => return BmpError::FileNotOpened,
    };

    let err = bmp_header_read(&mut img.img_header, &mut img_file);
    if err != BmpError::Ok {
        return err;
    }

    bmp_img_alloc(img);

    let h = img.img_header.bi_height.abs() as usize;
    let offset = if img.img_header.bi_height > 0 { h - 1 } else { 0 };
    let padding = (img.img_header.bi_width as usize) % 4;
    let items = img.img_header.bi_width as usize;

    for y in 0..h {
        let mut buffer = vec![0u8; items * std::mem::size_of::<BmpPixel>()];
        if img_file.read_exact(&mut buffer).is_err() {
            return BmpError::Error;
        }

        let pixels: Vec<BmpPixel> = buffer
            .chunks_exact(3)
            .map(|chunk| BmpPixel {
                blue: chunk[0],
                green: chunk[1],
                red: chunk[2],
            })
            .collect();

        img.img_pixels[offset.abs_diff(y)] = pixels;

        if img_file.seek(SeekFrom::Current(padding as i64)).is_err() {
            return BmpError::Error;
        }
    }

    BmpError::Ok
}