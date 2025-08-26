use std::fmt::Arguments;
use std::sync::Once;

// Define a static mutable variable for the function pointers
static mut USR_PRINTF: Option<fn(Arguments)> = None;
static mut USR_PRINT_CNTRL: Option<fn(i32)> = None;

// Initialize the function pointers once
static INIT: Once = Once::new();

fn set_usr_printf(f: fn(Arguments)) {
    unsafe {
        USR_PRINTF = Some(f);
    }
}

fn set_usr_print_cntrl(f: fn(i32)) {
    unsafe {
        USR_PRINT_CNTRL = Some(f);
    }
}

fn opng_print_warning(msg: &str) {
    // Ensure the function pointers are initialized
    INIT.call_once(|| {
        // Set default implementations or leave them as None
        set_usr_printf(|args| println!("{}", args));
        set_usr_print_cntrl(|cntrl_code| println!("Control code: {}", cntrl_code));
    });

    unsafe {
        if let Some(print_cntrl) = USR_PRINT_CNTRL {
            print_cntrl(0x0B); // '\v' is vertical tab, which is 0x0B in ASCII
        }
        if let Some(print_fn) = USR_PRINTF {
            print_fn(format_args!("Warning: {}\n", msg));
        }
    }
}

fn main() {
    // Example usage
    opng_print_warning("This is a warning message.");
}
