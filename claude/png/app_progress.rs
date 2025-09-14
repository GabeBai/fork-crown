use std::ffi::c_void;
use std::os::raw::c_ulong;

extern "C" {
    fn fflush(stream: *mut c_void) -> i32;
}

static mut CON_FILE: *mut c_void = std::ptr::null_mut();

#[no_mangle]
pub extern "C" fn app_progress(current_step: c_ulong, total_steps: c_ulong) {
    unsafe {
        if !CON_FILE.is_null() {
            fflush(CON_FILE);
        }
    }
    if current_step != 0 && total_steps != 0 {
        return;
    }
}