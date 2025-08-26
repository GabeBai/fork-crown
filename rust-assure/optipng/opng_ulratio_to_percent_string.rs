use std::fmt::Write;

struct OpngUlratio {
    num: u64,
    denom: u64,
}

fn opng_sprint_uratio_impl(buffer: &mut String, num: u64, denom: u64, precision: usize) -> usize {
    if denom == 0 {
        return 0; // Handle division by zero
    }
    let ratio = (num as f64 / denom as f64) * 100.0;
    write!(buffer, "{:.1$}%", ratio, precision).unwrap();
    buffer.len()
}

fn opng_ulratio_to_percent_string(buffer: &mut String, ratio: &OpngUlratio) -> usize {
    let num = ratio.num;
    let denom = ratio.denom;
    opng_sprint_uratio_impl(buffer, num, denom, 1)
}

fn main() {
    let ratio = OpngUlratio { num: 50, denom: 200 };
    let mut buffer = String::new();
    opng_ulratio_to_percent_string(&mut buffer, &ratio);
    println!("{}", buffer);
}
