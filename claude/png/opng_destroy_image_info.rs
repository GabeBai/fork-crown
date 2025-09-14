use std::ptr;

fn opng_destroy_image_info() {
    unsafe {
        if image.row_pointers.is_null() {
            return;
        }

        for i in 0..image.height {
            opng_free(*image.row_pointers.add(i as usize));
        }
        opng_free(image.row_pointers as *mut _);

        opng_free(image.palette as *mut _);
        opng_free(image.trans_alpha as *mut _);
        opng_free(image.hist as *mut _);

        for j in 0..image.num_unknowns {
            opng_free((*image.unknowns.add(j as usize)).data);
        }
        opng_free(image.unknowns as *mut _);

        ptr::write_bytes(&mut image as *mut _ as *mut u8, 0, std::mem::size_of::<opng_image_struct>());
    }
}