use std::fs::File;
use std::io::{self, Write};
use std::sync::{Arc, Mutex};

struct AppLogger {
    con_file: Option<Arc<Mutex<File>>>,
    log_file: Option<Arc<Mutex<File>>>,
    start_of_line: bool,
}

impl AppLogger {
    fn new(con_file: Option<File>, log_file: Option<File>) -> Self {
        AppLogger {
            con_file: con_file.map(|f| Arc::new(Mutex::new(f))),
            log_file: log_file.map(|f| Arc::new(Mutex::new(f))),
            start_of_line: false,
        }
    }

    fn app_printf(&mut self, fmt: &str, args: std::fmt::Arguments) {
        if fmt.is_empty() {
            return;
        }

        self.start_of_line = fmt.ends_with('\n');

        if let Some(ref con_file) = self.con_file {
            let mut con_file = con_file.lock().unwrap();
            write!(con_file, "{}", args).unwrap();
        }

        if let Some(ref log_file) = self.log_file {
            let mut log_file = log_file.lock().unwrap();
            write!(log_file, "{}", args).unwrap();
        }
    }
}

fn main() -> io::Result<()> {
    let con_file = File::create("console_output.txt")?;
    let log_file = File::create("log_output.txt")?;

    let mut logger = AppLogger::new(Some(con_file), Some(log_file));

    logger.app_printf("Hello, {}!\n", format_args!("world"));
    logger.app_printf("This is a number: {}\n", format_args!("{}", 42));

    Ok(())
}
