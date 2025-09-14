use std::cmp::Ordering;

fn opng_handle_chunk(png_ptr: *mut png_struct, chunk_type: *mut u8) {
    let mut keep: i32;

    if opng_is_image_chunk(chunk_type) {
        return;
    }

    if unsafe { options.strip_all != 0 } {
        unsafe {
            process.status |= INPUT_HAS_STRIPPED_DATA | INPUT_HAS_JUNK;
        }
        opng_set_keep_unknown_chunk(png_ptr, 1, chunk_type);
        return;
    }

    if unsafe { memcmp(chunk_type as *const _, sig_bKGD.as_ptr() as *const _, 4) == 0 ||
                memcmp(chunk_type as *const _, sig_hIST.as_ptr() as *const _, 4) == 0 ||
                memcmp(chunk_type as *const _, sig_sBIT.as_ptr() as *const _, 4) == 0 }
    {
        return;
    }

    keep = 3;

    if unsafe { memcmp(chunk_type as *const _, sig_dSIG.as_ptr() as *const _, 4) == 0 } {
        unsafe {
            process.status |= INPUT_HAS_DIGITAL_SIGNATURE;
        }
    } else if opng_is_apng_chunk(chunk_type) {
        unsafe {
            process.status |= INPUT_HAS_APNG;
        }
        if unsafe { memcmp(chunk_type as *const _, sig_fdAT.as_ptr() as *const _, 4) == 0 } {
            unsafe {
                process.status |= INPUT_HAS_MULTIPLE_IMAGES;
            }
        }
        if unsafe { options.snip != 0 } {
            unsafe {
                process.status |= INPUT_HAS_JUNK;
            }
            keep = 1;
        }
    }

    opng_set_keep_unknown_chunk(png_ptr, keep, chunk_type);
}