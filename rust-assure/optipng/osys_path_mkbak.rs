fn osys_path_mkbak<'a>(buffer: &'a mut [u8], path: &str) -> Option<&'a str> {
    const BAK_EXTNAME: &str = ".bak";
    
    // Check if the buffer is large enough to hold the path and the extension
    if path.len() + BAK_EXTNAME.len() > buffer.len() {
        return None;
    }
    
    // Copy the path into the buffer
    buffer[..path.len()].copy_from_slice(path.as_bytes());
    
    // Append the extension
    buffer[path.len()..path.len() + BAK_EXTNAME.len()].copy_from_slice(BAK_EXTNAME.as_bytes());
    
    // Convert the buffer to a string slice and return it
    std::str::from_utf8(&buffer[..path.len() + BAK_EXTNAME.len()]).ok()
}

fn main() {
    let mut buffer = vec![0u8; 256];
    let path = "example.txt";
    
    match osys_path_mkbak(&mut buffer, path) {
        Some(bak_path) => println!("Backup path: {}", bak_path),
        None => println!("Buffer is too small"),
    }
}
