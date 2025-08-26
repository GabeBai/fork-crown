use std::mem;
use std::ptr;

type PngByte = u8;
type PngUint16 = u16;
type PngUint32 = u32;
type PngSizeT = usize;
type PngBytepp = *mut *mut PngByte;
type PngUint16p = *mut PngUint16;
type PngColorp = *mut PngColor;
type PngColor16p = *mut PngColor16;
type PngColor8p = *mut PngColor8;
type PngUnknownChunkp = *mut PngUnknownChunk;

#[repr(C)]
struct PngColor {
    red: PngByte,
    green: PngByte,
    blue: PngByte,
}

#[repr(C)]
struct PngColor16 {
    index: PngByte,
    red: PngUint16,
    green: PngUint16,
    blue: PngUint16,
    gray: PngUint16,
}

#[repr(C)]
struct PngColor8 {
    red: PngByte,
    green: PngByte,
    blue: PngByte,
    gray: PngByte,
    alpha: PngByte,
}

#[repr(C)]
struct PngUnknownChunk {
    name: [PngByte; 5],
    data: *mut PngByte,
    size: PngSizeT,
    location: PngByte,
}

#[repr(C)]
struct OpngImageStruct {
    width: PngUint32,
    height: PngUint32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: PngBytepp,
    palette: PngColorp,
    num_palette: i32,
    background_ptr: PngColor16p,
    background: PngColor16,
    hist: PngUint16p,
    sig_bit_ptr: PngColor8p,
    sig_bit: PngColor8,
    trans_alpha: *mut PngByte,
    num_trans: i32,
    trans_color_ptr: PngColor16p,
    trans_color: PngColor16,
    unknowns: PngUnknownChunkp,
    num_unknowns: i32,
}

static mut IMAGE: OpngImageStruct = OpngImageStruct {
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
    background: PngColor16 {
        index: 0,
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
    },
    hist: ptr::null_mut(),
    sig_bit_ptr: ptr::null_mut(),
    sig_bit: PngColor8 {
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
        alpha: 0,
    },
    trans_alpha: ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: ptr::null_mut(),
    trans_color: PngColor16 {
        index: 0,
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
    },
    unknowns: ptr::null_mut(),
    num_unknowns: 0,
};

unsafe fn opng_clear_image_info() {
    ptr::write_bytes(&mut IMAGE as *mut _ as *mut u8, 0, mem::size_of::<OpngImageStruct>());
}
