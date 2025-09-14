use std::num::Wrapping;

#[derive(Clone, Copy)]
pub struct OpngBitset(Wrapping<u32>);

impl OpngBitset {
    const ELT_MIN: u32 = 0;
    const ELT_MAX: u32 = 31;
}

fn check_rangeset_option(opt: &str, opt_arg: &str, result_mask: OpngBitset) -> OpngBitset {
    let mut result = OpngBitset(Wrapping(0));
    if opng_rangeset2bitset(&mut result, opt_arg) == 0 {
        result.0 &= result_mask.0;
    } else {
        result.0 = Wrapping(0);
    }
    if result.0.0 == 0 {
        err_option_arg(opt, opt_arg);
    }
    result
}