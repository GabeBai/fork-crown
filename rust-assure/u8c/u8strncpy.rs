fn u8strncpy<'a>(dest: &'a mut [u8], src: &[u8], n: usize) -> &'a mut [u8] {
    if n == 0 {
        return dest;
    }

    let k = n - 1;
    let len = src.len().min(n);

    // Copy up to `n` bytes from `src` to `dest`
    dest[..len].copy_from_slice(&src[..len]);

    // Null-terminate the destination
    dest[k] = 0;

    // Check if the last byte is part of a multi-byte UTF-8 sequence
    if dest[k] & 0x80 != 0 {
        let mut i = k;
        while i > 0 && (k - i) < 3 && (dest[i] & 0xC0) == 0x80 {
            i -= 1;
        }
        match k - i {
            0 => dest[i] = 0,
            1 => if (dest[i] & 0xE0) != 0xC0 { dest[i] = 0 },
            2 => if (dest[i] & 0xF0) != 0xE0 { dest[i] = 0 },
            3 => if (dest[i] & 0xF8) != 0xF0 { dest[i] = 0 },
            _ => {}
        }
    }

    dest
}

fn main() {
    let mut dest = [0u8; 10];
    let src = b"hello";
    u8strncpy(&mut dest, src, 5);
    println!("{:?}", &dest);
}
