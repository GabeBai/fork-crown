use std::os::unix::fs::MetadataExt;
use std::fs::{self, File};
use std::os::unix::fs::PermissionsExt;
use std::path::Path;
use std::time::SystemTime;

fn osys_copy_attr(src_path: &str, dest_path: &str) -> std::io::Result<()> {
    let metadata = fs::metadata(src_path)?;
    
    let uid = metadata.uid();
    let gid = metadata.gid();
    let mode = metadata.mode();
    
    let atime = metadata.accessed()?;
    let mtime = metadata.modified()?;
    
    fs::set_permissions(dest_path, fs::Permissions::from_mode(mode))?;
    
    let dest_file = File::open(dest_path)?;
    nix::unistd::fchown(dest_file.as_raw_fd(), Some(nix::unistd::Uid::from_raw(uid)), Some(nix::unistd::Gid::from_raw(gid)))?;
    
    filetime::set_file_times(dest_path, filetime::FileTime::from_system_time(atime), filetime::FileTime::from_system_time(mtime))?;
    
    Ok(())
}