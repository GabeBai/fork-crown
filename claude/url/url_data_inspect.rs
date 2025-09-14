use std::ffi::CStr;

#[repr(C)]
pub struct UrlKeyValue {
    key: *const libc::c_char,
    value: *const libc::c_char,
}

#[repr(C)]
pub struct UrlData {
    whole_url: *mut libc::c_char,
    protocol: *const libc::c_char,
    userinfo: *const libc::c_char,
    host: *const libc::c_char,
    port: *const libc::c_char,
    path: *const libc::c_char,
    query: *const UrlKeyValue,
    fragment: *const libc::c_char,
}

#[no_mangle]
pub unsafe extern "C" fn url_data_inspect(data: *const UrlData) {
    println!("#url =>");
    
    macro_rules! print_field {
        ($field:ident) => {
            if !(*data).$field.is_null() {
                println!("    .{}: \"{}\"", stringify!($field), CStr::from_ptr((*data).$field).to_string_lossy());
            } else {
                println!("    .{}: (NULL)", stringify!($field));
            }
        };
    }

    print_field!(protocol);
    print_field!(host);
    print_field!(userinfo);
    print_field!(host);
    print_field!(port);
    print_field!(path);

    if !(*data).query.is_null() {
        let mut nr = 0;
        while !(*(*data).query.offset(nr)).key.is_null() {
            print!("    .query[{}]: \"{}\" -> ", nr, CStr::from_ptr((*(*data).query.offset(nr)).key).to_string_lossy());
            if !(*(*data).query.offset(nr)).value.is_null() {
                println!("\"{}\"", CStr::from_ptr((*(*data).query.offset(nr)).value).to_string_lossy());
            } else {
                println!("(NULL)");
            }
            nr += 1;
        }
    }

    print_field!(fragment);
}