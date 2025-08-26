use std::num::ParseIntError;

fn opng_str2ulong(in_str: &str, allow_multiplier: bool) -> Result<u64, &'static str> {
    let trimmed_str = in_str.trim_start();
    let mut begin_ptr = trimmed_str;
    let mut end_ptr = begin_ptr;

    if let Some(first_char) = begin_ptr.chars().next() {
        if first_char.is_digit(10) {
            match u64::from_str_radix(begin_ptr, 10) {
                Ok(value) => {
                    end_ptr = &begin_ptr[value.to_string().len()..];
                    let mut out_val = value;
                    let mut multiplier = 1;

                    if allow_multiplier {
                        if let Some(multiplier_char) = end_ptr.chars().next() {
                            match multiplier_char {
                                'k' | 'K' => {
                                    end_ptr = &end_ptr[1..];
                                    multiplier = 1024;
                                }
                                'M' => {
                                    end_ptr = &end_ptr[1..];
                                    multiplier = 1024 * 1024;
                                }
                                'G' => {
                                    end_ptr = &end_ptr[1..];
                                    multiplier = 1024 * 1024 * 1024;
                                }
                                _ => {}
                            }
                        }

                        if multiplier > 1 {
                            if let Some(multiplied_val) = out_val.checked_mul(multiplier) {
                                out_val = multiplied_val;
                            } else {
                                return Err("Overflow occurred");
                            }
                        }
                    }

                    if end_ptr.trim_start().is_empty() {
                        Ok(out_val)
                    } else {
                        Err("Invalid characters after number")
                    }
                }
                Err(_) => Err("Failed to parse number"),
            }
        } else {
            Err("String does not start with a digit")
        }
    } else {
        Err("Empty input string")
    }
}

fn main() {
    let mut out_val = 0;
    match opng_str2ulong("1234K", true) {
        Ok(val) => out_val = val,
        Err(e) => eprintln!("Error: {}", e),
    }
    println!("Output value: {}", out_val);
}
