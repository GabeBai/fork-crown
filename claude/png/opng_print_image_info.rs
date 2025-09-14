use std::ffi::c_void;

struct OpngImageStruct {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: *mut *mut u8,
    palette: *mut PngColor,
    num_palette: i32,
    background_ptr: *mut PngColor16,
    background: PngColor16,
    hist: *mut u16,
    sig_bit_ptr: *mut PngColor8,
    sig_bit: PngColor8,
    trans_alpha: *mut u8,
    num_trans: i32,
    trans_color_ptr: *mut PngColor16,
    trans_color: PngColor16,
    unknowns: *mut PngUnknownChunk,
    num_unknowns: i32,
}

struct PngColor {
    red: u8,
    green: u8,
    blue: u8,
}

struct PngColor16 {
    index: u8,
    red: u16,
    green: u16,
    blue: u16,
    gray: u16,
}

struct PngColor8 {
    red: u8,
    green: u8,
    blue: u8,
    gray: u8,
    alpha: u8,
}

struct PngUnknownChunk {
    name: [u8; 5],
    data: *mut u8,
    size: usize,
    location: u8,
}

static mut image: OpngImageStruct = OpngImageStruct {
    width: 0,
    height: 0,
    bit_depth: 0,
    color_type: 0,
    compression_type: 0,
    filter_type: 0,
    interlace_type: 0,
    row_pointers: std::ptr::null_mut(),
    palette: std::ptr::null_mut(),
    num_palette: 0,
    background_ptr: std::ptr::null_mut(),
    background: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    hist: std::ptr::null_mut(),
    sig_bit_ptr: std::ptr::null_mut(),
    sig_bit: PngColor8 { red: 0, green: 0, blue: 0, gray: 0, alpha: 0 },
    trans_alpha: std::ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: std::ptr::null_mut(),
    trans_color: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    unknowns: std::ptr::null_mut(),
    num_unknowns: 0,
};

static mut usr_printf: Option<unsafe extern "C" fn(*const i8, ...) -> ()> = None;

unsafe fn opng_print_image_info(show_dim: i32, show_depth: i32, show_type: i32, show_interlaced: i32) {
    let type_channels: [i32; 8] = [1, 0, 3, 1, 2, 0, 4, 0];
    let mut channels: i32;
    let mut printed: i32 = 0;

    if show_dim != 0 {
        printed = 1;
        usr_printf.unwrap()("%lux%lu pixels\0".as_ptr() as *const i8, image.width as u64, image.height as u64);
    }

    if show_depth != 0 {
        if printed != 0 {
            usr_printf.unwrap()(", \0".as_ptr() as *const i8);
        }
        printed = 1;
        channels = type_channels[(image.color_type & 7) as usize];
        if channels != 1 {
            usr_printf.unwrap()("%dx%d bits/pixel\0".as_ptr() as *const i8, channels, image.bit_depth);
        } else if image.bit_depth != 1 {
            usr_printf.unwrap()("%d bits/pixel\0".as_ptr() as *const i8, image.bit_depth);
        } else {
            usr_printf.unwrap()("1 bit/pixel\0".as_ptr() as *const i8);
        }
    }

    if show_type != 0 {
        if printed != 0 {
            usr_printf.unwrap()(", \0".as_ptr() as *const i8);
        }
        printed = 1;
        if (image.color_type & 1) != 0 {
            if image.num_palette == 1 {
                usr_printf.unwrap()("1 color\0".as_ptr() as *const i8);
            } else {
                usr_printf.unwrap()("%d colors\0".as_ptr() as *const i8, image.num_palette);
            }
            if image.num_trans > 0 {
                usr_printf.unwrap()(" (%d transparent)\0".as_ptr() as *const i8, image.num_trans);
            }
            usr_printf.unwrap()(" in palette\0".as_ptr() as *const i8);
        } else {
            usr_printf.unwrap()(if (image.color_type & 2) != 0 { "RGB\0".as_ptr() } else { "grayscale\0".as_ptr() } as *const i8);
            if (image.color_type & 4) != 0 {
                usr_printf.unwrap()("+alpha\0".as_ptr() as *const i8);
            } else if !image.trans_color_ptr.is_null() {
                usr_printf.unwrap()("+transparency\0".as_ptr() as *const i8);
            }
        }
    }

    if show_interlaced != 0 {
        if image.interlace_type != 0 {
            if printed != 0 {
                usr_printf.unwrap()(", \0".as_ptr() as *const i8);
            }
            usr_printf.unwrap()("interlaced\0".as_ptr() as *const i8);
        }
    }
}