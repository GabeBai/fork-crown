use std::os::raw::c_void;

#[no_mangle]
pub extern "C" fn csv_write(
    dest: *mut c_void,
    dest_size: usize,
    src: *const c_void,
    src_size: usize,
) -> usize {
    csv_write2(dest, dest_size, src, src_size, 0x22)
}

extern "C" {
    fn csv_write2(
        dest: *mut c_void,
        dest_size: usize,
        src: *const c_void,
        src_size: usize,
        quote: u8,
    ) -> usize;
}