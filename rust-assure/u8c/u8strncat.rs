fn u8strncat<'a>(dest: &'a mut [u8], src: &[u8], n: usize) -> &'a mut [u8] {
    let mut dest_len = 0;
    // Find the end of the current string in dest
    while dest_len < dest.len() && dest[dest_len] != 0 {
        dest_len += 1;
    }

    // Copy up to n bytes from src to dest
    let mut i = 0;
    while i < n && i < src.len() && dest_len + i < dest.len() {
        dest[dest_len + i] = src[i];
        i += 1;
    }

    // Null-terminate the result if there's space
    if dest_len + i < dest.len() {
        dest[dest_len + i] = 0;
    }

    dest
}

fn main() {
    let mut dest = [0u8; 20];
    let src = b"Hello";
    dest[..6].copy_from_slice(b"World\0");

    u8strncat(&mut dest, src, 3);
    println!("{:?}", &dest[..]); // Output will be: [87, 111, 114, 108, 100, 72, 101, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
}
