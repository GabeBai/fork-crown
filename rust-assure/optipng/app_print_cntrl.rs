use std::io::{self, Write};

static mut CON_FILE: Option<Box<dyn Write>> = None;
static mut LOG_FILE: Option<Box<dyn Write>> = None;
static mut START_OF_LINE: bool = true;

fn app_print_cntrl(cntrl_code: i32) {
    let (con_str, log_str): (&str, &str);
    let mut i: i32;

    unsafe {
        if cntrl_code == '\r' as i32 {
            con_str = "\r";
            log_str = "\n";
            START_OF_LINE = true;
        } else if cntrl_code == '\u{000B}' as i32 { // Vertical tab
            if !START_OF_LINE {
                con_str = "\n";
                log_str = "\n";
                START_OF_LINE = true;
            } else {
                con_str = "";
                log_str = "";
            }
        } else if cntrl_code < 0 && cntrl_code > -80 && START_OF_LINE {
            if let Some(ref mut con_file) = CON_FILE {
                for _ in cntrl_code..0 {
                    let _ = con_file.write(b" ");
                }
            }
            con_str = "\r";
            log_str = "";
        } else {
            con_str = "<?>";
            log_str = "<?>";
        }

        if let Some(ref mut con_file) = CON_FILE {
            let _ = con_file.write(con_str.as_bytes());
        }
        if let Some(ref mut log_file) = LOG_FILE {
            let _ = log_file.write(log_str.as_bytes());
        }
    }
}

fn main() {
    // Example usage
    unsafe {
        CON_FILE = Some(Box::new(io::stdout()));
        LOG_FILE = Some(Box::new(io::stdout()));
    }

    app_print_cntrl('\r' as i32);
    app_print_cntrl('\u{000B}' as i32);
    app_print_cntrl(-10);
    app_print_cntrl(100);
}
