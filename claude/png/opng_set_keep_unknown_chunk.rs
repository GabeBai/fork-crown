use std::mem;

fn opng_set_keep_unknown_chunk(png_ptr: *mut png_struct, keep: i32, chunk_type: *mut u8) {
    let mut chunk_name = [0u8; 5];
    unsafe {
        std::ptr::copy_nonoverlapping(chunk_type, chunk_name.as_mut_ptr(), 4);
    }
    chunk_name[4] = 0;
    
    if unsafe { png_handle_as_unknown(png_ptr, chunk_name.as_ptr()) == 0 } {
        unsafe {
            png_set_keep_unknown_chunks(png_ptr, keep, chunk_name.as_ptr(), 1);
        }
    }
}