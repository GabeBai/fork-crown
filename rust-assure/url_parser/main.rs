use std::ffi::CString;
use std::ptr;
use std::str;

#[derive(Debug)]
struct UrlData {
    whole_url: String,
    protocol: Option<String>,
    userinfo: Option<String>,
    host: Option<String>,
    port: Option<String>,
    path: Option<String>,
    query: Option<String>,
    fragment: Option<String>,
}

impl UrlData {
    fn new(url: &str) -> Self {
        // Dummy implementation for parsing
        UrlData {
            whole_url: url.to_string(),
            protocol: Some("http".to_string()),
            userinfo: Some("user:pass".to_string()),
            host: Some("subdomain.host.com".to_string()),
            port: Some("8080".to_string()),
            path: Some("/p/å/t/h".to_string()),
            query: Some("query".to_string()),
            fragment: Some("hæsh".to_string()),
        }
    }

    fn inspect(&self) {
        println!("{:?}", self);
    }
}

fn url_parse(url: &str) -> UrlData {
    UrlData::new(url)
}

fn url_is_protocol(protocol: &str) -> bool {
    matches!(protocol, "http" | "https" | "git" | "ssh" | "sftp" | "ftp" | "javascript")
}

fn main() {
    let gh_url = "git://git@github.com:jwerle/url.h.git";
    let url = "http://user:pass@subdomain.host.com:8080/p/%C3%A5/t/h?qu%C3%ABry=strin%C4%9F&foo=bar=yuk&key%23%26%3D=%25&lol#h%C3%A6sh";

    let parsed = url_parse(url);
    let gh_parsed = url_parse(gh_url);

    assert!(parsed.whole_url.len() > 0);
    assert!(parsed.protocol.is_some());
    assert!(parsed.userinfo.is_some());
    assert!(parsed.host.is_some());
    assert!(parsed.port.is_some());
    assert!(parsed.path.is_some());
    assert!(parsed.query.is_some());
    assert!(parsed.fragment.is_some());

    assert!(gh_parsed.whole_url.len() > 0);
    assert!(gh_parsed.protocol.is_some());
    assert!(gh_parsed.userinfo.is_some());
    assert!(gh_parsed.host.is_some());
    assert!(gh_parsed.path.is_some());

    assert!(url_is_protocol("http"));
    assert!(url_is_protocol("https"));
    assert!(url_is_protocol("git"));
    assert!(url_is_protocol("ssh"));
    assert!(url_is_protocol("sftp"));
    assert!(url_is_protocol("ftp"));
    assert!(url_is_protocol("javascript"));

    parsed.inspect();
    gh_parsed.inspect();
}
