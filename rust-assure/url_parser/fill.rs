extern crate bitflags;

use bitflags::bitflags;

bitflags! {
    struct Category: u16 {
        const SCHEME = 0x01;
        const UNRESERVED = 0x02;
        const GEN_DELIM = 0x04;
        const SUB_DELIM = 0x08;
        const PCHAR_SLASH = 0x10;
        const HEX_DIGIT = 0x20;
        const QUERY = 0x40;
        const FRAGMENT = 0x40;
        const USERINFO = 0x80;
        const IPV6_CHAR = 0x100;
    }
}

fn fill(value: Category, alnum: &str, special: &str, char_cat: &mut [u16; 256]) {
    for &byte in alnum.as_bytes() {
        char_cat[byte as usize] |= value.bits();
    }
    for &byte in special.as_bytes() {
        char_cat[byte as usize] |= value.bits();
    }
}

fn main() {
    let mut char_cat = [0u16; 256];

    fill(Category::SCHEME, "alnum_chars", "special_chars", &mut char_cat);

    // You can now use `char_cat` as needed
}
