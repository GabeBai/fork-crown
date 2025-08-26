#[derive(Default)]
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

#[derive(Default)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

fn bmp_header_init_df(header: &mut BmpHeader, width: i32, height: i32) {
    let pixel_size = std::mem::size_of::<BmpPixel>() as u32;
    let width_u32 = width as u32;
    let height_abs = height.abs() as u32;
    let padding = (width_u32 % 4) as u32;

    header.bf_size = (pixel_size * width_u32 + padding) * height_abs;
    header.bf_reserved = 0;
    header.bf_off_bits = 54;
    header.bi_size = 40;
    header.bi_width = width;
    header.bi_height = height;
    header.bi_planes = 1;
    header.bi_bit_count = 24;
    header.bi_compression = 0;
    header.bi_size_image = 0;
    header.bi_x_pels_per_meter = 0;
    header.bi_y_pels_per_meter = 0;
    header.bi_clr_used = 0;
    header.bi_clr_important = 0;
}

fn main() {
    let mut header = BmpHeader::default();
    bmp_header_init_df(&mut header, 800, 600);
    println!("Header bf_size: {}", header.bf_size);
}
