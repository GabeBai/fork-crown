use std::io::{self, Write};
use std::fs::File;
use std::os::raw::{c_int, c_uint, c_ushort};

#[repr(C)]
pub struct BmpHeader {
    bf_size: c_uint,
    bf_reserved: c_uint,
    bf_off_bits: c_uint,
    bi_size: c_uint,
    bi_width: c_int,
    bi_height: c_int,
    bi_planes: c_ushort,
    bi_bit_count: c_ushort,
    bi_compression: c_uint,
    bi_size_image: c_uint,
    bi_x_pels_per_meter: c_int,
    bi_y_pels_per_meter: c_int,
    bi_clr_used: c_uint,
    bi_clr_important: c_uint,
}

#[derive(Debug, PartialEq)]
pub enum BmpError {
    BmpFileNotOpened = -4,
    BmpHeaderNotInitialized,
    BmpInvalidFile,
    BmpError,
    BmpOk = 0,
}

pub fn bmp_header_write(header: Option<&BmpHeader>, img_file: Option<&mut File>) -> BmpError {
    if header.is_none() {
        return BmpError::BmpHeaderNotInitialized;
    } else if img_file.is_none() {
        return BmpError::BmpFileNotOpened;
    }
    
    let magic: c_ushort = 19778;
    let img_file = img_file.unwrap();
    
    if img_file.write_all(&magic.to_le_bytes()).is_err() {
        return BmpError::BmpError;
    }
    
    if img_file.write_all(unsafe { std::slice::from_raw_parts(header.unwrap() as *const _ as *const u8, std::mem::size_of::<BmpHeader>()) }).is_err() {
        return BmpError::BmpError;
    }
    
    BmpError::BmpOk
}
