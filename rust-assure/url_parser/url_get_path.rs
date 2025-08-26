#[derive(Debug)]
struct UrlKeyValue {
    key: String,
    value: String,
}

#[derive(Debug)]
struct UrlData {
    whole_url: String,
    protocol: Option<String>,
    userinfo: Option<String>,
    host: Option<String>,
    port: Option<String>,
    path: Option<String>,
    query: Option<UrlKeyValue>,
    fragment: Option<String>,
}

impl UrlData {
    fn new(url: &str) -> Self {
        // Placeholder for actual URL parsing logic
        UrlData {
            whole_url: url.to_string(),
            protocol: None,
            userinfo: None,
            host: None,
            port: None,
            path: None,
            query: None,
            fragment: None,
        }
    }
}

enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x80, // Changed to avoid duplicate value
    Userinfo = 0x100,
    IPv6Char = 0x200,
}

fn url_parse(url: &str) -> UrlData {
    UrlData::new(url)
}

fn url_get_path(url: &str) -> Option<String> {
    let data = url_parse(url);
    data.path.clone()
}

fn main() {
    let url = "http://example.com/path?query#fragment";
    if let Some(path) = url_get_path(url) {
        println!("Path: {}", path);
    } else {
        println!("No path found.");
    }
}
