type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

fn opng_rangeset_string_to_bitset(str: &str, end_idx: Option<&mut usize>) -> OpngBitsetT {
    let mut result: OpngBitsetT = 0;
    let mut ptr = str.chars().peekable();
    let mut state = 0;
    let mut num1 = -1;
    let mut num2 = -1;
    let mut out_of_range = false;

    loop {
        while let Some(&c) = ptr.peek() {
            if c.is_whitespace() {
                ptr.next();
            } else {
                break;
            }
        }

        match state {
            0 | 2 => {
                if let Some(&c) = ptr.peek() {
                    if c.is_digit(10) {
                        let mut num = 0;
                        while let Some(c) = ptr.peek() {
                            if c.is_digit(10) {
                                num = 10 * num + c.to_digit(10).unwrap() as i32;
                                if num > OPNG_BITSET_ELT_MAX {
                                    out_of_range = true;
                                    num = OPNG_BITSET_ELT_MAX;
                                }
                                ptr.next();
                            } else {
                                break;
                            }
                        }
                        if state == 0 {
                            num1 = num;
                        }
                        num2 = num;
                        state += 1;
                        continue;
                    }
                }
            }
            1 => {
                if let Some('-') = ptr.peek() {
                    ptr.next();
                    num2 = OPNG_BITSET_ELT_MAX;
                    state += 1;
                    continue;
                }
            }
            _ => {}
        }

        if state > 0 {
            state = 0;
            if num2 > OPNG_BITSET_ELT_MAX {
                out_of_range = true;
                num2 = OPNG_BITSET_ELT_MAX;
            }
            if num1 <= num2 {
                result |= if num1 <= num2 {
                    ((1u32 << (num2 - num1 + 1)) - 1) << num1
                } else {
                    0
                };
            } else {
                out_of_range = true;
            }
        }

        if let Some(&c) = ptr.peek() {
            if c == ',' || c == ';' {
                ptr.next();
                continue;
            }
        }
        break;
    }

    if num1 == -1 {
        if let Some(end_idx) = end_idx {
            *end_idx = 0;
        }
        return 0;
    }

    if let Some(end_idx) = end_idx {
        *end_idx = str.len() - ptr.count();
    }

    if out_of_range {
        std::io::Error::from_raw_os_error(34);
    }

    result
}
