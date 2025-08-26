struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

fn bmp_pixel_init(pxl: &mut BmpPixel, red: u8, green: u8, blue: u8) {
    pxl.red = red;
    pxl.green = green;
    pxl.blue = blue;
}
