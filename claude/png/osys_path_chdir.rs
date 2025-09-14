use std::ffi::CStr;
use std::os::raw::c_char;

#[no_mangle]
pub unsafe extern "C" fn osys_path_chdir(
    buffer: *mut c_char,
    bufsize: usize,
    old_path: *const c_char,
    new_dirname: *const c_char,
) -> *mut c_char {
    let old_path = CStr::from_ptr(old_path);
    let new_dirname = CStr::from_ptr(new_dirname);

    let path = old_path.to_str().unwrap().rsplit('/').next().unwrap();
    let dirlen = new_dirname.to_bytes().len();

    if dirlen + path.len() + 2 >= bufsize {
        return std::ptr::null_mut();
    }

    let buffer_slice = std::slice::from_raw_parts_mut(buffer as *mut u8, bufsize);

    if dirlen > 0 {
        buffer_slice[..dirlen].copy_from_slice(new_dirname.to_bytes());
        if buffer_slice[dirlen - 1] != b'/' {
            buffer_slice[dirlen] = b'/';
            buffer_slice[dirlen + 1..dirlen + 1 + path.len()].copy_from_slice(path.as_bytes());
            buffer_slice[dirlen + 1 + path.len()] = 0;
        } else {
            buffer_slice[dirlen..dirlen + path.len()].copy_from_slice(path.as_bytes());
            buffer_slice[dirlen + path.len()] = 0;
        }
    } else {
        buffer_slice[..path.len()].copy_from_slice(path.as_bytes());
        buffer_slice[path.len()] = 0;
    }

    buffer
}