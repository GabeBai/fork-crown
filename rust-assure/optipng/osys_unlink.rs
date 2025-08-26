use std::fs;

fn osys_unlink(path: &str) -> std::io::Result<()> {
    fs::remove_file(path)
}
