use std::ffi::CStr;
use std::os::raw::c_char;

extern "C" {
    fn opng_ulratio_to_factor_string(buffer: *mut c_char, buffer_size: usize, ratio: *const opng_ulratio) -> i32;
}

#[repr(C)]
struct opng_ulratio {
    num: u64,
    denom: u64,
}

type osys_fsize_t = u64;

static mut usr_printf: Option<extern "C" fn(*const c_char, ...)> = None;

#[no_mangle]
pub extern "C" fn opng_print_fsize_ratio(num: osys_fsize_t, denom: osys_fsize_t) {
    let mut buffer = [0i8; 32];
    let ratio = opng_ulratio { num, denom };
    let result = unsafe { opng_ulratio_to_factor_string(buffer.as_mut_ptr(), buffer.len(), &ratio) };
    
    let buffer_str = unsafe { CStr::from_ptr(buffer.as_ptr()) }.to_str().unwrap();
    let suffix = if result > 0 { "" } else { "..." };
    
    unsafe {
        if let Some(printf_fn) = usr_printf {
            printf_fn(b"%s%s\0".as_ptr() as *const c_char, buffer.as_ptr(), suffix.as_ptr() as *const c_char);
        }
    }
}