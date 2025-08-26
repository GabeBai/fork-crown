const SIG_TRNS: [u8; 4] = [0x74, 0x52, 0x4e, 0x53];

fn opng_is_image_chunk(chunk_type: &[u8]) -> i32 {
    if (chunk_type[0] & 0x20) == 0 {
        return 1;
    }
    if chunk_type.starts_with(&SIG_TRNS) {
        return 1;
    }
    0
}
