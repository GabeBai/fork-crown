#[derive(Debug)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x41, // Changed to a unique value
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

struct UrlKeyValue<'a> {
    key: &'a str,
    value: &'a str,
}

fn decode_percent(s: &mut str) -> Option<&mut str> {
    let bytes = unsafe { s.as_bytes_mut() };
    let mut in_idx = 0;
    let mut out_idx = 0;

    while in_idx < bytes.len() {
        if bytes[in_idx] == b'%' {
            if in_idx + 2 >= bytes.len() {
                return None;
            }
            let high = unhex(bytes[in_idx + 1])?;
            let low = unhex(bytes[in_idx + 2])?;
            bytes[out_idx] = (high * 16 + low) as u8;
            in_idx += 3;
        } else {
            bytes[out_idx] = bytes[in_idx];
            in_idx += 1;
        }
        out_idx += 1;
    }

    bytes[out_idx] = b'\0'; // Null-terminate the string
    Some(s)
}

fn unhex(c: u8) -> Option<u8> {
    match c {
        b'0'..=b'9' => Some(c - b'0'),
        b'a'..=b'f' => Some(c - b'a' + 10),
        b'A'..=b'F' => Some(c - b'A' + 10),
        _ => None,
    }
}
