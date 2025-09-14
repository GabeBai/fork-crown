use std::ffi::c_char;
use std::os::raw::c_int;

#[repr(C)]
pub struct opng_ulratio {
    num: u32,
    denom: u32,
}

#[no_mangle]
pub extern "C" fn opng_ulratio_to_percent_string(
    buffer: *mut c_char,
    buffer_size: usize,
    ratio: *const opng_ulratio,
) -> c_int {
    let ratio = unsafe { &*ratio };
    let num = ratio.num as u64;
    let denom = ratio.denom as u64;
    opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 1)
}

extern "C" {
    fn opng_sprint_uratio_impl(
        buffer: *mut c_char,
        buffer_size: usize,
        num: u64,
        denom: u64,
        percent: c_int,
    ) -> c_int;
}