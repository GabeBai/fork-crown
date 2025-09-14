use std::ffi::c_long;
use std::os::raw::c_uint;

type OsysFoffsetT = c_long;
type OsysFsizeT = c_uint;
type PngUint32 = c_uint;
type OpngBitsetT = c_uint;

struct OpngProcessStruct {
    status: c_uint,
    num_iterations: i32,
    in_datastream_offset: OsysFoffsetT,
    in_file_size: OsysFsizeT,
    out_file_size: OsysFsizeT,
    in_idat_size: OsysFsizeT,
    out_idat_size: OsysFsizeT,
    best_idat_size: OsysFsizeT,
    max_idat_size: OsysFsizeT,
    in_plte_trns_size: PngUint32,
    out_plte_trns_size: PngUint32,
    reductions: PngUint32,
    compr_level_set: OpngBitsetT,
    mem_level_set: OpngBitsetT,
    strategy_set: OpngBitsetT,
    filter_set: OpngBitsetT,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}

const IDAT_SIZE_MAX: OsysFsizeT = 0x7fffffff;
const IDAT_SIZE_MAX_STRING: &str = "2GB";
const OUTPUT_NEEDS_NEW_IDAT: c_uint = 0x2000;

static mut PROCESS: OpngProcessStruct = OpngProcessStruct {
    status: 0,
    num_iterations: 0,
    in_datastream_offset: 0,
    in_file_size: 0,
    out_file_size: 0,
    in_idat_size: 0,
    out_idat_size: 0,
    best_idat_size: 0,
    max_idat_size: 0,
    in_plte_trns_size: 0,
    out_plte_trns_size: 0,
    reductions: 0,
    compr_level_set: 0,
    mem_level_set: 0,
    strategy_set: 0,
    filter_set: 0,
    best_compr_level: 0,
    best_mem_level: 0,
    best_strategy: 0,
    best_filter: 0,
};

static mut USR_PRINTF: Option<unsafe extern "C" fn(*const i8, ...)> = None;

unsafe fn opng_finish_iterations() {
    if PROCESS.best_idat_size + PROCESS.out_plte_trns_size <
        PROCESS.in_idat_size + PROCESS.in_plte_trns_size
    {
        PROCESS.status |= OUTPUT_NEEDS_NEW_IDAT;
    }
    if PROCESS.status & OUTPUT_NEEDS_NEW_IDAT != 0 {
        if PROCESS.best_idat_size <= IDAT_SIZE_MAX {
            if let Some(usr_printf) = USR_PRINTF {
                usr_printf(b"\nSelecting parameters:\n\0".as_ptr() as *const i8);
                usr_printf(
                    b"  zc = %d  zm = %d  zs = %d  f = %d\0".as_ptr() as *const i8,
                    PROCESS.best_compr_level,
                    PROCESS.best_mem_level,
                    PROCESS.best_strategy,
                    PROCESS.best_filter,
                );
                if PROCESS.best_idat_size > 0 {
                    usr_printf(
                        b"\t\tIDAT size = %lu\0".as_ptr() as *const i8,
                        PROCESS.best_idat_size,
                    );
                }
                usr_printf(b"\n\0".as_ptr() as *const i8);
            }
        } else if let Some(usr_printf) = USR_PRINTF {
            usr_printf(
                b"  zc = *  zm = *  zs = *  f = *\t\tIDAT size > %s\n\0".as_ptr() as *const i8,
                IDAT_SIZE_MAX_STRING.as_ptr() as *const i8,
            );
        }
    }
}