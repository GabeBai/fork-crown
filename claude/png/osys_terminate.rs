use std::process;
use std::io::{self, Write};

pub fn osys_terminate() {
    let msg = "The execution of this program has been terminated abnormally.\n";
    io::stderr().write_all(msg.as_bytes()).unwrap();
    process::exit(70);
}