fn opng_strpbrk_digit(s: &str) -> Option<&str> {
    for (i, c) in s.char_indices() {
        if c.is_digit(10) {
            return Some(&s[i..]);
        }
    }
    None
}

fn main() {
    let test_str = "abc123";
    if let Some(digit_str) = opng_strpbrk_digit(test_str) {
        println!("First digit found at: {}", digit_str);
    } else {
        println!("No digit found.");
    }
}
