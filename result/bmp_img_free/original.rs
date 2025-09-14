use std::os::raw::{c_int, c_ulong};

#[repr(C)]
pub struct BmpHeader {
    bfSize: c_ulong,
    bfReserved: c_ulong,
    bfOffBits: c_ulong,
    biSize: c_ulong,
    biWidth: c_int,
    biHeight: c_int,
    biPlanes: u16,
    biBitCount: u16,
    biCompression: c_ulong,
    biSizeImage: c_ulong,
    biXPelsPerMeter: c_int,
    biYPelsPerMeter: c_int,
    biClrUsed: c_ulong,
    biClrImportant: c_ulong,
}

#[repr(C)]
pub struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

pub struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
    fn bmp_img_free(&mut self) {
        let h = self.img_header.biHeight.abs() as usize;
        for y in 0..h {
            self.img_pixels[y].clear();
        }
        self.img_pixels.clear();
    }
}
