use std::fs::File;
use std::io::{self, Read, Seek, SeekFrom};
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
#[derive(Debug, Clone, Copy)]
struct BmpHeader {
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
#[derive(Debug, Clone, Copy)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
    fn new() -> Self {
        BmpImg {
            img_header: BmpHeader {
                bf_size: 0,
                bf_reserved: 0,
                bf_off_bits: 0,
                bi_size: 0,
                bi_width: 0,
                bi_height: 0,
                bi_planes: 0,
                bi_bit_count: 0,
                bi_compression: 0,
                bi_size_image: 0,
                bi_x_pels_per_meter: 0,
                bi_y_pels_per_meter: 0,
                bi_clr_used: 0,
                bi_clr_important: 0,
            },
            img_pixels: Vec::new(),
        }
    }

    fn read_header(&mut self, file: &mut File) -> Result<(), BmpError> {
        let mut header_bytes = [0u8; std::mem::size_of::<BmpHeader>()];
        file.read_exact(&mut header_bytes).map_err(|_| BmpError::HeaderNotInitialized)?;
        self.img_header = unsafe { std::ptr::read(header_bytes.as_ptr() as *const _) };
        Ok(())
    }

    fn alloc_pixels(&mut self) {
        let height = self.img_header.bi_height.abs() as usize;
        let width = self.img_header.bi_width as usize;
        self.img_pixels = vec![vec![BmpPixel { blue: 0, green: 0, red: 0 }; width]; height];
    }

    fn read_img(&mut self, filename: &str) -> Result<(), BmpError> {
        let path = Path::new(filename);
        let mut img_file = File::open(&path).map_err(|_| BmpError::FileNotOpened)?;

        self.read_header(&mut img_file)?;

        self.alloc_pixels();

        let height = self.img_header.bi_height.abs() as usize;
        let offset = if self.img_header.bi_height > 0 { height - 1 } else { 0 };
        let padding = (self.img_header.bi_width as usize) % 4;
        let items = self.img_header.bi_width as usize;

        for y in 0..height {
            let row = &mut self.img_pixels[(offset as isize - y as isize).abs() as usize];
            let row_bytes = unsafe {
                std::slice::from_raw_parts_mut(row.as_mut_ptr() as *mut u8, items * std::mem::size_of::<BmpPixel>())
            };
            img_file.read_exact(row_bytes).map_err(|_| BmpError::Error)?;
            img_file.seek(SeekFrom::Current(padding as i64)).map_err(|_| BmpError::Error)?;
        }

        Ok(())
    }
}

fn main() {
    let mut img = BmpImg::new();
    match img.read_img("path/to/your/image.bmp") {
        Ok(_) => println!("Image read successfully!"),
        Err(e) => eprintln!("Failed to read image: {:?}", e),
    }
}
