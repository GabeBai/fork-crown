use std::fs::File;
use std::io::prelude::*;

#[derive(Clone)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

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

impl BmpPixel {
    fn new(blue: u8, green: u8, red: u8) -> Self {
        BmpPixel { blue, green, red }
    }
}

impl BmpImg {
    fn new(width: i32, height: i32) -> Self {
        let img_pixels = vec![vec![BmpPixel::new(0, 0, 0); width as usize]; height as usize];
        BmpImg {
            img_header: BmpHeader {
                bfSize: 0,
                bfReserved: 0,
                bfOffBits: 0,
                biSize: 0,
                biWidth: width,
                biHeight: height,
                biPlanes: 0,
                biBitCount: 0,
                biCompression: 0,
                biSizeImage: 0,
                biXPelsPerMeter: 0,
                biYPelsPerMeter: 0,
                biClrUsed: 0,
                biClrImportant: 0,
            },
            img_pixels,
        }
    }

    fn write_to_file(&self, filename: &str) -> std::io::Result<()> {
        let mut file = File::create(filename)?;
        // Write image data to file
        // For simplicity, this part is omitted
        Ok(())
    }
}

fn main() {
    let mut img = BmpImg::new(512, 512);
    for y in 0..512 {
        for x in 0..512 {
            if (y % 128 < 64 && x % 128 < 64) || (y % 128 >= 64 && x % 128 >= 64) {
                img.img_pixels[y as usize][x as usize] = BmpPixel::new(250, 250, 250);
            } else {
                img.img_pixels[y as usize][x as usize] = BmpPixel::new(0, 0, 0);
            }
        }
    }
    img.write_to_file("test.bmp").unwrap();
}
