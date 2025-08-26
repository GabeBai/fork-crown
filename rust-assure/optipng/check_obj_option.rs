fn check_obj_option(opt: &str, opt_arg: &str) {
    if opt_arg == "all" {
        return;
    }

    let mut i = 0;
    for c in opt_arg.chars() {
        if !((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')) {
            break;
        }
        i += 1;
    }

    if i == 4 && opt_arg.len() == 4 {
        eprintln!("Manipulation of individual chunks is not implemented");
    } else {
        eprintln!("Invalid option argument: {} {}", opt, opt_arg);
    }
}
