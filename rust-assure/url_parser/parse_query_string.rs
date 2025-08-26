use std::ffi::CString;
use std::ptr;
use std::slice;

#[derive(Debug)]
struct UrlKeyValue {
    key: String,
    value: String,
}

fn parse_query_string(begin: &str) -> Option<Vec<UrlKeyValue>> {
    let mut elements = 1;
    for c in begin.chars() {
        if c == '&' || c == ';' {
            elements += 1;
        }
    }

    let mut kv = Vec::with_capacity(elements + 1);

    let mut p = begin;
    for _ in 0..=elements {
        if p.is_empty() {
            break;
        }

        let kv_end = scan_part(p, '&', ';')?;
        let key = &p[..kv_end];
        let key_end = scan_part(key, '=', '\0')?;
        let has_value = key_end < key.len() && key.as_bytes()[key_end] == b'=';
        let key = &key[..key_end];

        let key_decoded = decode_percent(key);
        let value_decoded = if has_value {
            let value = &key[key_end + 1..];
            decode_percent(value)
        } else {
            String::new()
        };

        kv.push(UrlKeyValue {
            key: key_decoded,
            value: value_decoded,
        });

        p = &p[kv_end + 1..];
    }

    Some(kv)
}

fn scan_part(s: &str, delim1: char, delim2: char) -> Option<usize> {
    s.find(|c| c == delim1 || c == delim2)
}

fn decode_percent(s: &str) -> String {
    // Implement percent-decoding logic here
    s.to_string()
}

fn main() {
    let query = "key1=value1&key2=value2";
    if let Some(kv) = parse_query_string(query) {
        for pair in kv {
            println!("Key: {}, Value: {}", pair.key, pair.value);
        }
    } else {
        eprintln!("Error parsing query string");
    }
}
