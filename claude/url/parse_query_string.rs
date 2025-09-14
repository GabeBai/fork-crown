use std::ffi::c_void;
use std::ptr;

#[repr(C)]
pub struct UrlKeyValue {
    key: *const libc::c_char,
    value: *const libc::c_char,
}

#[no_mangle]
pub unsafe extern "C" fn parse_query_string(begin: *mut libc::c_char, end: *mut libc::c_char) -> *mut UrlKeyValue {
    let mut elements = 1;
    let mut p = begin;
    while p != end {
        if *p == b'&' as libc::c_char || *p == b';' as libc::c_char {
            elements += 1;
        }
        p = p.add(1);
    }

    let kv = libc::calloc(elements + 1, std::mem::size_of::<UrlKeyValue>()) as *mut UrlKeyValue;
    if kv.is_null() {
        return ptr::null_mut();
    }

    let mut p = begin;
    let mut element = 0;
    while element <= elements && p < end {
        let key = p;
        let kv_end = scan_part(p, Category::Query as u32, b'&' as libc::c_char, b';' as libc::c_char);
        if kv_end.is_null() {
            libc::fprintf(libc::stderr, b"ERROR %s Line %u! p=\xC2\xAB%s\xC2\xBB\n\0" as *const u8 as *const libc::c_char, b"url.c\0" as *const u8 as *const libc::c_char, 153, p);
            goto!(error);
        }
        *kv_end = b'\0' as libc::c_char;
        let key_end = scan_part(p, Category::Query as u32, b'=' as libc::c_char, b'\0' as libc::c_char);
        let has_value = *key_end == b'=' as libc::c_char;
        *key_end = b'\0' as libc::c_char;
        (*kv.add(element)).key = decode_percent(key);
        if has_value {
            let value = key_end.add(1);
            (*kv.add(element)).value = decode_percent(value);
        } else {
            (*kv.add(element)).value = key_end;
        }
        p = kv_end.add(1);
        element += 1;
    }
    return kv;

    error: {
        libc::free(kv as *mut c_void);
        return ptr::null_mut();
    }
}