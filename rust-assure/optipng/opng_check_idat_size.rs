use std::cell::RefCell;
use std::rc::Rc;
use std::error::Error;
use std::fmt;

const IDAT_SIZE_MAX: u32 = 0x7fffffff;

#[derive(Debug)]
struct IdatSizeError;

impl fmt::Display for IdatSizeError {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "IDAT sizes larger than the maximum chunk size are currently unsupported")
    }
}

impl Error for IdatSizeError {}

struct ExceptionContext {
    caught: bool,
    error_message: Option<String>,
}

impl ExceptionContext {
    fn new() -> Self {
        ExceptionContext {
            caught: false,
            error_message: None,
        }
    }
}

fn opng_check_idat_size(size: u32, context: &Rc<RefCell<ExceptionContext>>) -> Result<(), Box<dyn Error>> {
    if size > IDAT_SIZE_MAX {
        let mut ctx = context.borrow_mut();
        ctx.caught = true;
        ctx.error_message = Some("IDAT sizes larger than the maximum chunk size are currently unsupported".to_string());
        return Err(Box::new(IdatSizeError));
    }
    Ok(())
}

fn main() {
    let context = Rc::new(RefCell::new(ExceptionContext::new()));

    match opng_check_idat_size(0x80000000, &context) {
        Ok(_) => println!("IDAT size is within the limit."),
        Err(e) => {
            let ctx = context.borrow();
            if ctx.caught {
                println!("Error: {}", e);
            }
        }
    }
}
