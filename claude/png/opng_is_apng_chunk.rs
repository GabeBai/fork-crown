use std::mem;

fn opng_is_apng_chunk(chunk_type: &[u8; 4]) -> i32 {
    const SIG_ACTL: [u8; 4] = [0x61, 0x63, 0x54, 0x4c];
    const SIG_FCTL: [u8; 4] = [0x66, 0x63, 0x54, 0x4c];
    const SIG_FDAT: [u8; 4] = [0x66, 0x64, 0x41, 0x54];

    if chunk_type == &SIG_ACTL || chunk_type == &SIG_FCTL || chunk_type == &SIG_FDAT {
        1
    } else {
        0
    }
}