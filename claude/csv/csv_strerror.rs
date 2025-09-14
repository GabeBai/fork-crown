use std::ffi::CStr;

static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

#[no_mangle]
pub extern "C" fn csv_strerror(status: i32) -> *const libc::c_char {
    let index = if status >= 4 || status < 0 { 4 } else { status as usize };
    CStr::from_bytes_with_nul(CSV_ERRORS[index].as_bytes())
        .unwrap()
        .as_ptr()
}