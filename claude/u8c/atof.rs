use std::ffi::CStr;
use std::str::FromStr;

#[inline]
pub fn atof(s: *const i8) -> f64 {
    let c_str = unsafe { CStr::from_ptr(s) };
    let s_str = c_str.to_str().unwrap_or("");
    f64::from_str(s_str).unwrap_or(0.0)
}