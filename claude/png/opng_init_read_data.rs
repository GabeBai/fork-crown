use std::os::raw::c_long;

pub type OpngBitsetT = u32;

pub const OPNG_BITSET_ELT_MIN: i32 = 0;
pub const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

pub type PngByte = u8;
pub type PngBytep = *mut PngByte;
pub type PngConstCharp = *const i8;

pub struct PngStruct;
pub type PngStructp = *mut PngStruct;

pub const INPUT_IS_PNG_FILE: u32 = 0x0001;
pub const INPUT_HAS_PNG_DATASTREAM: u32 = 0x0002;
pub const INPUT_HAS_PNG_SIGNATURE: u32 = 0x0004;
pub const INPUT_HAS_DIGITAL_SIGNATURE: u32 = 0x0008;
pub const INPUT_HAS_MULTIPLE_IMAGES: u32 = 0x0010;
pub const INPUT_HAS_APNG: u32 = 0x0020;
pub const INPUT_HAS_STRIPPED_DATA: u32 = 0x0040;
pub const INPUT_HAS_JUNK: u32 = 0x0080;
pub const INPUT_HAS_ERRORS: u32 = 0x0100;
pub const OUTPUT_NEEDS_NEW_FILE: u32 = 0x1000;
pub const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;
pub const OUTPUT_HAS_ERRORS: u32 = 0x4000;

pub fn opng_init_read_data() {}