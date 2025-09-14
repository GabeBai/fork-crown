use std::os::raw::c_long;
use std::ffi::c_void;

type FILE = c_void;

extern "C" {
    fn ftell(stream: *mut FILE) -> c_long;
}

type OsysFoffsetT = c_long;

#[no_mangle]
pub extern "C" fn osys_ftello(stream: *mut FILE) -> OsysFoffsetT {
    unsafe {
        ftell(stream) as OsysFoffsetT
    }
}