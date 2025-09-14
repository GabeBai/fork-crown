use std::ffi::CStr;

fn process_files(argc: i32, argv: *const *const i8) -> i32 {
    let mut result: i32;
    let mut ui = opng_ui {
        printf_fn: app_printf,
        print_cntrl_fn: app_print_cntrl,
        progress_fn: app_progress,
        panic_fn: panic,
    };

    if unsafe { opng_initialize(&options, &ui) } != 0 {
        panic("Can't initialize optimization engine");
    }

    result = 0;
    for i in 1..argc {
        let arg = unsafe { CStr::from_ptr(*argv.offset(i as isize)) };
        if arg.to_bytes().is_empty() {
            continue;
        }
        if unsafe { opng_optimize(arg.as_ptr()) } != 0 {
            result = 1;
        }
    }

    if unsafe { opng_finalize() } != 0 {
        panic("Can't finalize optimization engine");
    }

    result
}