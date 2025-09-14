use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    
    
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct _bmp_header {
    pub bfSize: libc::c_uint,
    pub bfReserved: libc::c_uint,
    pub bfOffBits: libc::c_uint,
    pub biSize: libc::c_uint,
    pub biWidth: libc::c_int,
    pub biHeight: libc::c_int,
    pub biPlanes: libc::c_ushort,
    pub biBitCount: libc::c_ushort,
    pub biCompression: libc::c_uint,
    pub biSizeImage: libc::c_uint,
    pub biXPelsPerMeter: libc::c_int,
    pub biYPelsPerMeter: libc::c_int,
    pub biClrUsed: libc::c_uint,
    pub biClrImportant: libc::c_uint,
}
pub type bmp_header = _bmp_header;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct _bmp_pixel {
    pub blue: libc::c_uchar,
    pub green: libc::c_uchar,
    pub red: libc::c_uchar,
}
pub type bmp_pixel = _bmp_pixel;
unsafe extern "C" fn bmp_test_print_summary(
    points: libc::c_int,
    points_max: libc::c_int,
) {
    printf(
        b"\n\nPoints\t%i/%i\n\0" as *const u8 as *const libc::c_char,
        points,
        points_max,
    );
    printf(b"Failed\t%i\n\0" as *const u8 as *const libc::c_char, points_max - points);
}
unsafe extern "C" fn bmp_test_print_passed(mut name: *const libc::c_char) {
    printf(b"%s\t\tPASSED!\n\0" as *const u8 as *const libc::c_char, name);
}
unsafe extern "C" fn bmp_test_print_failed(mut name: *const libc::c_char) {
    printf(b"%s\t\tFAILED!\n\0" as *const u8 as *const libc::c_char, name);
}
unsafe extern "C" fn bmp_test_get_padding() -> libc::c_int {
    if 1 as libc::c_int % 4 as libc::c_int == 1 as libc::c_int
        && 2 as libc::c_int % 4 as libc::c_int == 2 as libc::c_int
        && 3 as libc::c_int % 4 as libc::c_int == 3 as libc::c_int
        && 4 as libc::c_int % 4 as libc::c_int == 0 as libc::c_int
        && 5 as libc::c_int % 4 as libc::c_int == 1 as libc::c_int
        && 6 as libc::c_int % 4 as libc::c_int == 2 as libc::c_int
        && 7 as libc::c_int % 4 as libc::c_int == 3 as libc::c_int
        && 8 as libc::c_int % 4 as libc::c_int == 0 as libc::c_int
    {
        bmp_test_print_passed(b"BMP_GET_PADDING\0" as *const u8 as *const libc::c_char);
        return 1 as libc::c_int;
    }
    bmp_test_print_failed(b"BMP_GET_PADDING\0" as *const u8 as *const libc::c_char);
    return 0 as libc::c_int;
}
unsafe extern "C" fn bmp_test_header_size() -> libc::c_int {
    if ::core::mem::size_of::<bmp_header>() as libc::c_ulong
        == 52 as libc::c_int as libc::c_ulong
    {
        bmp_test_print_passed(b"header_size\0" as *const u8 as *const libc::c_char);
        return 1 as libc::c_int;
    }
    bmp_test_print_failed(b"header_size\0" as *const u8 as *const libc::c_char);
    return 0 as libc::c_int;
}
unsafe extern "C" fn bmp_test_header_init_df() -> libc::c_int {
    let mut passed = 1 as libc::c_int;
    let mut header = _bmp_header {
        bfSize: 0,
        bfReserved: 0,
        bfOffBits: 0,
        biSize: 0,
        biWidth: 0,
        biHeight: 0,
        biPlanes: 0,
        biBitCount: 0,
        biCompression: 0,
        biSizeImage: 0,
        biXPelsPerMeter: 0,
        biYPelsPerMeter: 0,
        biClrUsed: 0,
        biClrImportant: 0,
    };
    crate::src::libbmp::bmp_header_init_df(&raw mut header, 100 as libc::c_int, 100 as libc::c_int);
    if header.bfSize as libc::c_ulong
        != (::core::mem::size_of::<bmp_pixel>() as libc::c_ulong)
            .wrapping_mul(10000 as libc::c_int as libc::c_ulong)
        || header.biWidth != 100 as libc::c_int || header.biHeight != 100 as libc::c_int
    {
        passed = 0 as libc::c_int;
    }
    crate::src::libbmp::bmp_header_init_df(&raw mut header, 102 as libc::c_int, -(100 as libc::c_int));
    if header.bfSize as libc::c_ulong
        != (::core::mem::size_of::<bmp_pixel>() as libc::c_ulong)
            .wrapping_mul(10200 as libc::c_int as libc::c_ulong)
            .wrapping_add(200 as libc::c_int as libc::c_ulong)
        || header.biWidth != 102 as libc::c_int
        || header.biHeight != -(100 as libc::c_int)
    {
        passed = 0 as libc::c_int;
    }
    if passed == 1 as libc::c_int {
        bmp_test_print_passed(b"header_init_df\0" as *const u8 as *const libc::c_char);
        return 1 as libc::c_int;
    }
    bmp_test_print_failed(b"header_init_df\0" as *const u8 as *const libc::c_char);
    return 0 as libc::c_int;
}
unsafe extern "C" fn bmp_test_pixel_init() -> libc::c_int {
    let mut pxl = _bmp_pixel {
        blue: 0,
        green: 0,
        red: 0,
    };
    crate::src::libbmp::bmp_pixel_init(
        &raw mut pxl,
        1 as libc::c_int as libc::c_uchar,
        250 as libc::c_int as libc::c_uchar,
        4 as libc::c_int as libc::c_uchar,
    );
    if pxl.red as libc::c_int == 1 as libc::c_int
        && pxl.green as libc::c_int == 250 as libc::c_int
        && pxl.blue as libc::c_int == 4 as libc::c_int
    {
        bmp_test_print_passed(b"pixel_init\0" as *const u8 as *const libc::c_char);
        return 1 as libc::c_int;
    }
    bmp_test_print_failed(b"pixel_init\0" as *const u8 as *const libc::c_char);
    return 0 as libc::c_int;
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *mut libc::c_char,
) -> libc::c_int {
    let mut points = 0 as libc::c_int;
    printf(
        b"LibBMP-Test v. 0.0.1 A (C) 2016 - 2017 Marc Volker Dickmann\n\n\0" as *const u8
            as *const libc::c_char,
    );
    points += bmp_test_get_padding();
    points += bmp_test_header_size();
    points += bmp_test_header_init_df();
    points += bmp_test_pixel_init();
    bmp_test_print_summary(points, 4 as libc::c_int);
    return 0 as libc::c_int;
}
pub fn main() {
    let mut args: Vec::<*mut libc::c_char> = Vec::new();
    for arg in &raw mut ::std::env::args() {
        args.push(
            (::std::ffi::CString::new(arg))
                .expect("Failed to convert argument into CString.")
                .into_raw(),
        );
    }
    args.push(::core::ptr::null_mut());
    unsafe {
        ::std::process::exit(
            main_0(
                (args.len() - 1) as libc::c_int,
                args.as_mut_ptr() as *mut *mut libc::c_char,
            ) as i32,
        )
    }
}
