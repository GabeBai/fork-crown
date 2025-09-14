use ::libc;
extern "C" {
    fn __ctype_b_loc() -> *mut *const libc::c_ushort;
    fn __errno_location() -> *mut libc::c_int;
}
pub type size_t = libc::c_ulong;
pub type opng_bitset_t = libc::c_uint;
pub type C2RustUnnamed = libc::c_uint;
pub const OPNG_BITSET_ELT_MAX: C2RustUnnamed = 31;
pub const OPNG_BITSET_ELT_MIN: C2RustUnnamed = 0;
pub const _ISspace: C2RustUnnamed_0 = 8192;
pub type C2RustUnnamed_0 = libc::c_uint;
pub const _ISalnum: C2RustUnnamed_0 = 8;
pub const _ISpunct: C2RustUnnamed_0 = 4;
pub const _IScntrl: C2RustUnnamed_0 = 2;
pub const _ISblank: C2RustUnnamed_0 = 1;
pub const _ISgraph: C2RustUnnamed_0 = 32768;
pub const _ISprint: C2RustUnnamed_0 = 16384;
pub const _ISxdigit: C2RustUnnamed_0 = 4096;
pub const _ISdigit: C2RustUnnamed_0 = 2048;
pub const _ISalpha: C2RustUnnamed_0 = 1024;
pub const _ISlower: C2RustUnnamed_0 = 512;
pub const _ISupper: C2RustUnnamed_0 = 256;
#[no_mangle]
pub unsafe extern "C" fn opng_bitset_count(mut set: opng_bitset_t) -> libc::c_uint {
    let mut result: libc::c_uint = 0;
    result = 0 as libc::c_int as libc::c_uint;
    while set != 0 as libc::c_int as opng_bitset_t {
        set &= set.wrapping_sub(1 as libc::c_int as opng_bitset_t);
        result = result.wrapping_add(1);
        result;
    }
    return result;
}
#[no_mangle]
pub unsafe extern "C" fn opng_bitset_find_first(mut set: opng_bitset_t) -> libc::c_int {
    let mut i: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i <= OPNG_BITSET_ELT_MAX as libc::c_int {
        if set & (1 as libc::c_uint) << i != 0 as libc::c_int as libc::c_uint {
            return i;
        }
        i += 1;
        i;
    }
    return -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn opng_bitset_find_next(
    mut set: opng_bitset_t,
    mut elt: libc::c_int,
) -> libc::c_int {
    let mut i: libc::c_int = 0;
    i = (if elt > -(1 as libc::c_int) { elt } else { -(1 as libc::c_int) })
        + 1 as libc::c_int;
    while i <= OPNG_BITSET_ELT_MAX as libc::c_int {
        if set & (1 as libc::c_uint) << i != 0 as libc::c_int as libc::c_uint {
            return i;
        }
        i += 1;
        i;
    }
    return -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn opng_bitset_find_last(mut set: opng_bitset_t) -> libc::c_int {
    let mut i: libc::c_int = 0;
    i = OPNG_BITSET_ELT_MAX as libc::c_int;
    while i >= 0 as libc::c_int {
        if set & (1 as libc::c_uint) << i != 0 as libc::c_int as libc::c_uint {
            return i;
        }
        i -= 1;
        i;
    }
    return -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn opng_bitset_find_prev(
    mut set: opng_bitset_t,
    mut elt: libc::c_int,
) -> libc::c_int {
    let mut i: libc::c_int = 0;
    i = (if elt < OPNG_BITSET_ELT_MAX as libc::c_int + 1 as libc::c_int {
        elt
    } else {
        OPNG_BITSET_ELT_MAX as libc::c_int + 1 as libc::c_int
    }) - 1 as libc::c_int;
    while i >= 0 as libc::c_int {
        if set & (1 as libc::c_uint) << i != 0 as libc::c_int as libc::c_uint {
            return i;
        }
        i -= 1;
        i;
    }
    return -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn opng_rangeset_string_to_bitset(
    mut str: *const libc::c_char,
    mut end_idx: *mut size_t,
) -> opng_bitset_t {
    let mut result: opng_bitset_t = 0;
    let mut ptr = 0 as *const libc::c_char;
    let mut state: libc::c_int = 0;
    let mut num: libc::c_int = 0;
    let mut num1: libc::c_int = 0;
    let mut num2: libc::c_int = 0;
    let mut out_of_range: libc::c_int = 0;
    result = 0 as libc::c_int as opng_bitset_t;
    ptr = str;
    state = 0 as libc::c_int;
    out_of_range = 0 as libc::c_int;
    num2 = -(1 as libc::c_int);
    num1 = num2;
    let mut current_block_35: u64;
    loop {
        while *(*__ctype_b_loc()).offset(*ptr as libc::c_int as isize) as libc::c_int
            & _ISspace as libc::c_int as libc::c_ushort as libc::c_int != 0
        {
            ptr = ptr.offset(1);
            ptr;
        }
        match state {
            0 => {
                current_block_35 = 16633745550097629786;
            }
            2 => {
                current_block_35 = 16633745550097629786;
            }
            1 => {
                if *ptr as libc::c_int == '-' as i32 {
                    ptr = ptr.offset(1);
                    ptr;
                    num2 = OPNG_BITSET_ELT_MAX as libc::c_int;
                    state += 1;
                    state;
                    continue;
                } else {
                    current_block_35 = 4068382217303356765;
                }
            }
            _ => {
                current_block_35 = 4068382217303356765;
            }
        }
        match current_block_35 {
            16633745550097629786 => {
                if *ptr as libc::c_int >= '0' as i32 && *ptr as libc::c_int <= '9' as i32
                {
                    num = 0 as libc::c_int;
                    loop {
                        num = 10 as libc::c_int * num
                            + (*ptr as libc::c_int - '0' as i32);
                        if num > OPNG_BITSET_ELT_MAX as libc::c_int {
                            out_of_range = 1 as libc::c_int;
                            num = OPNG_BITSET_ELT_MAX as libc::c_int;
                        }
                        ptr = ptr.offset(1);
                        ptr;
                        if !(*ptr as libc::c_int >= '0' as i32
                            && *ptr as libc::c_int <= '9' as i32)
                        {
                            break;
                        }
                    }
                    if state == 0 as libc::c_int {
                        num1 = num;
                    }
                    num2 = num;
                    state += 1;
                    state;
                    continue;
                }
            }
            _ => {}
        }
        if state > 0 as libc::c_int {
            state = 0 as libc::c_int;
            if num2 > OPNG_BITSET_ELT_MAX as libc::c_int {
                out_of_range = 1 as libc::c_int;
                num2 = OPNG_BITSET_ELT_MAX as libc::c_int;
            }
            if num1 <= num2 {
                result
                    |= if num1 <= num2 {
                        ((1 as libc::c_uint) << num2 - num1 << 1 as libc::c_int)
                            .wrapping_sub(1 as libc::c_int as libc::c_uint) << num1
                    } else {
                        0 as libc::c_uint
                    };
            } else {
                out_of_range = 1 as libc::c_int;
            }
        }
        if !(*ptr as libc::c_int == ',' as i32 || *ptr as libc::c_int == ';' as i32) {
            break;
        }
        ptr = ptr.offset(1);
        ptr;
    }
    if num1 == -(1 as libc::c_int) {
        if !end_idx.is_null() {
            *end_idx = 0 as libc::c_int as size_t;
        }else { std::intrinsics::assume((end_idx).addr() == 0); }
        return 0 as libc::c_int as opng_bitset_t;
    }
    if !end_idx.is_null() {
        *end_idx = ptr.offset_from(str) as libc::c_long as size_t;
    }else { std::intrinsics::assume((end_idx).addr() == 0); }
    if out_of_range != 0 {
        *__errno_location() = 34 as libc::c_int;
    }
    return result;
}
