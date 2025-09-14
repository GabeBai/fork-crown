use std::ptr;

pub struct Image {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: *mut *mut u8,
    palette: *mut png_color,
    num_palette: i32,
    background_ptr: *mut png_color_16,
    background: png_color_16,
    hist: *mut u16,
    sig_bit_ptr: *mut png_color_8,
    sig_bit: png_color_8,
    trans_alpha: *mut u8,
    num_trans: i32,
    trans_color_ptr: *mut png_color_16,
    trans_color: png_color_16,
    unknowns: *mut png_unknown_chunk,
    num_unknowns: i32,
}

static mut image: Image = Image {
    width: 0,
    height: 0,
    bit_depth: 0,
    color_type: 0,
    compression_type: 0,
    filter_type: 0,
    interlace_type: 0,
    row_pointers: ptr::null_mut(),
    palette: ptr::null_mut(),
    num_palette: 0,
    background_ptr: ptr::null_mut(),
    background: png_color_16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    hist: ptr::null_mut(),
    sig_bit_ptr: ptr::null_mut(),
    sig_bit: png_color_8 { red: 0, green: 0, blue: 0, gray: 0, alpha: 0 },
    trans_alpha: ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: ptr::null_mut(),
    trans_color: png_color_16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    unknowns: ptr::null_mut(),
    num_unknowns: 0,
};

static mut usr_panic: Option<fn(&str)> = None;
static mut write_ptr: *mut png_struct = ptr::null_mut();
static mut write_info_ptr: *mut png_info = ptr::null_mut();

unsafe fn opng_store_image_info(png_ptr: *mut png_struct, info_ptr: *mut png_info, store_meta: i32) {
    assert!(!image.row_pointers.is_null(), "No info in image");

    png_set_IHDR(png_ptr, info_ptr,
        image.width, image.height, image.bit_depth, image.color_type,
        image.interlace_type, image.compression_type, image.filter_type);
    png_set_rows(write_ptr, write_info_ptr, image.row_pointers);

    if !image.palette.is_null() {
        png_set_PLTE(png_ptr, info_ptr, image.palette, image.num_palette);
    }

    if !image.trans_alpha.is_null() || !image.trans_color_ptr.is_null() {
        png_set_tRNS(png_ptr, info_ptr,
            image.trans_alpha, image.num_trans, image.trans_color_ptr);
    }

    if store_meta == 0 {
        return;
    }

    if !image.background_ptr.is_null() {
        png_set_bKGD(png_ptr, info_ptr, image.background_ptr);
    }

    if !image.hist.is_null() {
        png_set_hIST(png_ptr, info_ptr, image.hist);
    }

    if !image.sig_bit_ptr.is_null() {
        png_set_sBIT(png_ptr, info_ptr, image.sig_bit_ptr);
    }

    if image.num_unknowns != 0 {
        png_set_unknown_chunks(png_ptr, info_ptr,
            image.unknowns, image.num_unknowns);
        for i in 0..image.num_unknowns {
            png_set_unknown_chunk_location(png_ptr, info_ptr,
                i, (*image.unknowns.offset(i as isize)).location);
        }
    }
}