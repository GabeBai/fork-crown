#[derive(Clone)]
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
        BmpImg {
            img_header: BmpHeader {
                bfSize: 0,
                bfReserved: 0,
                bfOffBits: 0,
                biSize: 0,
                biWidth: width as i32,
                biHeight: height as i32,
                biPlanes: 0,
                biBitCount: 0,
                biCompression: 0,
                biSizeImage: 0,
                biXPelsPerMeter: 0,
                biYPelsPerMeter: 0,
                biClrUsed: 0,
                biClrImportant: 0,
            },
            img_pixels: vec![vec![BmpPixel { blue: 0, green: 0, red: 0 }; width]; height],
        }
    }
}

fn main() {
    let mut img = BmpImg::new(10, 10);
    // Use img as needed
    // No need to manually free memory; Rust handles it automatically
}
