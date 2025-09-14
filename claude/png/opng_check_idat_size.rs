use std::mem::size_of;

const IDAT_SIZE_MAX: u64 = 0x7fffffff;

fn opng_check_idat_size(size: u64) {
    if size > IDAT_SIZE_MAX {
        panic!("IDAT sizes larger than the maximum chunk size are currently unsupported");
    }
}