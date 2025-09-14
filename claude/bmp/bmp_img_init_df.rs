use std::mem::size_of;

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

#[repr(C)]
pub struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[repr(C)]
pub struct BmpImg {
    img_header: BmpHeader,
    img_pixels: *mut *mut BmpPixel,
}

extern "C" {
    fn bmp_header_init_df(header: *mut BmpHeader, width: i32, height: i32);
    fn bmp_img_alloc(img: *mut BmpImg);
}

#[no_mangle]
pub extern "C" fn bmp_img_init_df(img: *mut BmpImg, width: i32, height: i32) {
    unsafe {
        bmp_header_init_df(&mut (*img).img_header, width, height);
        bmp_img_alloc(img);
    }
}