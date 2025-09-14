use std::cmp::Ordering;

pub unsafe fn bsearch<T, F>(key: *const T, base: *const T, nmemb: usize, size: usize, compar: F) -> *mut T
where
    F: Fn(*const T, *const T) -> i32,
{
    let mut l = 0;
    let mut u = nmemb;

    while l < u {
        let idx = (l + u) / 2;
        let p = base.add(idx);
        let comparison = compar(key, p);

        match comparison.cmp(&0) {
            Ordering::Less => u = idx,
            Ordering::Greater => l = idx + 1,
            Ordering::Equal => return p as *mut T,
        }
    }

    std::ptr::null_mut()
}