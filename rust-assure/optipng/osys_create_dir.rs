use std::ffi::CStr;
use std::fs;
use std::os::unix::fs::MetadataExt;
use std::path::Path;

pub fn osys_create_dir(dirname: *const i8) -> i32 {
    unsafe {
        let c_str = CStr::from_ptr(dirname);
        let path = Path::new(c_str.to_str().unwrap());
        let len = path.as_os_str().len();
        if len == 0 {
            return 0;
        }
        match fs::metadata(path) {
            Ok(metadata) => {
                if metadata.is_dir() {
                    0
                } else {
                    -1
                }
            }
            Err(_) => match fs::create_dir(path) {
                Ok(_) => 0,
                Err(_) => -1,
            },
        }
    }
}
