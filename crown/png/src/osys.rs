use ::libc;
extern "C" {
    pub type _IO_wide_data;
    
    pub type _IO_marker;
    static mut stderr: *mut FILE;
    fn remove(__filename: *const libc::c_char) -> libc::c_int;
    fn rename(__old: *const libc::c_char, __new: *const libc::c_char) -> libc::c_int;
    fn fflush(__stream: *mut FILE) -> libc::c_int;
    fn fputs(__s: *const libc::c_char, __stream: *mut FILE) -> libc::c_int;
    fn fread(
        _: *mut libc::c_void,
        _: libc::c_ulong,
        _: libc::c_ulong,
        _: *mut FILE,
    ) -> libc::c_ulong;
    fn fwrite(
        _: *const libc::c_void,
        _: libc::c_ulong,
        _: libc::c_ulong,
        _: *mut FILE,
    ) -> libc::c_ulong;
    fn fseek(
        __stream: *mut FILE,
        __off: libc::c_long,
        __whence: libc::c_int,
    ) -> libc::c_int;
    fn ftell(__stream: *mut FILE) -> libc::c_long;
    fn fgetpos(__stream: *mut FILE, __pos: *mut fpos_t) -> libc::c_int;
    fn fsetpos(__stream: *mut FILE, __pos: *const fpos_t) -> libc::c_int;
    fn exit(_: libc::c_int) -> !;
    fn strcpy(_: *mut libc::c_char, _: *const libc::c_char) -> *mut libc::c_char;
    fn strcat(_: *mut libc::c_char, _: *const libc::c_char) -> *mut libc::c_char;
    fn strchr(_: *const libc::c_char, _: libc::c_int) -> *mut libc::c_char;
    fn strpbrk(_: *const libc::c_char, _: *const libc::c_char) -> *mut libc::c_char;
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
    fn access(__name: *const libc::c_char, __type: libc::c_int) -> libc::c_int;
    fn chown(
        __file: *const libc::c_char,
        __owner: __uid_t,
        __group: __gid_t,
    ) -> libc::c_int;
    fn stat(__file: *const libc::c_char, __buf: *mut stat) -> libc::c_int;
    fn chmod(__file: *const libc::c_char, __mode: __mode_t) -> libc::c_int;
    fn mkdir(__path: *const libc::c_char, __mode: __mode_t) -> libc::c_int;
    fn utimensat(
        __fd: libc::c_int,
        __path: *const libc::c_char,
        __times: *const timespec,
        __flags: libc::c_int,
    ) -> libc::c_int;
}
pub type size_t = libc::c_ulong;
pub type __dev_t = libc::c_ulong;
pub type __uid_t = libc::c_uint;
pub type __gid_t = libc::c_uint;
pub type __ino_t = libc::c_ulong;
pub type __mode_t = libc::c_uint;
pub type __nlink_t = libc::c_ulong;
pub type __off_t = libc::c_long;
pub type __off64_t = libc::c_long;
pub type __time_t = libc::c_long;
pub type __blksize_t = libc::c_long;
pub type __blkcnt_t = libc::c_long;
pub type __syscall_slong_t = libc::c_long;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct __mbstate_t {
    pub __count: libc::c_int,
    pub __value: C2RustUnnamed,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub union C2RustUnnamed {
    pub __wch: libc::c_uint,
    pub __wchb: [libc::c_char; 4],
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct _G_fpos_t {
    pub __pos: __off_t,
    pub __state: __mbstate_t,
}
pub type __fpos_t = _G_fpos_t;
#[derive(Copy, Clone)]

struct ErasedByPreprocessor3 { dummy: () }
pub type _IO_lock_t = ();
pub type FILE = crate::src::optim::_IO_FILE;
pub type fpos_t = __fpos_t;
pub type osys_foffset_t = libc::c_long;
pub type osys_fsize_t = libc::c_ulong;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct stat {
    pub st_dev: __dev_t,
    pub st_ino: __ino_t,
    pub st_nlink: __nlink_t,
    pub st_mode: __mode_t,
    pub st_uid: __uid_t,
    pub st_gid: __gid_t,
    pub __pad0: libc::c_int,
    pub st_rdev: __dev_t,
    pub st_size: __off_t,
    pub st_blksize: __blksize_t,
    pub st_blocks: __blkcnt_t,
    pub st_atim: timespec,
    pub st_mtim: timespec,
    pub st_ctim: timespec,
    pub __glibc_reserved: [__syscall_slong_t; 3],
}
#[no_mangle]
pub unsafe extern "C" fn osys_path_chdir(
    mut buffer: *mut libc::c_char,
    mut bufsize: size_t,
    mut old_path: *const libc::c_char,
    mut new_dirname: *const libc::c_char,
) -> *mut libc::c_char {
    let mut path = 0 as *const libc::c_char;
    let mut ptr = 0 as *const libc::c_char;
    let mut dirlen: size_t = 0;
    path = old_path;
    loop {
        ptr = strpbrk(path, b"/\0" as *const u8 as *const libc::c_char);
        if ptr.is_null() {std::intrinsics::assume((ptr).addr() == 0);
            break;
        }
        path = ptr.offset(1 as libc::c_int as isize);
    }
    dirlen = strlen(new_dirname);
    if dirlen.wrapping_add(strlen(path)).wrapping_add(2 as libc::c_int as libc::c_ulong)
        >= bufsize
    {
        return 0 as *mut libc::c_char;
    }
    if dirlen > 0 as libc::c_int as size_t {
        strcpy(buffer, new_dirname);
        if (strchr(
            b"/\0" as *const u8 as *const libc::c_char,
            *buffer.offset(dirlen.wrapping_sub(1 as libc::c_int as size_t) as isize)
                as libc::c_int,
        ))
            .is_null()
        {std::intrinsics::assume((strchr(b"/\x00" as *const u8 as *const libc::c_char,
    *buffer.offset(dirlen.wrapping_sub(1 as libc::c_int as size_t) as isize)
        as libc::c_int)).addr() == 0);
            let fresh0 = dirlen;
            dirlen = dirlen.wrapping_add(1);
            *buffer.offset(fresh0 as isize) = '/' as i32 as libc::c_char;
        }
    }
    strcpy(buffer.offset(dirlen as isize), path);
    return buffer;
}
#[no_mangle]
pub unsafe extern "C" fn osys_path_chext(
    mut buffer: *mut libc::c_char,
    mut bufsize: size_t,
    mut old_path: *const libc::c_char,
    mut new_extname: *const libc::c_char,
) -> *mut libc::c_char {
    let mut i: size_t = 0;
    let mut pos: size_t = 0;
    if *new_extname.offset(0 as libc::c_int as isize) as libc::c_int != '.' as i32 {
        return 0 as *mut libc::c_char;
    }
    i = 0 as libc::c_int as size_t;
    pos = -(1 as libc::c_int) as size_t;
    while *old_path.offset(i as isize) as libc::c_int != 0 as libc::c_int {
        if i >= bufsize {
            return 0 as *mut libc::c_char;
        }
        *buffer.offset(i as isize) = *old_path.offset(i as isize);
 if *buffer.offset(i as isize) as libc::c_int == '.' as i32 {
            pos = i;
        }
        i = i.wrapping_add(1);
        i;
    }
    if i > pos {
        i = pos;
    }
    loop {
        if i >= bufsize {
            return 0 as *mut libc::c_char;
        }
        *buffer.offset(i as isize) = *new_extname;
 if *buffer.offset(i as isize) as libc::c_int == 0 as libc::c_int {
            return buffer;
        }
        i = i.wrapping_add(1);
        i;
        new_extname = new_extname.offset(1);
        new_extname;
    };
}
#[no_mangle]
pub unsafe extern "C" fn osys_path_mkbak(
    mut buffer: *mut libc::c_char,
    mut bufsize: size_t,
    mut path: *const libc::c_char,
) -> *mut libc::c_char {
    static mut bak_extname: [libc::c_char; 5] = unsafe {
        *::core::mem::transmute::<&[u8; 5], &[libc::c_char; 5]>(b".bak\0")
    };
    if (strlen(path))
        .wrapping_add(::core::mem::size_of::<[libc::c_char; 5]>() as libc::c_ulong)
        > bufsize
    {
        return 0 as *mut libc::c_char;
    }
    strcpy(buffer, path);
    strcat(buffer, bak_extname.as_ptr());
    return buffer;
}
#[no_mangle]
pub unsafe extern "C" fn osys_ftello(mut stream: *mut FILE) -> osys_foffset_t {
    return ftell(stream);
}
#[no_mangle]
pub unsafe extern "C" fn osys_fseeko(
    mut stream: *mut FILE,
    mut offset: osys_foffset_t,
    mut whence: libc::c_int,
) -> libc::c_int {
    return fseek(stream, offset, whence);
}
#[no_mangle]
pub unsafe extern "C" fn osys_fgetsize(
    mut stream: *mut FILE,
    mut size: *mut osys_fsize_t,
) -> libc::c_int {
    let mut offset: osys_foffset_t = 0;
    if osys_fseeko(stream, 0 as libc::c_int as osys_foffset_t, 2 as libc::c_int)
        != 0 as libc::c_int
    {
        return -(1 as libc::c_int);
    }
    offset = osys_ftello(stream);
    if offset < 0 as libc::c_int as osys_foffset_t {
        return -(1 as libc::c_int);
    }
    *size = offset as osys_fsize_t;
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn osys_fread_at(
    mut stream: *mut FILE,
    mut offset: osys_foffset_t,
    mut whence: libc::c_int,
    mut block: *mut libc::c_void,
    mut blocksize: size_t,
) -> size_t {
    let mut pos = _G_fpos_t {
        __pos: 0,
        __state: __mbstate_t {
            __count: 0,
            __value: C2RustUnnamed { __wch: 0 },
        },
    };
    let mut result: size_t = 0;
    if fgetpos(stream, &raw mut pos) != 0 as libc::c_int {
        return 0 as libc::c_int as size_t;
    }
    if osys_fseeko(stream, offset, whence) == 0 as libc::c_int {
        result = fread(block, 1 as libc::c_int as libc::c_ulong, blocksize, stream);
    } else {
        result = 0 as libc::c_int as size_t;
    }
    if fsetpos(stream, &raw mut pos) != 0 as libc::c_int {
        result = 0 as libc::c_int as size_t;
    }
    return result;
}
#[no_mangle]
pub unsafe extern "C" fn osys_fwrite_at(
    mut stream: *mut FILE,
    mut offset: osys_foffset_t,
    mut whence: libc::c_int,
    mut block: *const libc::c_void,
    mut blocksize: size_t,
) -> size_t {
    let mut pos = _G_fpos_t {
        __pos: 0,
        __state: __mbstate_t {
            __count: 0,
            __value: C2RustUnnamed { __wch: 0 },
        },
    };
    let mut result: size_t = 0;
    if fgetpos(stream, &raw mut pos) != 0 as libc::c_int
        || fflush(stream) != 0 as libc::c_int
    {
        return 0 as libc::c_int as size_t;
    }
    if osys_fseeko(stream, offset, whence) == 0 as libc::c_int {
        result = fwrite(block, 1 as libc::c_int as libc::c_ulong, blocksize, stream);
    } else {
        result = 0 as libc::c_int as size_t;
    }
    if fflush(stream) != 0 as libc::c_int {
        result = 0 as libc::c_int as size_t;
    }
    if fsetpos(stream, &raw mut pos) != 0 as libc::c_int {
        result = 0 as libc::c_int as size_t;
    }
    return result;
}
#[no_mangle]
pub unsafe extern "C" fn osys_rename(
    mut src_path: *const libc::c_char,
    mut dest_path: *const libc::c_char,
    mut clobber: libc::c_int,
) -> libc::c_int {
    if clobber == 0 {
        if access(dest_path, 0 as libc::c_int) >= 0 as libc::c_int {
            return -(1 as libc::c_int);
        }
    }
    return rename(src_path, dest_path);
}
#[no_mangle]
pub unsafe extern "C" fn osys_copy_attr(
    mut src_path: *const libc::c_char,
    mut dest_path: *const libc::c_char,
) -> libc::c_int {
    let mut sbuf = stat {
        st_dev: 0,
        st_ino: 0,
        st_nlink: 0,
        st_mode: 0,
        st_uid: 0,
        st_gid: 0,
        __pad0: 0,
        st_rdev: 0,
        st_size: 0,
        st_blksize: 0,
        st_blocks: 0,
        st_atim: timespec { tv_sec: 0, tv_nsec: 0 },
        st_mtim: timespec { tv_sec: 0, tv_nsec: 0 },
        st_ctim: timespec { tv_sec: 0, tv_nsec: 0 },
        __glibc_reserved: [0; 3],
    };
    let mut result: libc::c_int = 0;
    if stat(src_path, &raw mut sbuf) != 0 as libc::c_int {
        return -(1 as libc::c_int);
    }
    result = 0 as libc::c_int;
    chown(dest_path, sbuf.st_uid, sbuf.st_gid) != 0 as libc::c_int;
    if chmod(dest_path, sbuf.st_mode) != 0 as libc::c_int {
        result = -(1 as libc::c_int);
    }
    let mut times: [timespec; 2] = [timespec { tv_sec: 0, tv_nsec: 0 }; 2];
    times[0 as libc::c_int as usize] = sbuf.st_atim;
    times[1 as libc::c_int as usize] = sbuf.st_mtim;
    if utimensat(
        -(100 as libc::c_int),
        dest_path,
        times.as_mut_ptr() as *const timespec,
        0 as libc::c_int,
    ) != 0 as libc::c_int
    {
        result = -(1 as libc::c_int);
    }
    return result;
}
#[no_mangle]
pub unsafe extern "C" fn osys_create_dir(
    mut dirname: *const libc::c_char,
) -> libc::c_int {
    let mut len: size_t = 0;
    len = strlen(dirname);
    if len == 0 as libc::c_int as size_t {
        return 0 as libc::c_int;
    }
    let mut sbuf = stat {
        st_dev: 0,
        st_ino: 0,
        st_nlink: 0,
        st_mode: 0,
        st_uid: 0,
        st_gid: 0,
        __pad0: 0,
        st_rdev: 0,
        st_size: 0,
        st_blksize: 0,
        st_blocks: 0,
        st_atim: timespec { tv_sec: 0, tv_nsec: 0 },
        st_mtim: timespec { tv_sec: 0, tv_nsec: 0 },
        st_ctim: timespec { tv_sec: 0, tv_nsec: 0 },
        __glibc_reserved: [0; 3],
    };
    if stat(dirname, &raw mut sbuf) == 0 as libc::c_int {
        return if sbuf.st_mode & 0o40000 as libc::c_int as __mode_t != 0 {
            0 as libc::c_int
        } else {
            -(1 as libc::c_int)
        };
    }
    return mkdir(dirname, 0o777 as libc::c_int as __mode_t);
}
#[no_mangle]
pub unsafe extern "C" fn osys_test(
    mut path: *const libc::c_char,
    mut mode: *const libc::c_char,
) -> libc::c_int {
    let mut faccess: libc::c_int = 0;
    let mut freg: libc::c_int = 0;
    freg = 0 as libc::c_int;
    faccess = freg;
    if !(strchr(mode, 'f' as i32)).is_null() {
        freg = 1 as libc::c_int;
    }else { std::intrinsics::assume((strchr(mode, 'f' as i32)).addr() == 0); }
    if !(strchr(mode, 'r' as i32)).is_null() {
        faccess |= 4 as libc::c_int;
    }else { std::intrinsics::assume((strchr(mode, 'r' as i32)).addr() == 0); }
    if !(strchr(mode, 'w' as i32)).is_null() {
        faccess |= 2 as libc::c_int;
    }else { std::intrinsics::assume((strchr(mode, 'w' as i32)).addr() == 0); }
    if !(strchr(mode, 'x' as i32)).is_null() {
        faccess |= 1 as libc::c_int;
    }else { std::intrinsics::assume((strchr(mode, 'x' as i32)).addr() == 0); }
    if faccess == 0 as libc::c_int && freg == 0 as libc::c_int {
        if (strchr(mode, 'e' as i32)).is_null() {std::intrinsics::assume((strchr(mode, 'e' as i32)).addr() == 0);
            return 0 as libc::c_int;
        }
    }
    let mut sbuf = stat {
        st_dev: 0,
        st_ino: 0,
        st_nlink: 0,
        st_mode: 0,
        st_uid: 0,
        st_gid: 0,
        __pad0: 0,
        st_rdev: 0,
        st_size: 0,
        st_blksize: 0,
        st_blocks: 0,
        st_atim: timespec { tv_sec: 0, tv_nsec: 0 },
        st_mtim: timespec { tv_sec: 0, tv_nsec: 0 },
        st_ctim: timespec { tv_sec: 0, tv_nsec: 0 },
        __glibc_reserved: [0; 3],
    };
    if stat(path, &raw mut sbuf) != 0 as libc::c_int {
        return -(1 as libc::c_int);
    }
    if freg != 0 && sbuf.st_mode & 0o100000 as libc::c_int as __mode_t == 0 {
        return -(1 as libc::c_int);
    }
    if faccess == 0 as libc::c_int {
        return 0 as libc::c_int;
    }
    return access(path, faccess);
}
#[no_mangle]
pub unsafe extern "C" fn osys_test_eq(
    mut path1: *const libc::c_char,
    mut path2: *const libc::c_char,
) -> libc::c_int {
    let mut sbuf1 = stat {
        st_dev: 0,
        st_ino: 0,
        st_nlink: 0,
        st_mode: 0,
        st_uid: 0,
        st_gid: 0,
        __pad0: 0,
        st_rdev: 0,
        st_size: 0,
        st_blksize: 0,
        st_blocks: 0,
        st_atim: timespec { tv_sec: 0, tv_nsec: 0 },
        st_mtim: timespec { tv_sec: 0, tv_nsec: 0 },
        st_ctim: timespec { tv_sec: 0, tv_nsec: 0 },
        __glibc_reserved: [0; 3],
    };
    let mut sbuf2 = stat {
        st_dev: 0,
        st_ino: 0,
        st_nlink: 0,
        st_mode: 0,
        st_uid: 0,
        st_gid: 0,
        __pad0: 0,
        st_rdev: 0,
        st_size: 0,
        st_blksize: 0,
        st_blocks: 0,
        st_atim: timespec { tv_sec: 0, tv_nsec: 0 },
        st_mtim: timespec { tv_sec: 0, tv_nsec: 0 },
        st_ctim: timespec { tv_sec: 0, tv_nsec: 0 },
        __glibc_reserved: [0; 3],
    };
    if stat(path1, &raw mut sbuf1) != 0 as libc::c_int
        || stat(path2, &raw mut sbuf2) != 0 as libc::c_int
    {
        return -(1 as libc::c_int);
    }
    if sbuf1.st_dev == sbuf2.st_dev && sbuf1.st_ino == sbuf2.st_ino {
        return if sbuf1.st_ino != 0 as libc::c_int as __ino_t {
            1 as libc::c_int
        } else {
            -(1 as libc::c_int)
        }
    } else {
        return 0 as libc::c_int
    };
}
#[no_mangle]
pub unsafe extern "C" fn osys_unlink(mut path: *const libc::c_char) -> libc::c_int {
    return remove(path);
}
#[no_mangle]
pub unsafe extern "C" fn osys_terminate() {
    static mut msg: *const libc::c_char = b"The execution of this program has been terminated abnormally.\n\0"
        as *const u8 as *const libc::c_char;
    fputs(msg, stderr);
    exit(70 as libc::c_int);
}
