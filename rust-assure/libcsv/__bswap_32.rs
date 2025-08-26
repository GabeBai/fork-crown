type __uint32_t = u32;

#[no_mangle] fn __bswap_32(__bsx: __uint32_t) -> __uint32_t {
    ((__bsx & 0xff000000u32) >> 24) | ((__bsx & 0x00ff0000u32) >> 8) | ((__bsx & 0x0000ff00u32) << 8) | ((__bsx & 0x000000ffu32) << 24)
}
