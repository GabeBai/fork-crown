pub fn csv_write2(dest: &mut [u8], src: &[u8], quote: u8) -> usize {
    let mut cdest = 0;
    let mut csrc = 0;
    let mut chars = 0;

    if src.is_empty() {
        return 0;
    }

    if dest.is_empty() {
        return 0;
    }

    if !dest.is_empty() {
        dest[cdest] = quote;
        cdest += 1;
    }
    chars += 1;

    while csrc < src.len() {
        if src[csrc] == quote {
            if cdest < dest.len() {
                dest[cdest] = quote;
                cdest += 1;
            }
            if chars < usize::MAX {
                chars += 1;
            }
        }
        if cdest < dest.len() {
            dest[cdest] = src[csrc];
            cdest += 1;
        }
        if chars < usize::MAX {
            chars += 1;
        }
        csrc += 1;
    }

    if cdest < dest.len() {
        dest[cdest] = quote;
    }
    if chars < usize::MAX {
        chars += 1;
    }

    chars
}

#[no_mangle] fn main() {
    let mut dest = vec![0u8; 100];
    let src = b"example";
    let quote = b'"';
    let written = csv_write2(&mut dest, src, quote);
    println!("Written: {}", written);
    println!("Result: {:?}", &dest[..written]);
}
