use std::ffi::CString;
use std::ptr;

pub fn url_get_scheme(url: *const libc::c_char) -> *mut libc::c_char {
    let mut protocol = unsafe { libc::malloc(32) as *mut libc::c_char };
    if protocol.is_null() {
        return ptr::null_mut();
    }

    unsafe {
        let format = CString::new("%[^://]").unwrap();
        libc::sscanf(url, format.as_ptr(), protocol);

        if url_is_protocol(protocol) != 0 {
            return protocol;
        }

        libc::free(protocol as *mut libc::c_void);
    }

    ptr::null_mut()
}