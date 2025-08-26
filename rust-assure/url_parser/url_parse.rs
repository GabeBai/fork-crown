use std::ffi::CString;
use std::ptr;
use std::str;
use std::collections::HashMap;

#[derive(Debug)]
struct UrlData {
    whole_url: String,
    protocol: String,
    userinfo: Option<String>,
    host: String,
    port: Option<String>,
    path: String,
    query: Option<HashMap<String, String>>,
    fragment: Option<String>,
}

fn url_parse(url: &str) -> Option<UrlData> {
    let mut data = UrlData {
        whole_url: url.to_string(),
        protocol: String::new(),
        userinfo: None,
        host: String::new(),
        port: None,
        path: String::new(),
        query: None,
        fragment: None,
    };

    let mut parts = url.split("://");
    if let Some(protocol) = parts.next() {
        data.protocol = protocol.to_string();
    } else {
        eprintln!("ERROR: Invalid URL format");
        return None;
    }

    let remainder = parts.next().unwrap_or("");
    let mut path_start = remainder.find('/').unwrap_or(remainder.len());
    let authority = &remainder[..path_start];
    let path_and_more = &remainder[path_start..];

    if let Some(at_pos) = authority.find('@') {
        data.userinfo = Some(authority[..at_pos].to_string());
        data.host = authority[at_pos + 1..].to_string();
    } else {
        data.host = authority.to_string();
    }

    if let Some(colon_pos) = data.host.find(':') {
        data.port = Some(data.host[colon_pos + 1..].to_string());
        data.host = data.host[..colon_pos].to_string();
    }

    if let Some(query_start) = path_and_more.find('?') {
        data.path = path_and_more[..query_start].to_string();
        let query_and_fragment = &path_and_more[query_start + 1..];
        if let Some(fragment_start) = query_and_fragment.find('#') {
            data.query = Some(parse_query_string(&query_and_fragment[..fragment_start]));
            data.fragment = Some(query_and_fragment[fragment_start + 1..].to_string());
        } else {
            data.query = Some(parse_query_string(query_and_fragment));
        }
    } else if let Some(fragment_start) = path_and_more.find('#') {
        data.path = path_and_more[..fragment_start].to_string();
        data.fragment = Some(path_and_more[fragment_start + 1..].to_string());
    } else {
        data.path = path_and_more.to_string();
    }

    Some(data)
}

fn parse_query_string(query: &str) -> HashMap<String, String> {
    query.split('&')
        .filter_map(|pair| {
            let mut split = pair.split('=');
            if let (Some(key), Some(value)) = (split.next(), split.next()) {
                Some((key.to_string(), value.to_string()))
            } else {
                None
            }
        })
        .collect()
}

fn main() {
    let url = "http://user:pass@host:8080/path?query#fragment";
    if let Some(parsed_url) = url_parse(url) {
        println!("{:?}", parsed_url);
    } else {
        eprintln!("Failed to parse URL");
    }
}
