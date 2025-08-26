use std::fs;
use std::path::Path;

fn osys_rename(src_path: &str, dest_path: &str, clobber: bool) -> i32 {
    if !clobber {
        if Path::new(dest_path).exists() {
            return -1;
        }
    }
    match fs::rename(src_path, dest_path) {
        Ok(_) => 0,
        Err(_) => -1,
    }
}
