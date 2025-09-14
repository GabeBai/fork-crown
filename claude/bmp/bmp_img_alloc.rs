use std::mem::size_of;

pub fn bmp_img_alloc(img: &mut bmp_img) {
    let h = img.img_header.biHeight.abs() as usize;
    img.img_pixels = unsafe {
        let ptr = libc::malloc(size_of::<*mut bmp_pixel>() * h) as *mut *mut bmp_pixel;
        std::slice::from_raw_parts_mut(ptr, h)
    };
    for y in 0..h {
        img.img_pixels[y] = unsafe {
            libc::malloc(size_of::<bmp_pixel>() * img.img_header.biWidth as usize) as *mut bmp_pixel
        };
    }
}