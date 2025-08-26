use std::io::{self, Write};

fn u8strlen(s: &str) -> usize {
    s.chars().count()
}

fn u8next_(txt: &str, ch: Option<&mut char>) -> usize {
    let mut chars = txt.chars();
    if let Some(first_char) = chars.next() {
        if let Some(ch) = ch {
            *ch = first_char;
        }
        first_char.len_utf8()
    } else {
        0
    }
}

fn main() {
    let s = ["Aa", "èa", "会員", "𧀀𧀍"];
    for (k, &s1) in s.iter().enumerate() {
        let mut c = '\0';
        let l = u8next_(s1, Some(&mut c));
        let e_ = l != k + 1;
        if e_ {
            eprintln!("FAIL: (l == k+1) test1.rs:16");
            eprintln!("    : Expected length: {}, got {}", k + 1, l);
        } else {
            eprintln!("PASS: (l == k+1) test1.rs:16");
        }

        let slen = u8strlen(s1);
        let e_ = slen != 2;
        if e_ {
            eprintln!("FAIL: (slen == 2) test1.rs:18");
            eprintln!("    : String len (in codepoints) should be 2, got {}", slen);
        } else {
            eprintln!("PASS: (slen == 2) test1.rs:18");
        }

        let l2 = u8next_(s1, None);
        let e_ = l != l2;
        if e_ {
            eprintln!("FAIL: (l == l2) test1.rs:20");
            eprintln!("    : Calling u8next with ch == None failed. Expecting {} got {}", l, l2);
        } else {
            eprintln!("PASS: (l == l2) test1.rs:20");
        }
    }
}
