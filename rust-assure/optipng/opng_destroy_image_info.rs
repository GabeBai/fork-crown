use std::ptr;
use std::mem;

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
    palette: Option<Vec<PngColor>>,
    num_palette: i32,
    background_ptr: Option<Box<PngColor16>>,
    background: PngColor16,
    hist: Option<Vec<u16>>,
    sig_bit_ptr: Option<Box<PngColor8>>,
    sig_bit: PngColor8,
    trans_alpha: Option<Vec<u8>>,
    num_trans: i32,
    trans_color_ptr: Option<Box<PngColor16>>,
    trans_color: PngColor16,
    unknowns: Vec<PngUnknownChunk>,
    num_unknowns: i32,
}

impl OpngImage {
    fn destroy_image_info(&mut self) {
        if self.row_pointers.is_empty() {
            return;
        }

        for row in &mut self.row_pointers {
            row.clear();
        }
        self.row_pointers.clear();

        if let Some(palette) = &mut self.palette {
            palette.clear();
        }

        if let Some(trans_alpha) = &mut self.trans_alpha {
            trans_alpha.clear();
        }

        if let Some(hist) = &mut self.hist {
            hist.clear();
        }

        for unknown in &mut self.unknowns {
            unknown.data.clear();
        }
        self.unknowns.clear();

        // Reset the struct to its default state
        *self = OpngImage::default();
    }
}

impl Default for OpngImage {
    fn default() -> Self {
        OpngImage {
            width: 0,
            height: 0,
            bit_depth: 0,
            color_type: 0,
            compression_type: 0,
            filter_type: 0,
            interlace_type: 0,
            row_pointers: Vec::new(),
            palette: None,
            num_palette: 0,
            background_ptr: None,
            background: PngColor16 {
                index: 0,
                red: 0,
                green: 0,
                blue: 0,
                gray: 0,
            },
            hist: None,
            sig_bit_ptr: None,
            sig_bit: PngColor8 {
                red: 0,
                green: 0,
                blue: 0,
                gray: 0,
                alpha: 0,
            },
            trans_alpha: None,
            num_trans: 0,
            trans_color_ptr: None,
            trans_color: PngColor16 {
                index: 0,
                red: 0,
                green: 0,
                blue: 0,
                gray: 0,
            },
            unknowns: Vec::new(),
            num_unknowns: 0,
        }
    }
}

fn main() {
    let mut image = OpngImage::default();
    image.destroy_image_info();
}
