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
    fn parse(url: &str) -> Option<Self> {
        // Implement URL parsing logic here
        // For demonstration, we'll return a dummy UrlData
        Some(UrlData {
            whole_url: url.to_string(),
            protocol: Some("http".to_string()),
            userinfo: None,
            host: Some("example.com".to_string()),
            port: Some("80".to_string()),
            path: Some("/path".to_string()),
            query: None,
            fragment: None,
        })
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

fn url_get_port(url: &str) -> Option<String> {
    if let Some(data) = UrlData::parse(url) {
        data.port.clone()
    } else {
        None
    }
}

fn main() {
    let url = "http://example.com:80/path";
    if let Some(port) = url_get_port(url) {
        println!("Port: {}", port);
    } else {
        println!("Port not found");
    }
}
