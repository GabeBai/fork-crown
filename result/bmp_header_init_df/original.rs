use std::mem;

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

fn bmp_header_init_df(header: &mut BmpHeader, width: i32, height: i32) {
    header.bfSize = (mem::size_of::<BmpPixel>() as u32 * width as u32 + (width % 4) as u32) * height.abs() as u32;
    header.bfReserved = 0;
    header.bfOffBits = 54;
    header.biSize = 40;
    header.biWidth = width;
    header.biHeight = height;
    header.biPlanes = 1;
    header.biBitCount = 24;
    header.biCompression = 0;
    header.biSizeImage = 0;
    header.biXPelsPerMeter = 0;
    header.biYPelsPerMeter = 0;
    header.biClrUsed = 0;
    header.biClrImportant = 0;
}

fn main() {
    let mut header = BmpHeader {
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
    };

    bmp_header_init_df(&mut header, 100, -50);

    println!("bfSize: {}", header.bfSize);
}
