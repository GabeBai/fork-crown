extern crate bitflags;

use std::str;

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

struct UrlKeyValue<'a> {
    key: &'a str,
    value: &'a str,
}

fn unhex(s: char) -> i32 {
    match s {
        '0'..='9' => (s as i32) - ('0' as i32),
        'A'..='F' => (s as i32) - ('A' as i32) + 10,
        'a'..='f' => (s as i32) - ('a' as i32) + 10,
        _ => -1,
    }
}

fn main() {
    // Example usage of unhex function
    let hex_char = 'A';
    let value = unhex(hex_char);
    println!("The value of '{}' is {}", hex_char, value);
}
