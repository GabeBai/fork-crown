#[inline]
fn __bswap_32(bsx: u32) -> u32 {
    ((bsx & 0xff000000) >> 24) |
    ((bsx & 0x00ff0000) >> 8) |
    ((bsx & 0x0000ff00) << 8) |
    ((bsx & 0x000000ff) << 24)
}