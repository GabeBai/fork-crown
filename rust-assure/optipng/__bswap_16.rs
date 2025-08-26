type __uint16_t = u16;

fn __bswap_16(__bsx: __uint16_t) -> __uint16_t {
    ((__bsx >> 8) & 0xff) | ((__bsx & 0xff) << 8)
}
