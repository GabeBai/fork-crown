use std::fmt;
use std::process;

fn error(fmt: &str, args: fmt::Arguments) {
    eprint!("** Error: ");
    eprint!("{}", fmt::format(args));
    eprintln!();
    process::exit(1);
}

fn main() {
    // Example usage
    error("This is an error with code: {}", format_args!("{}", 404));
}
