use std::os::raw::{c_long, c_ulong};

#[repr(C)]
pub struct timespec {
    pub tv_sec: c_long,
    pub tv_nsec: c_long,
}

#[repr(C)]
pub struct fd_set {
    pub __fds_bits: [c_ulong; 16],
}

#[repr(C)]
pub union pthread_attr_t {
    pub __size: [u8; 56],
    pub __align: c_long,
}

#[repr(C)]
pub enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED,
    BMP_INVALID_FILE,
    BMP_ERROR,
    BMP_OK = 0,
}

#[repr(C)]
pub struct bmp_pixel {
    pub blue: u8,
    pub green: u8,
    pub red: u8,
}

fn bmp_pixel_init(pxl: &mut bmp_pixel, red: u8, green: u8, blue: u8) {
    pxl.red = red;
    pxl.green = green;
    pxl.blue = blue;
}
