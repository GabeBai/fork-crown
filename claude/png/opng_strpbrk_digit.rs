use std::ffi::c_char;
use libc::{c_int, c_uint, c_ulong, c_void};

#[repr(C)]
pub struct __BindgenUnionField<T>(::std::marker::PhantomData<T>);

#[repr(C)]
#[derive(Copy, Clone)]
pub union pthread_attr_t {
    pub __size: [c_char; 56usize],
    pub __align: c_long,
}

type opng_bitset_t = c_uint;

#[no_mangle]
pub unsafe extern "C" fn opng_strpbrk_digit(mut str: *const c_char) -> *mut c_char {
    loop {
        if *str == 0 {
            return std::ptr::null_mut();
        }
        if (*libc::__ctype_b_loc().offset(*str as c_int as isize) as *const u16)
            .read()
            & libc::_ISdigit as u16
            != 0
        {
            return str as *mut c_char;
        }
        str = str.offset(1);
    }
}