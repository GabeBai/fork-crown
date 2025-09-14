use std::os::unix::fs::AccessExt;
use std::path::Path;

fn osys_rename(src_path: &str, dest_path: &str, clobber: bool) -> std::io::Result<()> {
    if !clobber {
        if Path::new(dest_path).try_exists()? {
            return Err(std::io::Error::new(std::io::ErrorKind::AlreadyExists, "Destination path already exists"));
        }
    }
    std::fs::rename(src_path, dest_path)
}