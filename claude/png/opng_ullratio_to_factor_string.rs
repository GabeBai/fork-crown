use std::os::raw::c_char;
use std::os::raw::c_int;

#[repr(C)]
pub struct opng_ullratio {
    num: u64,
    denom: u64,
}

#[no_mangle]
pub extern "C" fn opng_ullratio_to_factor_string(
    buffer: *mut c_char,
    buffer_size: usize,
    ratio: *const opng_ullratio,
) -> c_int {
    let num = unsafe { (*ratio).num };
    let denom = unsafe { (*ratio).denom };
    opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 0)
}