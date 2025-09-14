use std::ffi::CStr;

#[inline]
pub unsafe extern "C" fn atoll(nptr: *const libc::c_char) -> libc::c_longlong {
    let nptr = CStr::from_ptr(nptr);
    nptr.to_str()
        .unwrap_or("")
        .parse::<libc::c_longlong>()
        .unwrap_or(0)
}