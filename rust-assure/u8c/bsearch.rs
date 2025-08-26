pub fn bsearch<'a, T, F>(key: &'a T, base: &'a [T], compar: F) -> Option<&'a T>
where
    T: Ord,
    F: Fn(&T, &T) -> std::cmp::Ordering,
{
    let mut low = 0;
    let mut high = base.len();

    while low < high {
        let mid = (low + high) / 2;
        let mid_val = &base[mid];

        match compar(key, mid_val) {
            std::cmp::Ordering::Less => high = mid,
            std::cmp::Ordering::Greater => low = mid + 1,
            std::cmp::Ordering::Equal => return Some(mid_val),
        }
    }

    None
}
