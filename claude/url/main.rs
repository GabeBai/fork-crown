use std::ffi::CStr;
use std::ptr;

#[derive(Debug)]
struct UrlKeyValue;

#[derive(Debug)]
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

extern "C" {
    fn url_parse(url: *const libc::c_char) -> *mut UrlData;
    fn url_get_userinfo(url: *const libc::c_char) -> *mut libc::c_char;
    fn url_get_hostname(url: *const libc::c_char) -> *mut libc::c_char;
    fn url_get_path(url: *const libc::c_char) -> *mut libc::c_char;
    fn url_get_query_value(url: *const UrlData, key: *const libc::c_char) -> *const libc::c_char;
    fn url_get_fragment(url: *const libc::c_char) -> *mut libc::c_char;
    fn url_get_port(url: *const libc::c_char) -> *mut libc::c_char;
    fn url_free(data: *mut UrlData);
    fn url_is_protocol(str: *const libc::c_char) -> bool;
    fn url_data_inspect(data: *const UrlData);
    fn url_get_protocol(url: *const libc::c_char) -> *mut libc::c_char;
}

fn main() {
    let gh_url = CStr::from_bytes_with_nul(b"git://git@github.com:jwerle/url.h.git\0").unwrap();
    let url = CStr::from_bytes_with_nul(b"http://user:pass@subdomain.host.com:8080/p/%C3%A5/t/h?qu%C3%ABry=strin%C4%9F&foo=bar=yuk&key%23%26%3D=%25&lol#h%C3%a6sh\0").unwrap();

    unsafe {
        let parsed = url_parse(url.as_ptr());
        let gh_parsed = url_parse(gh_url.as_ptr());

        assert!(!parsed.is_null());
        assert!(!gh_parsed.is_null());

        url_data_inspect(parsed);
        url_data_inspect(gh_parsed);

        assert!(!(*parsed).whole_url.is_null());
        assert!(!(*parsed).protocol.is_null());
        assert!(!(*parsed).userinfo.is_null());
        assert!(!(*parsed).host.is_null());
        assert!(!(*parsed).port.is_null());
        assert!(!(*parsed).path.is_null());
        assert!(!(*parsed).query.is_null());
        assert!(!(*parsed).fragment.is_null());

        assert!(!(*gh_parsed).whole_url.is_null());
        assert!(!(*gh_parsed).protocol.is_null());
        assert!(!(*gh_parsed).userinfo.is_null());
        assert!(!(*gh_parsed).host.is_null());
        assert!(!(*gh_parsed).path.is_null());

        assert!(url_is_protocol(b"http\0".as_ptr() as *const libc::c_char));
        assert!(url_is_protocol(b"https\0".as_ptr() as *const libc::c_char));
        assert!(url_is_protocol(b"git\0".as_ptr() as *const libc::c_char));
        assert!(url_is_protocol(b"ssh\0".as_ptr() as *const libc::c_char));
        assert!(url_is_protocol(b"sftp\0".as_ptr() as *const libc::c_char));
        assert!(url_is_protocol(b"ftp\0".as_ptr() as *const libc::c_char));
        assert!(url_is_protocol(b"javascript\0".as_ptr() as *const libc::c_char));

        let s = url_get_protocol(url.as_ptr());
        assert!(!s.is_null());
        assert_eq!(CStr::from_ptr(s), CStr::from_bytes_with_nul(b"http\0").unwrap());
        libc::free(s as *mut libc::c_void);

        let s = url_get_userinfo(url.as_ptr());
        assert!(!s.is_null());
        assert_eq!(CStr::from_ptr(s), CStr::from_bytes_with_nul(b"user:pass\0").unwrap());
        libc::free(s as *mut libc::c_void);

        let s = url_get_hostname(url.as_ptr());
        assert!(!s.is_null());
        assert_eq!(CStr::from_ptr(s), CStr::from_bytes_with_nul(b"subdomain.host.com\0").unwrap());
        libc::free(s as *mut libc::c_void);

        let s = url_get_path(url.as_ptr());
        assert!(!s.is_null());
        assert_eq!(CStr::from_ptr(s), CStr::from_bytes_with_nul(b"/p/\xc3\xa5/t/h\0").unwrap());
        libc::free(s as *mut libc::c_void);

        assert_eq!(CStr::from_ptr(url_get_query_value(parsed, b"qu\xc3\xabry\0".as_ptr() as *const libc::c_char)), CStr::from_bytes_with_nul(b"strin\xc4\x9f\0").unwrap());
        assert_eq!(CStr::from_ptr(url_get_query_value(parsed, b"foo\0".as_ptr() as *const libc::c_char)), CStr::from_bytes_with_nul(b"bar=yuk\0").unwrap());
        assert_eq!(CStr::from_ptr(url_get_query_value(parsed, b"key#&=\0".as_ptr() as *const libc::c_char)), CStr::from_bytes_with_nul(b"%\0").unwrap());
        assert_eq!(CStr::from_ptr(url_get_query_value(parsed, b"lol\0".as_ptr() as *const libc::c_char)), CStr::from_bytes_with_nul(b"\0").unwrap());

        let s = url_get_fragment(url.as_ptr());
        assert!(!s.is_null());
        assert_eq!(CStr::from_ptr(s), CStr::from_bytes_with_nul(b"h\xc3\xa6sh\0").unwrap());
        libc::free(s as *mut libc::c_void);

        let s = url_get_port(url.as_ptr());
        assert!(!s.is_null());
        assert_eq!(CStr::from_ptr(s), CStr::from_bytes_with_nul(b"8080\0").unwrap());
        libc::free(s as *mut libc::c_void);

        let s = url_get_protocol(gh_url.as_ptr());
        assert!(!s.is_null());
        assert_eq!(CStr::from_ptr(s), CStr::from_bytes_with_nul(b"git\0").unwrap());
        libc::free(s as *mut libc::c_void);

        let s = url_get_hostname(gh_url.as_ptr());
        assert!(!s.is_null());
        assert_eq!(CStr::from_ptr(s), CStr::from_bytes_with_nul(b"github.com\0").unwrap());
        libc::free(s as *mut libc::c_void);

        let s = url_get_userinfo(gh_url.as_ptr());
        assert!(!s.is_null());
        assert_eq!(CStr::from_ptr(s), CStr::from_bytes_with_nul(b"git\0").unwrap());
        libc::free(s as *mut libc::c_void);

        let s = url_get_path(gh_url.as_ptr());
        assert!(!s.is_null());
        assert_eq!(CStr::from_ptr(s), CStr::from_bytes_with_nul(b"jwerle/url.h.git\0").unwrap());
        libc::free(s as *mut libc::c_void);

        url_free(parsed);
        url_free(gh_parsed);
    }
}