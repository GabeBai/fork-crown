fn u8fold(cp: i32) -> i32 {
    let mut cp = cp;
    if (0x10400..=0x10427).contains(&cp) {
        cp += 40;
    }
    if cp <= 0xFFFF {
        cp = fold_search(cp);
    }
    cp
}