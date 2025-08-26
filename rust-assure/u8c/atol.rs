pub fn atol(nptr: &str) -> Result<i64, std::num::ParseIntError> {
    nptr.trim().parse::<i64>()
}

fn main() {
    let input = "12345";
    match atol(input) {
        Ok(value) => println!("Parsed value: {}", value),
        Err(e) => println!("Failed to parse: {}", e),
    }
}
