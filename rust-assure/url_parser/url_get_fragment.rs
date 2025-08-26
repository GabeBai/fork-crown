use std::ffi::{CStr, CString};
use std::ptr;

#[derive(Debug)]
struct UrlKeyValue {
    key: String,
    value: String,
}

#[derive(Debug)]
struct UrlData {
    whole_url: String,
    protocol: String,
    userinfo: Option<String>,
    host: String,
    port: Option<String>,
    path: String,
    query: Option<Vec<UrlKeyValue>>,
    fragment: Option<String>,
}

impl UrlData {
    fn new(whole_url: &str) -> Self {
        // Dummy implementation for demonstration purposes
        UrlData {
            whole_url: whole_url.to_string(),
            protocol: "http".to_string(),
            userinfo: None,
            host: "example.com".to_string(),
            port: None,
            path: "/".to_string(),
            query: None,
            fragment: Some("fragment".to_string()),
        }
    }
}

fn url_parse(url: &CStr) -> UrlData {
    // Convert CStr to Rust &str
    let url_str = url.to_str().expect("Invalid UTF-8 sequence");
    UrlData::new(url_str)
}

fn url_get_fragment(url: &CStr) -> Option<String> {
    let data = url_parse(url);
    data.fragment.clone()
}

fn main() {
    // Example usage
    let url = CString::new("http://example.com/path#fragment").expect("CString::new failed");
    if let Some(fragment) = url_get_fragment(&url) {
        println!("Fragment: {}", fragment);
    } else {
        println!("No fragment found.");
    }
}
