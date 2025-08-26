use std::fs::OpenOptions;
use std::io::{self, Write};
use std::path::Path;

enum Operation {
    Run,
    ShowHelp,
    ShowVersion,
}

struct OpngOptions {
    backup: bool,
    clobber: bool,
    debug: bool,
    fix: bool,
    force: bool,
    full: bool,
    preserve: bool,
    quiet: bool,
    simulate: bool,
    verbose: bool,
    out_name: Option<String>,
    dir_name: Option<String>,
    log_name: Option<String>,
    interlace: bool,
    nb: i32,
    nc: i32,
    np: i32,
    nz: i32,
    optim_level: i32,
    compr_level_set: u32,
    mem_level_set: u32,
    strategy_set: u32,
    filter_set: u32,
    window_bits: i32,
    snip: bool,
    strip_all: bool,
}

struct App {
    operation: Operation,
    options: OpngOptions,
    con_file: Option<Box<dyn Write>>,
    log_file: Option<Box<dyn Write>>,
    start_of_line: bool,
}

impl App {
    fn new(operation: Operation, options: OpngOptions) -> Self {
        Self {
            operation,
            options,
            con_file: None,
            log_file: None,
            start_of_line: true,
        }
    }

    fn app_init(&mut self) {
        self.start_of_line = true;
        self.con_file = match self.operation {
            Operation::ShowHelp | Operation::ShowVersion => Some(Box::new(io::stdout())),
            _ if !self.options.quiet => Some(Box::new(io::stderr())),
            _ => None,
        };

        if let Some(log_name) = &self.options.log_name {
            if let Ok(file) = OpenOptions::new().append(true).open(Path::new(log_name)) {
                self.log_file = Some(Box::new(file));
                if let Some(log_file) = &mut self.log_file {
                    let _ = writeln!(log_file, "** Warning: {}\n\n", "The option -log is deprecated; use shell redirection");
                }
            } else {
                eprintln!("Can't open log file: {}", log_name);
            }
        }
    }
}

fn main() {
    let options = OpngOptions {
        backup: false,
        clobber: false,
        debug: false,
        fix: false,
        force: false,
        full: false,
        preserve: false,
        quiet: false,
        simulate: false,
        verbose: false,
        out_name: None,
        dir_name: None,
        log_name: Some("log.txt".to_string()),
        interlace: false,
        nb: 0,
        nc: 0,
        np: 0,
        nz: 0,
        optim_level: 0,
        compr_level_set: 0,
        mem_level_set: 0,
        strategy_set: 0,
        filter_set: 0,
        window_bits: 0,
        snip: false,
        strip_all: false,
    };

    let mut app = App::new(Operation::Run, options);
    app.app_init();
}
