use std::ffi::c_long;

pub fn opng_print_fsize_difference(init_size: u64, final_size: u64, show_ratio: i32) {
    let (difference, sign) = if init_size <= final_size {
        (final_size - init_size, 0)
    } else {
        (init_size - final_size, 1)
    };

    if difference == 0 {
        usr_printf(c"no change");
        return;
    }

    if difference == 1 {
        usr_printf(c"1 byte");
    } else {
        usr_printf(c"%lu bytes", difference);
    }

    if show_ratio != 0 && init_size > 0 {
        usr_printf(c" = ");
        opng_print_fsize_ratio(difference, init_size);
    }

    usr_printf(if sign == 0 { c" increase" } else { c" decrease" });
}

extern "C" {
    fn usr_printf(fmt: *const i8, ...);
    fn opng_print_fsize_ratio(difference: u64, init_size: u64);
}