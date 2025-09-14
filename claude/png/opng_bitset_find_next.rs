type OpngBitset = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitset>() * 8 - 1) as i32;

const _ISupper: u32 = if 0 < 8 { (1 << 0) << 8 } else { (1 << 0) >> 8 };
const _ISlower: u32 = if 1 < 8 { (1 << 1) << 8 } else { (1 << 1) >> 8 };
const _ISalpha: u32 = if 2 < 8 { (1 << 2) << 8 } else { (1 << 2) >> 8 };
const _ISdigit: u32 = if 3 < 8 { (1 << 3) << 8 } else { (1 << 3) >> 8 };
const _ISxdigit: u32 = if 4 < 8 { (1 << 4) << 8 } else { (1 << 4) >> 8 };
const _ISspace: u32 = if 5 < 8 { (1 << 5) << 8 } else { (1 << 5) >> 8 };
const _ISprint: u32 = if 6 < 8 { (1 << 6) << 8 } else { (1 << 6) >> 8 };
const _ISgraph: u32 = if 7 < 8 { (1 << 7) << 8 } else { (1 << 7) >> 8 };
const _ISblank: u32 = if 8 < 8 { (1 << 8) << 8 } else { (1 << 8) >> 8 };
const _IScntrl: u32 = if 9 < 8 { (1 << 9) << 8 } else { (1 << 9) >> 8 };
const _ISpunct: u32 = if 10 < 8 { (1 << 10) << 8 } else { (1 << 10) >> 8 };
const _ISalnum: u32 = if 11 < 8 { (1 << 11) << 8 } else { (1 << 11) >> 8 };

fn opng_bitset_find_next(set: OpngBitset, elt: i32) -> i32 {
    for i in (elt.max(-1) + 1)..=OPNG_BITSET_ELT_MAX {
        if (set & (1u32 << i)) != 0 {
            return i;
        }
    }
    -1
}