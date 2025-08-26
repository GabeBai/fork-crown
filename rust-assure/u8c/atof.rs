#[inline]
fn atof(nptr: &str) -> f64 {
    nptr.parse::<f64>().unwrap_or(0.0)
}
