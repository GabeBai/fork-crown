use std::ptr;

pub fn bmp_img_free(img: *mut bmp_img) {
    unsafe {
        let h = (*img).img_header.biHeight.abs() as usize;
        for y in 0..h {
            ptr::drop_in_place((*img).img_pixels.offset(y as isize));
        }
        ptr::drop_in_place((*img).img_pixels);
    }
}