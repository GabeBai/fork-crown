use std::ffi::CStr;
use std::os::unix::fs::PermissionsExt;
use std::path::Path;

pub fn osys_create_dir(dirname: *const libc::c_char) -> libc::c_int {
    let dirname = unsafe { CStr::from_ptr(dirname) };
    let dirname = dirname.to_str().unwrap();
    
    if dirname.is_empty() {
        return 0;
    }

    let path = Path::new(dirname);
    
    if path.exists() {
        if path.is_dir() {
            return 0;
        } else {
            return -1;
        }
    }

    match std::fs::create_dir(path) {
        Ok(_) => {
            let mut perms = std::fs::metadata(path).unwrap().permissions();
            perms.set_mode(0o777);
            std::fs::set_permissions(path, perms).unwrap();
            0
        },
        Err(_) => -1,
    }
}