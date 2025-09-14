#[inline]
pub fn __bswap_16(bsx: u16) -> u16 {
    ((bsx >> 8) & 0xff) | ((bsx & 0xff) << 8)
}