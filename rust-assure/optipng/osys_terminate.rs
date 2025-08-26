use std::io::{self, Write};
use std::process;

fn osys_terminate() {
    let msg = "The execution of this program has been terminated abnormally.\n";
    let _ = io::stderr().write_all(msg.as_bytes());
    process::exit(70);
}
