type OpngBitset = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitset>() * 8 - 1) as i32;

#[allow(non_upper_case_globals)]
mod character_class {
    pub const _ISupper: u32 = 1 << 0 << 8;
    pub const _ISlower: u32 = 1 << 1 << 8;
    pub const _ISalpha: u32 = 1 << 2 << 8;
    pub const _ISdigit: u32 = 1 << 3 << 8;
    pub const _ISxdigit: u32 = 1 << 4 << 8;
    pub const _ISspace: u32 = 1 << 5 << 8;
    pub const _ISprint: u32 = 1 << 6 << 8;
    pub const _ISgraph: u32 = 1 << 7 << 8;
    pub const _ISblank: u32 = 1 << 8 >> 8;
    pub const _IScntrl: u32 = 1 << 9 >> 8;
    pub const _ISpunct: u32 = 1 << 10 >> 8;
    pub const _ISalnum: u32 = 1 << 11 >> 8;
}

fn opng_bitset_count(mut set: OpngBitset) -> u32 {
    let mut result = 0;
    while set != 0 {
        set &= set - 1;
        result += 1;
    }
    result
}