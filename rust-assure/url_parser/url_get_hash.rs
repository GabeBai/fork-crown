fn url_get_fragment(url: &str) -> Option<&str> {
    // Find the position of the '#' character
    if let Some(pos) = url.find('#') {
        // Return the fragment part of the URL
        Some(&url[pos + 1..])
    } else {
        // Return None if there is no fragment
        None
    }
}

fn url_get_hash(url: &str) -> Option<&str> {
    url_get_fragment(url)
}

fn main() {
    let url = "http://example.com/page#section";
    if let Some(fragment) = url_get_hash(url) {
        println!("Fragment: {}", fragment);
    } else {
        println!("No fragment found.");
    }
}
