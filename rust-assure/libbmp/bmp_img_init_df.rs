#[derive(Clone, Copy)]
enum BmpError {
    BmpFileNotOpened = -4,
    BmpHeaderNotInitialized,
    BmpInvalidFile,
    BmpError,
    BmpOk = 0,
}

#[derive(Clone, Copy)]
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

#[derive(Clone, Copy)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
    fn bmp_header_init_df(&mut self, width: i32, height: i32) {
        self.img_header = BmpHeader {
            bf_size: 0,
            bf_reserved: 0,
            bf_off_bits: 0,
            bi_size: 0,
            bi_width: width,
            bi_height: height,
            bi_planes: 1,
            bi_bit_count: 24,
            bi_compression: 0,
            bi_size_image: 0,
            bi_x_pels_per_meter: 0,
            bi_y_pels_per_meter: 0,
            bi_clr_used: 0,
            bi_clr_important: 0,
        };
    }

    fn bmp_img_alloc(&mut self) {
        let width = self.img_header.bi_width as usize;
        let height = self.img_header.bi_height as usize;
        self.img_pixels = vec![
            vec![
                BmpPixel {
                    blue: 0,
                    green: 0,
                    red: 0,
                };
                width
            ];
            height
        ];
    }

    fn bmp_img_init_df(&mut self, width: i32, height: i32) {
        self.bmp_header_init_df(width, height);
        self.bmp_img_alloc();
    }
}

fn main() {
    let mut img = BmpImg {
        img_header: BmpHeader {
            bf_size: 0,
            bf_reserved: 0,
            bf_off_bits: 0,
            bi_size: 0,
            bi_width: 0,
            bi_height: 0,
            bi_planes: 0,
            bi_bit_count: 0,
            bi_compression: 0,
            bi_size_image: 0,
            bi_x_pels_per_meter: 0,
            bi_y_pels_per_meter: 0,
            bi_clr_used: 0,
            bi_clr_important: 0,
        },
        img_pixels: Vec::new(),
    };

    img.bmp_img_init_df(100, 100);
}
