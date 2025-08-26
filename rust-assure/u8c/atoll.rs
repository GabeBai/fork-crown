fn atoll(nptr: &str) -> i64 {
    nptr.parse::<i64>().unwrap_or(0)
}
