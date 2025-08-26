use std::vec::Vec;

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
    fn bmp_img_alloc(&mut self) {
        let h = self.img_header.biHeight.abs() as usize;
        let w = self.img_header.biWidth as usize;
        self.img_pixels = Vec::with_capacity(h);
        
        for _ in 0..h {
            let row = vec![BmpPixel { blue: 0, green: 0, red: 0 }; w];
            self.img_pixels.push(row);
        }
    }
}

fn main() {
    // Example usage
    let header = BmpHeader {
        bfSize: 0,
        bfReserved: 0,
        bfOffBits: 0,
        biSize: 0,
        biWidth: 10,
        biHeight: 10,
        biPlanes: 0,
        biBitCount: 0,
        biCompression: 0,
        biSizeImage: 0,
        biXPelsPerMeter: 0,
        biYPelsPerMeter: 0,
        biClrUsed: 0,
        biClrImportant: 0,
    };

    let mut img = BmpImg {
        img_header: header,
        img_pixels: Vec::new(),
    };

    img.bmp_img_alloc();
}
