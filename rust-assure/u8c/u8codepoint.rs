fn u8codepoint(s: &str) -> Option<char> {
    let mut chars = s.chars();
    chars.next()
}

fn main() {
    let s = "example";
    if let Some(c) = u8codepoint(s) {
        println!("First codepoint: {}", c);
    } else {
        println!("String is empty or invalid UTF-8");
    }
}
