use std::ffi::c_uint;

pub struct OpngEngineSummary {
    file_count: c_uint,
    err_count: c_uint,
    fix_count: c_uint,
    snip_count: c_uint,
}

pub struct OpngOptions {
    verbose: i32,
}

static mut ENGINE: OpngEngineSummary = OpngEngineSummary {
    file_count: 0,
    err_count: 0,
    fix_count: 0,
    snip_count: 0,
};

static mut OPTIONS: OpngOptions = OpngOptions { verbose: 0 };

extern "C" {
    fn usr_printf(fmt: *const i8, ...);
}

#[no_mangle]
pub extern "C" fn opng_finalize() -> i32 {
    unsafe {
        if OPTIONS.verbose != 0 || ENGINE.snip_count > 0 || ENGINE.err_count > 0 {
            usr_printf(b"** Status report\n\0".as_ptr() as *const i8);
            usr_printf(
                b"%u file(s) have been processed.\n\0".as_ptr() as *const i8,
                ENGINE.file_count,
            );
            if ENGINE.snip_count > 0 {
                usr_printf(
                    b"%u multi-image file(s) have been snipped.\n\0".as_ptr() as *const i8,
                    ENGINE.snip_count,
                );
            }
            if ENGINE.err_count > 0 {
                usr_printf(
                    b"%u error(s) have been encountered.\n\0".as_ptr() as *const i8,
                    ENGINE.err_count,
                );
                if ENGINE.fix_count > 0 {
                    usr_printf(
                        b"%u erroneous file(s) have been fixed.\n\0".as_ptr() as *const i8,
                        ENGINE.fix_count,
                    );
                }
            }
        }
    }
    0
}