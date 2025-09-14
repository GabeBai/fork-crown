fn unhex(s: &str) -> i32 {
    if let Some(c) = s.chars().next() {
        match c {
            '0'..='9' => c as i32 - '0' as i32,
            'A'..='F' => c as i32 - 'A' as i32 + 10,
            'a'..='f' => c as i32 - 'a' as i32 + 10,
            _ => -1,
        }
    } else {
        -1
    }
}