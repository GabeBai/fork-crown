use std::mem;

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

impl BmpHeader {
    fn init_df(&mut self, width: i32, height: i32) {
        self.bfSize = 0; // Initialize as needed
        self.bfReserved = 0; // Initialize as needed
        self.bfOffBits = 0; // Initialize as needed
        self.biSize = 0; // Initialize as needed
        self.biWidth = width;
        self.biHeight = height;
        self.biPlanes = 1; // Initialize as needed
        self.biBitCount = 24; // Assuming 24-bit color depth
        self.biCompression = 0; // No compression
        self.biSizeImage = 0; // Initialize as needed
        self.biXPelsPerMeter = 0; // Initialize as needed
        self.biYPelsPerMeter = 0; // Initialize as needed
        self.biClrUsed = 0; // Initialize as needed
        self.biClrImportant = 0; // Initialize as needed
    }
}

impl BmpImg {
    fn init_df(&mut self, width: i32, height: i32) {
        self.img_header.init_df(width, height);
        self.img_pixels = vec![vec![BmpPixel { blue: 0, green: 0, red: 0 }; width as usize]; height as usize];
    }
}

fn main() {
    let width = 10;
    let height = 10;
    let mut img = BmpImg {
        img_header: BmpHeader {
            bfSize: 0,
            bfReserved: 0,
            bfOffBits: 0,
            biSize: 0,
            biWidth: 0,
            biHeight: 0,
            biPlanes: 0,
            biBitCount: 0,
            biCompression: 0,
            biSizeImage: 0,
            biXPelsPerMeter: 0,
            biYPelsPerMeter: 0,
            biClrUsed: 0,
            biClrImportant: 0,
        },
        img_pixels: Vec::new(),
    };

    img.init_df(width, height);
}
