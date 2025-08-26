fn osys_path_chext<'a>(buffer: &'a mut [u8], old_path: &str, new_extname: &str) -> Option<&'a mut [u8]> {
    if !new_extname.starts_with('.') {
        return None;
    }

    let mut pos = None;
    let mut i = 0;

    for (j, &byte) in old_path.as_bytes().iter().enumerate() {
        if j >= buffer.len() {
            return None;
        }
        buffer[j] = byte;
        if byte == b'.' {
            pos = Some(j);
        }
        i = j + 1;
    }

    if let Some(pos) = pos {
        i = pos;
    }

    for &byte in new_extname.as_bytes() {
        if i >= buffer.len() {
            return None;
        }
        buffer[i] = byte;
        i += 1;
    }

    if i < buffer.len() {
        buffer[i] = 0; // Null-terminate the buffer
    }

    Some(&mut buffer[..i])
}
