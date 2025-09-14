use std::io::{Write, Seek};
use std::fs::File;

#[repr(C)]
pub enum BmpError {
    BmpFileNotOpened = -4,
    BmpHeaderNotInitialized,
    BmpInvalidFile,
    BmpError,
    BmpOk = 0,
}

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

pub fn bmp_header_write(header: Option<&BmpHeader>, img_file: Option<&mut File>) -> BmpError {
    match (header, img_file) {
        (None, _) => BmpError::BmpHeaderNotInitialized,
        (_, None) => BmpError::BmpFileNotOpened,
        (Some(header), Some(img_file)) => {
            let magic: u16 = 0x4D42; // 19778 in little-endian
            if img_file.write_all(&magic.to_le_bytes()).is_err() {
                return BmpError::BmpError;
            }
            if img_file.write_all(unsafe { std::slice::from_raw_parts((header as *const BmpHeader) as *const u8, std::mem::size_of::<BmpHeader>()) }).is_err() {
                return BmpError::BmpError;
            }
            BmpError::BmpOk
        }
    }
}