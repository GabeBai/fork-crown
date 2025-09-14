use std::os::raw::{c_void, c_ushort, c_uint, c_int, c_ulong, c_long};
use std::io::Read;

#[repr(C)]
pub struct bmp_header {
    bfSize: c_uint,
    bfReserved: c_uint,
    bfOffBits: c_uint,
    biSize: c_uint,
    biWidth: c_int,
    biHeight: c_int,
    biPlanes: c_ushort,
    biBitCount: c_ushort,
    biCompression: c_uint,
    biSizeImage: c_uint,
    biXPelsPerMeter: c_int,
    biYPelsPerMeter: c_int,
    biClrUsed: c_uint,
    biClrImportant: c_uint,
}

#[repr(C)]
pub enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED,
    BMP_INVALID_FILE,
    BMP_ERROR,
    BMP_OK = 0,
}

extern {
    fn fread(ptr: *mut c_void, size: usize, n: usize, stream: *mut std::fs::File) -> usize;
}

fn bmp_header_read(header: &mut bmp_header, img_file: &mut std::fs::File) -> bmp_error {
    if img_file as *mut std::fs::File == std::ptr::null_mut() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }
    let mut magic: c_ushort = 0;
    if unsafe { fread(&mut magic as *mut _ as *mut c_void, std::mem::size_of::<c_ushort>(), 1, img_file) } != 1 || magic != 19778 {
        return bmp_error::BMP_INVALID_FILE;
    }
    if unsafe { fread(header as *mut _ as *mut c_void, std::mem::size_of::<bmp_header>(), 1, img_file) } != 1 {
        return bmp_error::BMP_ERROR;
    }
    bmp_error::BMP_OK
}
