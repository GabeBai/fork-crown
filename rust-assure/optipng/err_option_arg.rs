fn err_option_arg(opt: &str, opt_arg: Option<&str>) {
    match opt_arg {
        Some(arg) if arg.trim().is_empty() => {
            eprintln!("Missing argument for option {}", opt);
        }
        Some(arg) => {
            eprintln!("Invalid argument for option {}: {}", opt, arg);
        }
        None => {
            eprintln!("Missing argument for option {}", opt);
        }
    }
}

fn main() {
    // Example usage
    err_option_arg("--example", Some("")); // Missing argument
    err_option_arg("--example", Some("value")); // Invalid argument
    err_option_arg("--example", None); // Missing argument
}
