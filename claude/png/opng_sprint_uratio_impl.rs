use std::cmp::Ordering;

fn opng_sprint_uratio_impl(
    buffer: &mut [u8],
    num: u64,
    denom: u64,
    always_percent: bool,
) -> usize {
    if denom == 0 {
        return if num == 0 {
            opng_snprintf_impl(buffer, "??%")
        } else {
            opng_snprintf_impl(buffer, "INFTY%")
        };
    }

    if num < denom && denom / (denom - num) < 20000 {
        let scale = 10000.0;
        let scaled_ratio = (num as f64 * scale) / denom as f64;
        let mut fractional_part = (scaled_ratio + 0.5) as u32;
        if fractional_part >= scale as u32 {
            fractional_part = scale as u32 - 1;
        }
        return opng_snprintf_impl(
            buffer,
            &format!("{}.{:02}%", fractional_part / 100, fractional_part % 100),
        );
    }

    let integer_part = num / denom;
    let remainder = num % denom;
    let scale = 100.0;
    let scaled_ratio = (remainder as f64 * scale) / denom as f64;
    let mut fractional_part = (scaled_ratio + 0.5) as u32;
    
    let mut integer_part = if fractional_part >= scale as u32 {
        fractional_part = 0;
        integer_part + 1
    } else {
        integer_part
    };

    if always_percent {
        return opng_snprintf_impl(
            buffer,
            &format!("{}{}%", integer_part, format!("{:02}", fractional_part)),
        );
    }

    if integer_part < 100 {
        return opng_snprintf_impl(
            buffer,
            &format!("{}.{:02}x", integer_part, fractional_part),
        );
    }

    integer_part = num / denom;
    if remainder > (denom - 1) / 2 {
        integer_part += 1;
    }

    opng_snprintf_impl(buffer, &format!("{}x", integer_part))
}

fn opng_snprintf_impl(buffer: &mut [u8], s: &str) -> usize {
    let len = s.len().min(buffer.len());
    buffer[..len].copy_from_slice(&s.as_bytes()[..len]);
    len
}