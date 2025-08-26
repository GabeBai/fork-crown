struct PngColor {
    red: u8,
    green: u8,
    blue: u8,
}

struct PngColor16 {
    index: u8,
    red: u16,
    green: u16,
    blue: u16,
    gray: u16,
}

struct PngColor8 {
    red: u8,
    green: u8,
    blue: u8,
    gray: u8,
    alpha: u8,
}

struct PngUnknownChunk {
    name: [u8; 5],
    data: Vec<u8>,
    size: usize,
    location: u8,
}

struct OpngImage {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: Vec<Vec<u8>>,
    palette: Vec<PngColor>,
    num_palette: i32,
    background_ptr: Option<PngColor16>,
    background: PngColor16,
    hist: Vec<u16>,
    sig_bit_ptr: Option<PngColor8>,
    sig_bit: PngColor8,
    trans_alpha: Vec<u8>,
    num_trans: i32,
    trans_color_ptr: Option<PngColor16>,
    trans_color: PngColor16,
    unknowns: Vec<PngUnknownChunk>,
    num_unknowns: i32,
}

fn opng_print_image_info(
    image: &OpngImage,
    show_dim: bool,
    show_depth: bool,
    show_type: bool,
    show_interlaced: bool,
) {
    let type_channels = [1, 0, 3, 1, 2, 0, 4, 0];
    let mut printed = false;

    if show_dim {
        printed = true;
        println!("{}x{} pixels", image.width, image.height);
    }

    if show_depth {
        if printed {
            print!(", ");
        }
        printed = true;
        let channels = type_channels[(image.color_type & 7) as usize];
        if channels != 1 {
            println!("{}x{} bits/pixel", channels, image.bit_depth);
        } else if image.bit_depth != 1 {
            println!("{} bits/pixel", image.bit_depth);
        } else {
            println!("1 bit/pixel");
        }
    }

    if show_type {
        if printed {
            print!(", ");
        }
        printed = true;
        if image.color_type & 1 != 0 {
            if image.num_palette == 1 {
                println!("1 color");
            } else {
                println!("{} colors", image.num_palette);
            }
            if image.num_trans > 0 {
                println!(" ({} transparent)", image.num_trans);
            }
            println!(" in palette");
        } else {
            print!(
                "{}",
                if image.color_type & 2 != 0 {
                    "RGB"
                } else {
                    "grayscale"
                }
            );
            if image.color_type & 4 != 0 {
                println!("+alpha");
            } else if image.trans_color_ptr.is_some() {
                println!("+transparency");
            }
        }
    }

    if show_interlaced {
        if image.interlace_type != 0 {
            if printed {
                print!(", ");
            }
            println!("interlaced");
        }
    }
}
