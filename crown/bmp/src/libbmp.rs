use ::libc;
extern "C" {
    pub type _IO_wide_data;
    pub type _IO_codecvt;
    pub type _IO_marker;
    fn fclose(__stream: *mut FILE) -> libc::c_int;
    fn fopen(_: *const libc::c_char, _: *const libc::c_char) -> *mut FILE;
    fn fread(
        _: *mut libc::c_void,
        _: libc::c_ulong,
        _: libc::c_ulong,
        _: *mut FILE,
    ) -> libc::c_ulong;
    fn fwrite(
        _: *const libc::c_void,
        _: libc::c_ulong,
        _: libc::c_ulong,
        _: *mut FILE,
    ) -> libc::c_ulong;
    fn fseek(
        __stream: *mut FILE,
        __off: libc::c_long,
        __whence: libc::c_int,
    ) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn abs(_: libc::c_int) -> libc::c_int;
}
pub type size_t = libc::c_ulong;
pub type __off_t = libc::c_long;
pub type __off64_t = libc::c_long;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct _IO_FILE {
    pub _flags: libc::c_int,
    pub _IO_read_ptr: *mut libc::c_char,
    pub _IO_read_end: *mut libc::c_char,
    pub _IO_read_base: *mut libc::c_char,
    pub _IO_write_base: *mut libc::c_char,
    pub _IO_write_ptr: *mut libc::c_char,
    pub _IO_write_end: *mut libc::c_char,
    pub _IO_buf_base: *mut libc::c_char,
    pub _IO_buf_end: *mut libc::c_char,
    pub _IO_save_base: *mut libc::c_char,
    pub _IO_backup_base: *mut libc::c_char,
    pub _IO_save_end: *mut libc::c_char,
    pub _markers: *mut _IO_marker,
    pub _chain: *mut _IO_FILE,
    pub _fileno: libc::c_int,
    pub _flags2: libc::c_int,
    pub _old_offset: __off_t,
    pub _cur_column: libc::c_ushort,
    pub _vtable_offset: libc::c_schar,
    pub _shortbuf: [libc::c_char; 1],
    pub _lock: *mut libc::c_void,
    pub _offset: __off64_t,
    pub _codecvt: *mut _IO_codecvt,
    pub _wide_data: *mut _IO_wide_data,
    pub _freeres_list: *mut _IO_FILE,
    pub _freeres_buf: *mut libc::c_void,
    pub _prevchain: *mut *mut _IO_FILE,
    pub _mode: libc::c_int,
    pub _unused2: [libc::c_char; 20],
}
pub type _IO_lock_t = ();
pub type FILE = _IO_FILE;
pub type bmp_error = libc::c_int;
pub const BMP_OK: bmp_error = 0;
pub const BMP_ERROR: bmp_error = -1;
pub const BMP_INVALID_FILE: bmp_error = -2;
pub const BMP_HEADER_NOT_INITIALIZED: bmp_error = -3;
pub const BMP_FILE_NOT_OPENED: bmp_error = -4;
#[derive(Copy, Clone)]

struct ErasedByPreprocessor0 { dummy: () }
pub type bmp_header = crate::src::test::_bmp_header;
#[derive(Copy, Clone)]

struct ErasedByPreprocessor1 { dummy: () }
pub type bmp_pixel = crate::src::test::_bmp_pixel;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct _bmp_img {
    pub img_header: bmp_header,
    pub img_pixels: *mut *mut bmp_pixel,
}
pub type bmp_img = _bmp_img;
#[no_mangle]
pub unsafe extern "C" fn bmp_header_init_df(
    mut header: *mut bmp_header,
    width: libc::c_int,
    height: libc::c_int,
) {
    (*header)
        .bfSize = (::core::mem::size_of::<bmp_pixel>() as libc::c_ulong)
        .wrapping_mul(width as libc::c_ulong)
        .wrapping_add((width % 4 as libc::c_int) as libc::c_ulong)
        .wrapping_mul(abs(height) as libc::c_ulong) as libc::c_uint;
    (*header).bfReserved = 0 as libc::c_int as libc::c_uint;
    (*header).bfOffBits = 54 as libc::c_int as libc::c_uint;
    (*header).biSize = 40 as libc::c_int as libc::c_uint;
    (*header).biWidth = width;
    (*header).biHeight = height;
    (*header).biPlanes = 1 as libc::c_int as libc::c_ushort;
    (*header).biBitCount = 24 as libc::c_int as libc::c_ushort;
    (*header).biCompression = 0 as libc::c_int as libc::c_uint;
    (*header).biSizeImage = 0 as libc::c_int as libc::c_uint;
    (*header).biXPelsPerMeter = 0 as libc::c_int;
    (*header).biYPelsPerMeter = 0 as libc::c_int;
    (*header).biClrUsed = 0 as libc::c_int as libc::c_uint;
    (*header).biClrImportant = 0 as libc::c_int as libc::c_uint;
}
#[no_mangle]
pub unsafe extern "C" fn bmp_header_write(
    mut header: *const bmp_header,
    mut img_file: *mut FILE,
) -> bmp_error {
    if header.is_null() {std::intrinsics::assume((header).addr() == 0);
        return BMP_HEADER_NOT_INITIALIZED
    } else if img_file.is_null() {
        return BMP_FILE_NOT_OPENED
    }
    let magic = 19778 as libc::c_int as libc::c_ushort;
    fwrite(
        &magic as *const libc::c_ushort as *const libc::c_void,
        ::core::mem::size_of::<libc::c_ushort>() as libc::c_ulong,
        1 as libc::c_int as libc::c_ulong,
        img_file,
    );
    fwrite(
        header as *const libc::c_void,
        ::core::mem::size_of::<bmp_header>() as libc::c_ulong,
        1 as libc::c_int as libc::c_ulong,
        img_file,
    );
    return BMP_OK;
}
#[no_mangle]
pub unsafe extern "C" fn bmp_header_read(
    mut header: *mut bmp_header,
    mut img_file: *mut FILE,
) -> bmp_error {
    if img_file.is_null() {std::intrinsics::assume((img_file).addr() == 0);
        return BMP_FILE_NOT_OPENED;
    }
    let mut magic: libc::c_ushort = 0;
    if fread(
        &raw mut magic as *mut libc::c_ushort as *mut libc::c_void,
        ::core::mem::size_of::<libc::c_ushort>() as libc::c_ulong,
        1 as libc::c_int as libc::c_ulong,
        img_file,
    ) != 1 as libc::c_int as libc::c_ulong
        || magic as libc::c_int != 19778 as libc::c_int
    {
        return BMP_INVALID_FILE;
    }
    if fread(
        header as *mut libc::c_void,
        ::core::mem::size_of::<bmp_header>() as libc::c_ulong,
        1 as libc::c_int as libc::c_ulong,
        img_file,
    ) != 1 as libc::c_int as libc::c_ulong
    {
        return BMP_ERROR;
    }
    return BMP_OK;
}
#[no_mangle]
pub unsafe extern "C" fn bmp_pixel_init(
    mut pxl: *mut bmp_pixel,
    red: libc::c_uchar,
    green: libc::c_uchar,
    blue: libc::c_uchar,
) {
    (*pxl).red = red;
    (*pxl).green = green;
    (*pxl).blue = blue;
}
#[no_mangle]
pub unsafe extern "C" fn bmp_img_alloc(mut img: *mut bmp_img) {
    let h = abs((*img).img_header.biHeight) as size_t;
    (*img)
        .img_pixels = malloc(
        (::core::mem::size_of::<*mut bmp_pixel>() as libc::c_ulong).wrapping_mul(h),
    ) as *mut *mut bmp_pixel;
    let mut y = 0 as libc::c_int as size_t;
    while y < h {
        *((*img).img_pixels).offset(y as isize) = malloc(
            (::core::mem::size_of::<bmp_pixel>() as libc::c_ulong)
                .wrapping_mul((*img).img_header.biWidth as libc::c_ulong),
        ) as *mut bmp_pixel;
        y = y.wrapping_add(1);
        y;
    }
}
#[no_mangle]
pub unsafe extern "C" fn bmp_img_init_df(
    mut img: *mut bmp_img,
    width: libc::c_int,
    height: libc::c_int,
) {
    bmp_header_init_df(&raw mut (*img).img_header, width, height);
    bmp_img_alloc(img);
}
#[no_mangle]
pub unsafe extern "C" fn bmp_img_free(mut img: *mut bmp_img) {
    let h = abs((*img).img_header.biHeight) as size_t;
    let mut y = 0 as libc::c_int as size_t;
    while y < h {
        free(*((*img).img_pixels).offset(y as isize) as *mut libc::c_void);
        y = y.wrapping_add(1);
        y;
    }
    free((*img).img_pixels as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn bmp_img_write(
    mut img: *const bmp_img,
    mut filename: *const libc::c_char,
) -> bmp_error {
    let mut img_file = fopen(filename, b"wb\0" as *const u8 as *const libc::c_char);
    if img_file.is_null() {std::intrinsics::assume((img_file).addr() == 0);
        return BMP_FILE_NOT_OPENED;
    }
    let err = bmp_header_write(&(*img).img_header, img_file);
    if err as libc::c_int != BMP_OK as libc::c_int {
        fclose(img_file);
        return err;
    }
    let h = abs((*img).img_header.biHeight) as size_t;
    let offset = if (*img).img_header.biHeight > 0 as libc::c_int {
        h.wrapping_sub(1 as libc::c_int as size_t)
    } else {
        0 as libc::c_int as size_t
    };
    let padding: [libc::c_uchar; 3] = [
        '\0' as i32 as libc::c_uchar,
        '\0' as i32 as libc::c_uchar,
        '\0' as i32 as libc::c_uchar,
    ];
    let mut y = 0 as libc::c_int as size_t;
    while y < h {
        fwrite(
            *((*img).img_pixels)
                .offset(abs(offset.wrapping_sub(y) as libc::c_int) as isize)
                as *const libc::c_void,
            ::core::mem::size_of::<bmp_pixel>() as libc::c_ulong,
            (*img).img_header.biWidth as libc::c_ulong,
            img_file,
        );
        fwrite(
            padding.as_ptr() as *const libc::c_void,
            ::core::mem::size_of::<libc::c_uchar>() as libc::c_ulong,
            ((*img).img_header.biWidth % 4 as libc::c_int) as libc::c_ulong,
            img_file,
        );
        y = y.wrapping_add(1);
        y;
    }
    fclose(img_file);
    return BMP_OK;
}
#[no_mangle]
pub unsafe extern "C" fn bmp_img_read(
    mut img: *mut bmp_img,
    mut filename: *const libc::c_char,
) -> bmp_error {
    let mut img_file = fopen(filename, b"rb\0" as *const u8 as *const libc::c_char);
    if img_file.is_null() {std::intrinsics::assume((img_file).addr() == 0);
        return BMP_FILE_NOT_OPENED;
    }
    let err = bmp_header_read(&raw mut (*img).img_header, img_file);
    if err as libc::c_int != BMP_OK as libc::c_int {
        fclose(img_file);
        return err;
    }
    bmp_img_alloc(img);
    let h = abs((*img).img_header.biHeight) as size_t;
    let offset = if (*img).img_header.biHeight > 0 as libc::c_int {
        h.wrapping_sub(1 as libc::c_int as size_t)
    } else {
        0 as libc::c_int as size_t
    };
    let padding = ((*img).img_header.biWidth % 4 as libc::c_int) as size_t;
    let items = (*img).img_header.biWidth as size_t;
    let mut y = 0 as libc::c_int as size_t;
    while y < h {
        if fread(
            *((*img).img_pixels)
                .offset(abs(offset.wrapping_sub(y) as libc::c_int) as isize)
                as *mut libc::c_void,
            ::core::mem::size_of::<bmp_pixel>() as libc::c_ulong,
            items,
            img_file,
        ) != items
        {
            fclose(img_file);
            return BMP_ERROR;
        }
        fseek(img_file, padding as libc::c_long, 1 as libc::c_int);
        y = y.wrapping_add(1);
        y;
    }
    fclose(img_file);
    return BMP_OK;
}
