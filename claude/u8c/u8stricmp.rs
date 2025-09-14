use std::ffi::CStr;

unsafe fn u8stricmp(s: *mut i8, t: *mut i8) -> i32 {
    let mut ls: i32;
    let mut lt: i32;
    let mut cs: i32 = 0;
    let mut ct: i32 = 0;
    
    for _ in 0..1024*1024 {
        ls = u8next_(CStr::from_ptr(s as *const i8).to_str().unwrap(), &mut cs);
        lt = u8next_(CStr::from_ptr(t as *const i8).to_str().unwrap(), &mut ct);
        cs = u8fold(cs);
        ct = u8fold(ct);
        
        if cs != ct {
            return cs - ct;
        }
        if ls == 0 {
            return 0;
        }
        if ls < 0 {
            ls = -ls;
        }
        if lt < 0 {
            lt = -ls;
        }
        s = s.offset(ls as isize);
        t = t.offset(lt as isize);
    }
    0
}