use std::fmt;

struct UrlKeyValue<'a> {
    key: &'a str,
    value: Option<&'a str>,
}

struct UrlData<'a> {
    whole_url: &'a str,
    protocol: Option<&'a str>,
    userinfo: Option<&'a str>,
    host: Option<&'a str>,
    port: Option<&'a str>,
    path: Option<&'a str>,
    query: Option<&'a [UrlKeyValue<'a>]>,
    fragment: Option<&'a str>,
}

impl<'a> UrlData<'a> {
    fn inspect(&self) {
        println!("#url =>");
        println!("    .protocol: {:?}", self.protocol.unwrap_or("(NULL)"));
        println!("    .host: {:?}", self.host.unwrap_or("(NULL)"));
        println!("    .userinfo: {:?}", self.userinfo.unwrap_or("(NULL)"));
        println!("    .port: {:?}", self.port.unwrap_or("(NULL)"));
        println!("    .path: {:?}", self.path.unwrap_or("(NULL)"));

        if let Some(query) = self.query {
            for (nr, kv) in query.iter().enumerate() {
                println!("    .query[{}]: \"{}\" -> {:?}", nr, kv.key, kv.value.unwrap_or("(NULL)"));
            }
        }

        println!("    .fragment: {:?}", self.fragment.unwrap_or("(NULL)"));
    }
}

fn main() {
    // Example usage
    let query = [
        UrlKeyValue { key: "key1", value: Some("value1") },
        UrlKeyValue { key: "key2", value: None },
    ];

    let url_data = UrlData {
        whole_url: "http://example.com",
        protocol: Some("http"),
        userinfo: None,
        host: Some("example.com"),
        port: Some("80"),
        path: Some("/path"),
        query: Some(&query),
        fragment: Some("section1"),
    };

    url_data.inspect();
}
