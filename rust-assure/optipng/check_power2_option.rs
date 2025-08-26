fn opng_str2ulong(value: &mut u64, opt_arg: &str, base: u32) -> bool {
    match u64::from_str_radix(opt_arg, base) {
        Ok(v) => {
            *value = v;
            true
        }
        Err(_) => false,
    }
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    eprintln!("Invalid argument for option {}: {}", opt, opt_arg);
}

fn check_power2_option(opt: &str, opt_arg: &str, mut lowest: i32, mut highest: i32) -> i32 {
    let mut value: u64 = 0;
    if opng_str2ulong(&mut value, opt_arg, 10) {
        if lowest < 0 {
            lowest = 0;
        }
        if highest > (8 * std::mem::size_of::<u64>() as i32 - 2) {
            highest = 8 * std::mem::size_of::<u64>() as i32 - 2;
        }
        for result in lowest..=highest {
            if (1u64 << result) == value {
                return result;
            }
        }
    }
    err_option_arg(opt, opt_arg);
    -1
}

fn main() {
    // Example usage
    let opt = "--power";
    let opt_arg = "16";
    let result = check_power2_option(opt, opt_arg, 0, 64);
    println!("Result: {}", result);
}
