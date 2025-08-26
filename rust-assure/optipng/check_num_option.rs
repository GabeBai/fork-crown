use std::num::ParseIntError;

fn opng_str2ulong(value: &mut u64, opt_arg: &str) -> Result<(), ParseIntError> {
    *value = opt_arg.parse::<u64>()?;
    Ok(())
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    eprintln!("Error with option {}: {}", opt, opt_arg);
}

fn check_num_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> Result<i32, String> {
    let mut value: u64 = 0;
    if opng_str2ulong(&mut value, opt_arg).is_err() || value > 2147483647 {
        err_option_arg(opt, opt_arg);
        return Err(format!("Invalid number: {}", opt_arg));
    }

    let value_as_i32 = value as i32;
    if value_as_i32 < lowest || value_as_i32 > highest {
        err_option_arg(opt, opt_arg);
        return Err(format!("Number out of range: {}", opt_arg));
    }

    Ok(value_as_i32)
}

fn main() {
    // Example usage
    match check_num_option("option", "12345", 0, 100000) {
        Ok(value) => println!("Valid number: {}", value),
        Err(err) => println!("Error: {}", err),
    }
}
