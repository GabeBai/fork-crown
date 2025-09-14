use std::fs;

pub fn osys_unlink(path: &str) -> std::io::Result<()> {
    fs::remove_file(path)
}