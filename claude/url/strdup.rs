use std::ffi::CString;

fn strdup(str: &str) -> Option<CString> {
    CString::new(str).ok()
}