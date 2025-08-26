use png::{BitDepth, ColorType, Encoder, HasParameters};
use std::fs::File;
use std::io::BufWriter;

struct OpngImage {
    width: u32,
    height: u32,
    bit_depth: BitDepth,
    color_type: ColorType,
    row_pointers: Option<Vec<Vec<u8>>>,
    palette: Option<Vec<png::Color>>,
    background_ptr: Option<png::Color16>,
    hist: Option<Vec<u16>>,
    sig_bit_ptr: Option<png::Color8>,
    trans_alpha: Option<Vec<u8>>,
    trans_color_ptr: Option<png::Color16>,
    unknowns: Option<Vec<png::UnknownChunk>>,
}

impl OpngImage {
    fn store_image_info(&self, store_meta: bool) {
        if self.row_pointers.is_none() {
            panic!("No info in image");
        }

        let file = File::create("output.png").unwrap();
        let ref mut w = BufWriter::new(file);

        let mut encoder = Encoder::new(w, self.width, self.height);
        encoder.set(self.color_type).set(self.bit_depth);
        let mut writer = encoder.write_header().unwrap();

        if let Some(ref row_pointers) = self.row_pointers {
            for row in row_pointers {
                writer.write_image_data(row).unwrap();
            }
        }

        if let Some(ref palette) = self.palette {
            writer.set_palette(palette).unwrap();
        }

        if let Some(ref trans_alpha) = self.trans_alpha {
            writer.set_trns(trans_alpha).unwrap();
        }

        if store_meta {
            if let Some(ref background_ptr) = self.background_ptr {
                writer.set_background(background_ptr).unwrap();
            }

            if let Some(ref hist) = self.hist {
                writer.set_hist(hist).unwrap();
            }

            if let Some(ref sig_bit_ptr) = self.sig_bit_ptr {
                writer.set_sbit(sig_bit_ptr).unwrap();
            }

            if let Some(ref unknowns) = self.unknowns {
                for unknown in unknowns {
                    writer.add_unknown_chunk(&unknown).unwrap();
                }
            }
        }
    }
}

fn main() {
    // Example usage
    let image = OpngImage {
        width: 800,
        height: 600,
        bit_depth: BitDepth::Eight,
        color_type: ColorType::RGB,
        row_pointers: Some(vec![vec![0; 800 * 3]; 600]), // Example data
        palette: None,
        background_ptr: None,
        hist: None,
        sig_bit_ptr: None,
        trans_alpha: None,
        trans_color_ptr: None,
        unknowns: None,
    };

    image.store_image_info(true);
}
