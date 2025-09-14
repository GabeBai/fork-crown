use std::ptr;

fn decode_percent(s: *mut u8) -> *mut u8 {
    let mut in_ptr = s;
    let mut out_ptr = s;

    unsafe {
        while *in_ptr != 0 {
            if *in_ptr == b'%' {
                in_ptr = in_ptr.add(1);
                let high = unhex(*in_ptr);
                if high < 0 || *in_ptr == 0 {
                    return ptr::null_mut();
                }
                in_ptr = in_ptr.add(1);
                let low = unhex(*in_ptr);
                if low < 0 || *in_ptr == 0 {
                    return ptr::null_mut();
                }
                *out_ptr = (high as u8 * 16 + low as u8) as u8;
                out_ptr = out_ptr.add(1);
                in_ptr = in_ptr.add(1);
            } else {
                *out_ptr = *in_ptr;
                out_ptr = out_ptr.add(1);
                in_ptr = in_ptr.add(1);
            }
        }
        *out_ptr = 0;
    }
    s
}