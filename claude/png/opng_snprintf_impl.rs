use std::ffi::c_char;
use std::os::raw::c_int;

#[no_mangle]
pub unsafe extern "C" fn opng_snprintf_impl(
    buffer: *mut c_char,
    buffer_size: usize,
    format: *const c_char,
    ...
) -> c_int {
    let mut args = std::ffi::VaList::new(...);
    let result = libc::vsnprintf(buffer, buffer_size, format, args.as_va_list());
    
    if result < 0 || result as usize >= buffer_size {
        if buffer_size > 0 {
            *buffer.add(buffer_size - 1) = 0;
        }
        -1
    } else {
        result
    }
}