fn strdup(s: &str) -> String {
    s.to_string()
}

fn main() {
    let original = "Hello, world!";
    let duplicate = strdup(original);
    println!("Original: {}", original);
    println!("Duplicate: {}", duplicate);
}
