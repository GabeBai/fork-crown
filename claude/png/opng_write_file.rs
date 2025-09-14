use std::ffi::c_void;
use std::os::raw::{c_char, c_int, c_uint};
use std::ptr;

type PngStructp = *mut c_void;
type PngInfop = *mut c_void;
type PngConstCharp = *const c_char;
type PngVoidp = *mut c_void;
type PngErrorPtr = Option<unsafe extern "C" fn(png_structp: PngStructp, png_const_charp: PngConstCharp)>;
type PngRwPtr = Option<unsafe extern "C" fn(png_structp: PngStructp, png_bytep: *mut u8, png_size_t: usize)>;

extern "C" {
    fn png_create_write_struct(user_png_ver: PngConstCharp, error_ptr: PngVoidp, error_fn: PngErrorPtr, warn_fn: PngErrorPtr) -> PngStructp;
    fn png_create_info_struct(png_ptr: PngStructp) -> PngInfop;
    fn png_set_compression_level(png_ptr: PngStructp, level: c_int);
    fn png_set_compression_mem_level(png_ptr: PngStructp, mem_level: c_int);
    fn png_set_compression_strategy(png_ptr: PngStructp, strategy: c_int);
    fn png_set_filter(png_ptr: PngStructp, method: c_int, filters: c_int);
    fn png_set_compression_window_bits(png_ptr: PngStructp, window_bits: c_int);
    fn png_set_keep_unknown_chunks(png_ptr: PngStructp, keep: c_int, chunk_list: *const u8, num_chunks: c_int);
    fn png_set_user_limits(png_ptr: PngStructp, user_width_max: c_uint, user_height_max: c_uint);
    fn png_set_write_fn(png_ptr: PngStructp, io_ptr: PngVoidp, write_data_fn: PngRwPtr, output_flush_fn: Option<unsafe extern "C" fn(png_structp: PngStructp)>);
    fn png_write_png(png_ptr: PngStructp, info_ptr: PngInfop, transforms: c_int, params: PngVoidp);
    fn png_destroy_write_struct(png_ptr_ptr: *mut PngStructp, info_ptr_ptr: *mut PngInfop);
}

extern "C" {
    fn opng_error(png_structp: PngStructp, png_const_charp: PngConstCharp);
    fn opng_warning(png_structp: PngStructp, png_const_charp: PngConstCharp);
    fn opng_store_image_info(write_ptr: PngStructp, write_info_ptr: PngInfop, store_metadata: bool);
    fn opng_init_write_data();
    fn opng_write_data(png_structp: PngStructp, png_bytep: *mut u8, png_size_t: usize);
}

static mut options: OpngOptions = OpngOptions {
    window_bits: 0,
};

static mut process: OpngProcessStruct = OpngProcessStruct {
    out_idat_size: 0,
};

static mut usr_panic: Option<unsafe extern "C" fn(*const c_char)> = None;

const IDAT_SIZE_MAX: u64 = 0x7fffffff;

#[repr(C)]
struct OpngOptions {
    window_bits: c_int,
}

#[repr(C)]
struct OpngProcessStruct {
    out_idat_size: u64,
}

unsafe fn opng_write_file(outfile: *mut libc::FILE, compression_level: c_int, memory_level: c_int, compression_strategy: c_int, filter: c_int) {
    assert!(compression_level >= 1 && compression_level <= 9 && memory_level >= 1 && memory_level <= 9 && compression_strategy >= 0 && compression_strategy <= 3 && filter >= 0 && filter <= 5, "Invalid encoding parameters");

    let filter_table: [c_int; 6] = [0x08, 0x10, 0x20, 0x40, 0x80, 0x08 | 0x10 | 0x20 | 0x40 | 0x80];

    let mut write_ptr: PngStructp = ptr::null_mut();
    let mut write_info_ptr: PngInfop = ptr::null_mut();

    let result = std::panic::catch_unwind(|| {
        write_ptr = png_create_write_struct(b"1.6.21\0".as_ptr() as *const c_char, ptr::null_mut(), Some(opng_error), Some(opng_warning));
        write_info_ptr = png_create_info_struct(write_ptr);
        if write_info_ptr.is_null() {
            panic!("Out of memory");
        }

        png_set_compression_level(write_ptr, compression_level);
        png_set_compression_mem_level(write_ptr, memory_level);
        png_set_compression_strategy(write_ptr, compression_strategy);
        png_set_filter(write_ptr, 0, filter_table[filter as usize]);

        if compression_strategy != 2 && compression_strategy != 3 {
            if options.window_bits > 0 {
                png_set_compression_window_bits(write_ptr, options.window_bits);
            }
        } else {
            png_set_compression_window_bits(write_ptr, 9);
        }

        png_set_keep_unknown_chunks(write_ptr, 3, ptr::null(), 0);
        png_set_user_limits(write_ptr, 0x7fffffff, 0x7fffffff);

        opng_store_image_info(write_ptr, write_info_ptr, !outfile.is_null());
        opng_init_write_data();
        png_set_write_fn(write_ptr, outfile as *mut c_void, Some(opng_write_data), None);
        png_write_png(write_ptr, write_info_ptr, 0, ptr::null_mut());
    });

    if result.is_err() {
        process.out_idat_size = IDAT_SIZE_MAX + 1;
    }

    png_destroy_write_struct(&mut write_ptr, &mut write_info_ptr);

    if let Err(err) = result {
        if let Some(err_msg) = err.downcast_ref::<&str>() {
            if let Some(panic_fn) = usr_panic {
                panic_fn(err_msg.as_ptr() as *const c_char);
            }
        }
    }
}