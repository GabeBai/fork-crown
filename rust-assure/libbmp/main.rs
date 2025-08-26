#[derive(Clone, Copy)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
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

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
    fn new(width: usize, height: usize) -> Self {
        let default_pixel = BmpPixel { blue: 0, green: 0, red: 0 };
        let img_pixels = vec![vec![default_pixel; width]; height];
        BmpImg {
            img_header: BmpHeader {
                bfSize: 0,
                bfReserved: 0,
                bfOffBits: 0,
                biSize: 0,
                biWidth: width as i32,
                biHeight: height as i32,
                biPlanes: 1,
                biBitCount: 24,
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

    fn set_pixel(&mut self, x: usize, y: usize, pixel: BmpPixel) {
        if y < self.img_pixels.len() && x < self.img_pixels[y].len() {
            self.img_pixels[y][x] = pixel;
        }
    }

    fn write(&self, filename: &str) -> Result<(), std::io::Error> {
        // Implement BMP writing logic here
        // For simplicity, this is left as a placeholder
        Ok(())
    }
}

fn main() {
    let mut img = BmpImg::new(512, 512);

    for y in 0..512 {
        for x in 0..512 {
            let pixel = if (y % 128 < 64 && x % 128 < 64) || (y % 128 >= 64 && x % 128 >= 64) {
                BmpPixel { blue: 250, green: 250, red: 250 }
            } else {
                BmpPixel { blue: 0, green: 0, red: 0 }
            };
            img.set_pixel(x, y, pixel);
        }
    }

    if let Err(e) = img.write("test.bmp") {
        eprintln!("Failed to write BMP file: {}", e);
    }
}
