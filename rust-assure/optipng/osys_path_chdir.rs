fn osys_path_chdir<'a>(
    buffer: &'a mut [u8],
    old_path: &str,
    new_dirname: &str,
) -> Option<&'a str> {
    let mut path = old_path;
    while let Some(pos) = path.find('/') {
        path = &path[pos + 1..];
    }

    let dirlen = new_dirname.len();
    let pathlen = path.len();

    // Check if the buffer is large enough
    if dirlen + pathlen + 2 >= buffer.len() {
        return None;
    }

    // Create a mutable String to build the new path
    let mut new_path = String::new();

    if dirlen > 0 {
        new_path.push_str(new_dirname);
        if !new_path.ends_with('/') {
            new_path.push('/');
        }
    }

    new_path.push_str(path);

    // Copy the new path into the buffer
    let bytes = new_path.as_bytes();
    buffer[..bytes.len()].copy_from_slice(bytes);

    // Return the new path as a &str
    std::str::from_utf8(&buffer[..bytes.len()]).ok()
}

fn main() {
    let mut buffer = vec![0u8; 256];
    let old_path = "some/old/path";
    let new_dirname = "new/dir";

    if let Some(new_path) = osys_path_chdir(&mut buffer, old_path, new_dirname) {
        println!("New path: {}", new_path);
    } else {
        println!("Buffer too small");
    }
}
