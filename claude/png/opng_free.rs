use std::ffi::c_void;

fn opng_free(ptr: *mut c_void) {
    unsafe {
        libc::free(ptr as *mut libc::c_void);
    }
}