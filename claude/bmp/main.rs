use std::fs::File;
use std::io::Write;

#[repr(C)]
struct BmpHeader {
    bf_size: u32,
    bf_reserved: u32,
    bf_off_bits: u32,
    bi_size: u32,
    bi_width: i32,
    bi_height: i32,
    bi_planes: u16,
    bi_bit_count: u16,
    bi_compression: u32,
    bi_size_image: u32,
    bi_x_pels_per_meter: i32,
    bi_y_pels_per_meter: i32,
    bi_clr_used: u32,
    bi_clr_important: u32,
}

#[repr(C)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

fn bmp_pixel_init(pixel: &mut BmpPixel, red: u8, green: u8, blue: u8) {
    pixel.red = red;
    pixel.green = green;
    pixel.blue = blue;
}

fn bmp_img_init_df(img: &mut BmpImg, width: i32, height: i32) {
    img.img_header = BmpHeader {
        bf_size: 0,
        bf_reserved: 0,
        bf_off_bits: 0,
        bi_size: 0,
        bi_width: width,
        bi_height: height,
        bi_planes: 0,
        bi_bit_count: 0,
        bi_compression: 0,
        bi_size_image: 0,
        bi_x_pels_per_meter: 0,
        bi_y_pels_per_meter: 0,
        bi_clr_used: 0,
        bi_clr_important: 0,
    };
    img.img_pixels = vec![vec![BmpPixel { blue: 0, green: 0, red: 0 }; width as usize]; height as usize];
}

fn bmp_img_free(img: &mut BmpImg) {
    img.img_pixels.clear();
}

fn bmp_img_write(img: &BmpImg, filename: &str) -> Result<(), std::io::Error> {
    let mut file = File::create(filename)?;
    // Write header and pixel data
    // This is a simplified version and doesn't include all BMP file format details
    file.write_all(&[0u8; 54])?; // Placeholder for header
    for row in &img.img_pixels {
        for pixel in row {
            file.write_all(&[pixel.blue, pixel.green, pixel.red])?;
        }
    }
    Ok(())
}

fn main() {
    let mut img = BmpImg {
        img_header: BmpHeader {
            bf_size: 0, bf_reserved: 0, bf_off_bits: 0, bi_size: 0,
            bi_width: 0, bi_height: 0, bi_planes: 0, bi_bit_count: 0,
            bi_compression: 0, bi_size_image: 0, bi_x_pels_per_meter: 0,
            bi_y_pels_per_meter: 0, bi_clr_used: 0, bi_clr_important: 0
        },
        img_pixels: Vec::new(),
    };
    bmp_img_init_df(&mut img, 512, 512);
    for y in 0..512 {
        for x in 0..512 {
            if (y % 128 < 64 && x % 128 < 64) || (y % 128 >= 64 && x % 128 >= 64) {
                bmp_pixel_init(&mut img.img_pixels[y][x], 250, 250, 250);
            } else {
                bmp_pixel_init(&mut img.img_pixels[y][x], 0, 0, 0);
            }
        }
    }
    bmp_img_write(&img, "test.bmp").unwrap();
    bmp_img_free(&mut img);
}