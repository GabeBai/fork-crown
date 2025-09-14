use std::cmp::Ordering;

fn opng_strcasecmp(str1: &str, str2: &str) -> i32 {
    let mut iter1 = str1.chars().map(|c| c.to_ascii_lowercase());
    let mut iter2 = str2.chars().map(|c| c.to_ascii_lowercase());

    loop {
        match (iter1.next(), iter2.next()) {
            (Some(ch1), Some(ch2)) if ch1 == ch2 => continue,
            (Some(ch1), Some(ch2)) => return (ch1 as i32) - (ch2 as i32),
            (None, None) => return 0,
            (Some(ch1), None) => return ch1 as i32,
            (None, Some(ch2)) => return -(ch2 as i32),
        }
    }
}