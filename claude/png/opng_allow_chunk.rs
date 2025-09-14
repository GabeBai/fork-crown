use std::mem;

fn opng_allow_chunk(chunk_type: &[u8; 4]) -> i32 {
    if opng_is_image_chunk(chunk_type) {
        return 1;
    }
    if unsafe { options.strip_all != 0 } {
        return 0;
    }
    if chunk_type == &sig_dSIG {
        return 0;
    }
    if unsafe { options.snip != 0 } && opng_is_apng_chunk(chunk_type) {
        return 0;
    }
    1
}