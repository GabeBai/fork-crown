pub fn check_power2_option(opt: &str, opt_arg: &str, lowest: i32, mut highest: i32) -> i32 {
    let value: Result<u64, _> = opt_arg.parse();
    if let Ok(value) = value {
        let lowest = lowest.max(0);
        highest = highest.min((std::mem::size_of::<u64>() * 8 - 2) as i32);
        for result in lowest..=highest {
            if (1u64 << result) == value {
                return result;
            }
        }
    }
    err_option_arg(opt, opt_arg);
    -1
}