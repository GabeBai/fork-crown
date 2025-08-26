use std::io::{self, Write};

fn vprintf(fmt: &str, args: &[&dyn std::fmt::Display]) -> io::Result<()> {
    let stdout = io::stdout();
    let mut handle = stdout.lock();

    // Create a formatted string using the provided format and arguments
    let formatted_string = format(fmt, args);

    // Write the formatted string to stdout
    handle.write_all(formatted_string.as_bytes())
}

fn format(fmt: &str, args: &[&dyn std::fmt::Display]) -> String {
    let mut formatted_string = String::new();
    let mut arg_iter = args.iter();

    // Simple parser to replace '{}' with arguments
    let mut chars = fmt.chars().peekable();
    while let Some(c) = chars.next() {
        if c == '{' && chars.peek() == Some(&'}') {
            chars.next(); // consume '}'
            if let Some(arg) = arg_iter.next() {
                formatted_string.push_str(&format!("{}", arg));
            } else {
                formatted_string.push_str("{}");
            }
        } else {
            formatted_string.push(c);
        }
    }

    formatted_string
}

fn main() {
    let args: [&dyn std::fmt::Display; 2] = [&"Hello", &"World"];
    vprintf("This is a test: {} {}", &args).unwrap();
}
