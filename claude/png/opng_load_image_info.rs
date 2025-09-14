use std::mem::MaybeUninit;
use std::ptr;

type PngStructP = *mut png_struct;
type PngInfoP = *mut png_info;

#[repr(C)]
struct OpngImageStruct {
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

static mut image: MaybeUninit<OpngImageStruct> = MaybeUninit::uninit();

unsafe fn opng_load_image_info(png_ptr: PngStructP, info_ptr: PngInfoP, load_meta: i32) {
    let image_ptr = image.as_mut_ptr();
    ptr::write_bytes(image_ptr as *mut u8, 0, std::mem::size_of::<OpngImageStruct>());

    png_get_IHDR(png_ptr, info_ptr,
        &mut (*image_ptr).width, &mut (*image_ptr).height,
        &mut (*image_ptr).bit_depth, &mut (*image_ptr).color_type,
        &mut (*image_ptr).interlace_type, &mut (*image_ptr).compression_type,
        &mut (*image_ptr).filter_type);

    (*image_ptr).row_pointers = png_get_rows(png_ptr, info_ptr);
    png_get_PLTE(png_ptr, info_ptr, &mut (*image_ptr).palette, &mut (*image_ptr).num_palette);

    if png_get_tRNS(png_ptr, info_ptr,
        &mut (*image_ptr).trans_alpha, &mut (*image_ptr).num_trans,
        &mut (*image_ptr).trans_color_ptr) != 0
    {
        if !(*image_ptr).trans_color_ptr.is_null() {
            (*image_ptr).trans_color = *(*image_ptr).trans_color_ptr;
            (*image_ptr).trans_color_ptr = &mut (*image_ptr).trans_color;
        }
    }

    if load_meta == 0 {
        return;
    }

    if png_get_bKGD(png_ptr, info_ptr, &mut (*image_ptr).background_ptr) != 0 {
        (*image_ptr).background = *(*image_ptr).background_ptr;
        (*image_ptr).background_ptr = &mut (*image_ptr).background;
    }

    png_get_hIST(png_ptr, info_ptr, &mut (*image_ptr).hist);

    if png_get_sBIT(png_ptr, info_ptr, &mut (*image_ptr).sig_bit_ptr) != 0 {
        (*image_ptr).sig_bit = *(*image_ptr).sig_bit_ptr;
        (*image_ptr).sig_bit_ptr = &mut (*image_ptr).sig_bit;
    }

    (*image_ptr).num_unknowns = png_get_unknown_chunks(png_ptr, info_ptr, &mut (*image_ptr).unknowns);
}