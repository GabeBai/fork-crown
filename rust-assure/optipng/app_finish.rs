use std::ptr;
use std::fs::File;
use std::io::Write;

static mut LOG_FILE: Option<File> = None;

fn app_finish() {
    unsafe {
        if let Some(ref mut log_file) = LOG_FILE {
            log_file.flush().unwrap();
        }
        LOG_FILE = None;
    }
}
