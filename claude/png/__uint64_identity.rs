#[allow(non_camel_case_types)]
type __uint64_t = u64;

#[allow(non_upper_case_globals)]
const _ISupper: u32 = 1 << 8;
#[allow(non_upper_case_globals)]
const _ISlower: u32 = 1 << 9;
#[allow(non_upper_case_globals)]
const _ISalpha: u32 = 1 << 10;
#[allow(non_upper_case_globals)]
const _ISdigit: u32 = 1 << 11;
#[allow(non_upper_case_globals)]
const _ISxdigit: u32 = 1 << 12;
#[allow(non_upper_case_globals)]
const _ISspace: u32 = 1 << 13;
#[allow(non_upper_case_globals)]
const _ISprint: u32 = 1 << 14;
#[allow(non_upper_case_globals)]
const _ISgraph: u32 = 1 << 15;
#[allow(non_upper_case_globals)]
const _ISblank: u32 = 1 << 16;
#[allow(non_upper_case_globals)]
const _IScntrl: u32 = 1 << 17;
#[allow(non_upper_case_globals)]
const _ISpunct: u32 = 1 << 18;
#[allow(non_upper_case_globals)]
const _ISalnum: u32 = 1 << 19;

#[allow(non_snake_case)]
fn __uint64_identity(__x: __uint64_t) -> __uint64_t {
    __x
}