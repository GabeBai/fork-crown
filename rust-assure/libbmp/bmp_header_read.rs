use std::fs::File;
use std::io::{self, Read};
use std::mem;
use std::path::Path;

#[repr(C)]
#[derive(Debug)]
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

#[derive(Debug)]
enum BmpError {
    FileNotOpened,
    InvalidFile,
    ReadError,
}

fn bmp_header_read<P: AsRef<Path>>(path: P) -> Result<BmpHeader, BmpError> {
    let mut file = File::open(path).map_err(|_| BmpError::FileNotOpened)?;

    let mut magic = [0u8; 2];
    file.read_exact(&mut magic).map_err(|_| BmpError::InvalidFile)?;

    if magic != [0x42, 0x4D] { // 'BM' in little-endian
        return Err(BmpError::InvalidFile);
    }

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

    let header_size = mem::size_of::<BmpHeader>();
    let header_slice = unsafe {
        std::slice::from_raw_parts_mut(&mut header as *mut _ as *mut u8, header_size)
    };

    file.read_exact(header_slice).map_err(|_| BmpError::ReadError)?;

    Ok(header)
}

fn main() {
    match bmp_header_read("path/to/your/bmp/file.bmp") {
        Ok(header) => println!("{:?}", header),
        Err(e) => eprintln!("Error reading BMP header: {:?}", e),
    }
}
