pub fn csv_set_delim(p: Option<&mut csv_parser>, c: u8) {
    if let Some(parser) = p {
        parser.delim_char = c;
    }
}