use std::ptr;
use std::fs::File;

static mut LOG_FILE: *mut File = ptr::null_mut();

fn app_finish() {
    unsafe {
        if !LOG_FILE.is_null() {
            let _ = File::from_raw_fd(LOG_FILE as i32).into_raw_fd();
        }
    }
}