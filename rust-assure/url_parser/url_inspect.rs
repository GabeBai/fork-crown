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

fn url_parse(url: &str) -> UrlData {
    // Dummy implementation for demonstration purposes
    UrlData {
        whole_url: url.to_string(),
        protocol: Some("http".to_string()),
        userinfo: None,
        host: Some("example.com".to_string()),
        port: Some("80".to_string()),
        path: Some("/path".to_string()),
        query: Some(UrlKeyValue {
            key: "key".to_string(),
            value: "value".to_string(),
        }),
        fragment: Some("fragment".to_string()),
    }
}

fn url_data_inspect(data: &UrlData) {
    println!("{:?}", data);
}

fn url_inspect(url: &str) {
    let data = url_parse(url);
    url_data_inspect(&data);
}

#[derive(Debug)]
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

fn main() {
    let url = "http://example.com/path?key=value#fragment";
    url_inspect(url);
}
