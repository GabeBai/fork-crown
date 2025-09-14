#[allow(non_camel_case_types)]
type __uint16_t = u16;

#[allow(non_upper_case_globals)]
const _ISupper: u16 = 1 << 8;
#[allow(non_upper_case_globals)]
const _ISlower: u16 = 1 << 9;
#[allow(non_upper_case_globals)]
const _ISalpha: u16 = 1 << 10;
#[allow(non_upper_case_globals)]
const _ISdigit: u16 = 1 << 11;
#[allow(non_upper_case_globals)]
const _ISxdigit: u16 = 1 << 12;
#[allow(non_upper_case_globals)]
const _ISspace: u16 = 1 << 13;
#[allow(non_upper_case_globals)]
const _ISprint: u16 = 1 << 14;
#[allow(non_upper_case_globals)]
const _ISgraph: u16 = 1 << 15;
#[allow(non_upper_case_globals)]
const _ISblank: u16 = 1 << 0;
#[allow(non_upper_case_globals)]
const _IScntrl: u16 = 1 << 1;
#[allow(non_upper_case_globals)]
const _ISpunct: u16 = 1 << 2;
#[allow(non_upper_case_globals)]
const _ISalnum: u16 = 1 << 3;

#[allow(non_snake_case)]
fn __uint16_identity(__x: __uint16_t) -> __uint16_t {
    __x
}