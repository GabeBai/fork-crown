#[derive(Debug)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    // Fragment = 0x40, // Commented out due to duplicate value
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

struct UrlKeyValue<'a> {
    key: &'a str,
    value: &'a str,
}

fn scan_decimal_number(start: &mut str) -> Option<&mut str> {
    let mut p = start;
    let original_len = p.len();
    let digits_end = p.trim_start_matches(|c: char| c.is_ascii_digit()).len();
    if digits_end != original_len {
        let split_index = original_len - digits_end;
        let (digits, _) = p.split_at_mut(split_index);
        Some(digits)
    } else {
        None
    }
}

fn main() {
    let mut input = String::from("123abc");
    if let Some(digits) = scan_decimal_number(&mut input) {
        println!("Digits: {}", digits);
    } else {
        println!("No digits found");
    }
}
