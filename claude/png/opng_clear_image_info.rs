use std::mem;

fn opng_clear_image_info() {
    unsafe {
        mem::zeroed::<opng_image_struct>();
    }
}