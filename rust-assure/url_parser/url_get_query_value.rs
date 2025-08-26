#[derive(Debug)]
pub struct UrlKeyValue<'a> {
    key: &'a str,
    value: &'a str,
}

#[derive(Debug)]
pub struct UrlData<'a> {
    whole_url: &'a str,
    protocol: &'a str,
    userinfo: &'a str,
    host: &'a str,
    port: &'a str,
    path: &'a str,
    query: Option<&'a [UrlKeyValue<'a>]>,
    fragment: &'a str,
}

pub fn url_get_query_value<'a>(url: &'a UrlData, key: &str) -> Option<&'a str> {
    if let Some(query) = url.query {
        for kv in query {
            if kv.key == key {
                return Some(kv.value);
            }
        }
    }
    None
}

fn main() {
    let query = [
        UrlKeyValue { key: "name", value: "example" },
        UrlKeyValue { key: "id", value: "123" },
    ];

    let url_data = UrlData {
        whole_url: "http://example.com",
        protocol: "http",
        userinfo: "",
        host: "example.com",
        port: "80",
        path: "/",
        query: Some(&query),
        fragment: "",
    };

    if let Some(value) = url_get_query_value(&url_data, "name") {
        println!("Found value: {}", value);
    } else {
        println!("Key not found");
    }
}
