use std::io::{Write, stdout, stderr};

fn app_print_cntrl(cntrl_code: i32) {
    let (con_str, log_str);
    let mut start_of_line = unsafe { start_of_line };

    if cntrl_code == '\r' as i32 {
        con_str = "\r";
        log_str = "\n";
        start_of_line = 1;
    } else if cntrl_code == '\v' as i32 {
        if start_of_line == 0 {
            con_str = "\n";
            log_str = "\n";
            start_of_line = 1;
        } else {
            con_str = "";
            log_str = "";
        }
    } else if cntrl_code < 0 && cntrl_code > -80 && start_of_line != 0 {
        if !unsafe { con_file.is_null() } {
            for _ in 0..(-cntrl_code) {
                unsafe { write!(con_file.as_mut().unwrap(), " ").unwrap() };
            }
        }
        con_str = "\r";
        log_str = "";
    } else {
        con_str = "<?>";
        log_str = "<?>";
    }

    if !unsafe { con_file.is_null() } {
        unsafe { write!(con_file.as_mut().unwrap(), "{}", con_str).unwrap() };
    }
    if !unsafe { log_file.is_null() } {
        unsafe { write!(log_file.as_mut().unwrap(), "{}", log_str).unwrap() };
    }

    unsafe { start_of_line = start_of_line };
}