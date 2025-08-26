pub fn atoi(nptr: &str) -> i32 {
    nptr.trim().parse::<i32>().unwrap_or(0)
}

fn main() {
    let number_str = "12345";
    let number = atoi(number_str);
    println!("The number is: {}", number);
}
