use std::fmt::Write;

type OpngUllongT = u64;

fn opng_sprint_uratio_impl(
    buffer: &mut String,
    num: OpngUllongT,
    denom: OpngUllongT,
    always_percent: bool,
) -> usize {
    if denom == 0 {
        let result = if num == 0 { "??%" } else { "INFTY%" };
        buffer.push_str(result);
        return result.len();
    }

    let mut integer_part = num / denom;
    let mut remainder = num % denom;
    let mut fractional_part;
    let mut scale;
    let mut scaled_ratio;

    if num < denom && denom / (denom - num) < 20000 {
        scale = 10000;
        scaled_ratio = (num as f64 * scale as f64) / denom as f64;
        fractional_part = (scaled_ratio + 0.5) as u32;
        if fractional_part >= scale {
            fractional_part = scale - 1;
        }
        write!(buffer, "{}.{:02}%", fractional_part / 100, fractional_part % 100).unwrap();
        return buffer.len();
    }

    scale = 100;
    scaled_ratio = (remainder as f64 * scale as f64) / denom as f64;
    fractional_part = (scaled_ratio + 0.5) as u32;
    if fractional_part >= scale {
        fractional_part = 0;
        integer_part += 1;
    }

    if always_percent {
        write!(buffer, "{}{:02}%", integer_part, fractional_part).unwrap();
    } else if integer_part < 100 {
        write!(buffer, "{}.{:02}x", integer_part, fractional_part).unwrap();
    } else {
        integer_part = num / denom;
        if remainder > (denom - 1) / 2 {
            integer_part += 1;
        }
        write!(buffer, "{}x", integer_part).unwrap();
    }

    buffer.len()
}

fn main() {
    let mut buffer = String::new();
    let num = 123456789;
    let denom = 987654321;
    let always_percent = true;

    opng_sprint_uratio_impl(&mut buffer, num, denom, always_percent);
    println!("{}", buffer);
}
