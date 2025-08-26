use nix::sys::stat::{fstatat, utimensat, Mode, UtimensatFlags};
use nix::unistd::{chown, Gid, Uid};
use std::fs;
use std::os::unix::fs::PermissionsExt;
use std::path::Path;

fn osys_copy_attr(src_path: &str, dest_path: &str) -> Result<(), std::io::Error> {
    let src_metadata = fs::metadata(src_path)?;
    let dest_metadata = fs::metadata(dest_path)?;

    // Change ownership
    let uid = Uid::from_raw(src_metadata.uid());
    let gid = Gid::from_raw(src_metadata.gid());
    chown(dest_path, Some(uid), Some(gid)).map_err(|e| std::io::Error::from_raw_os_error(e as i32))?;

    // Change permissions
    let mode = src_metadata.permissions().mode();
    fs::set_permissions(dest_path, fs::Permissions::from_mode(mode))?;

    // Change timestamps
    let atime = src_metadata.accessed()?;
    let mtime = src_metadata.modified()?;
    let times = [
        nix::sys::time::TimeSpec::from(atime),
        nix::sys::time::TimeSpec::from(mtime),
    ];
    utimensat(None, Path::new(dest_path), &times, UtimensatFlags::FollowSymlink)
        .map_err(|e| std::io::Error::from_raw_os_error(e as i32))?;

    Ok(())
}
