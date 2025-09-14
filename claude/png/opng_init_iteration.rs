use std::mem::MaybeUninit;

type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

extern "C" {
    fn opng_rangeset_string_to_bitset(str: *const i8, end_idx: *mut usize) -> OpngBitsetT;
    fn longjmp(env: *mut [libc::jmp_buf; 1], val: i32) -> !;
}

static mut OPTIONS: MaybeUninit<OpngOptions> = MaybeUninit::uninit();
static mut THE_EXCEPTION_CONTEXT: [ExceptionContext; 1] = [ExceptionContext {
    penv: std::ptr::null_mut(),
    caught: 0,
    v: VolatileWrapper { etmp: std::ptr::null() },
}];

#[repr(C)]
struct OpngOptions {
    // Fields omitted for brevity
    optim_level: i32,
}

#[repr(C)]
struct ExceptionContext {
    penv: *mut [libc::jmp_buf; 1],
    caught: i32,
    v: VolatileWrapper,
}

#[repr(C)]
struct VolatileWrapper {
    etmp: *const i8,
}

#[no_mangle]
pub unsafe extern "C" fn opng_init_iteration(
    cmdline_set: OpngBitsetT,
    mask_set: OpngBitsetT,
    preset: *const i8,
    output_set: *mut OpngBitsetT,
) {
    let preset_set: OpngBitsetT;
    *output_set = cmdline_set & mask_set;
    
    if *output_set == 0 && cmdline_set != 0 {
        loop {
            THE_EXCEPTION_CONTEXT[0].v.etmp = b"Iteration parameter(s) out of range\0".as_ptr() as *const i8;
            longjmp(THE_EXCEPTION_CONTEXT[0].penv, 1);
        }
    }
    
    if *output_set == 0 || (*OPTIONS.assume_init_ref()).optim_level >= 0 {
        preset_set = opng_rangeset_string_to_bitset(preset, std::ptr::null_mut());
        *output_set |= preset_set & mask_set;
    }
}