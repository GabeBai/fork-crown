use std::mem::MaybeUninit;
use std::os::raw::c_char;

type OpngBitsetT = u32;
type PngByte = u8;
type PngUint32 = u32;
type PngBytep = *mut PngByte;
type PngConstCharp = *const c_char;
type PngStructp = *mut PngStruct;
type OsysFoffsetT = i64;
type OsysFsizeT = u64;

#[repr(C)]
struct PngStruct {
    // Opaque struct, fields not needed for this translation
}

#[repr(C)]
struct OpngProcessStruct {
    status: u32,
    num_iterations: i32,
    in_datastream_offset: OsysFoffsetT,
    in_file_size: OsysFsizeT,
    out_file_size: OsysFsizeT,
    in_idat_size: OsysFsizeT,
    out_idat_size: OsysFsizeT,
    best_idat_size: OsysFsizeT,
    max_idat_size: OsysFsizeT,
    in_plte_trns_size: PngUint32,
    out_plte_trns_size: PngUint32,
    reductions: PngUint32,
    compr_level_set: OpngBitsetT,
    mem_level_set: OpngBitsetT,
    strategy_set: OpngBitsetT,
    filter_set: OpngBitsetT,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}

static mut PROCESS: MaybeUninit<OpngProcessStruct> = MaybeUninit::uninit();
static mut READ_PTR: PngStructp = std::ptr::null_mut();

unsafe fn opng_error(png_ptr: PngStructp, msg: PngConstCharp) -> ! {
    if png_ptr == READ_PTR {
        PROCESS.assume_init_mut().status |= 0x0100 | 0x2000;
    }
    panic!("{}", std::ffi::CStr::from_ptr(msg).to_string_lossy());
}