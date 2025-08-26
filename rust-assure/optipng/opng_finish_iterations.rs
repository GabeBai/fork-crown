use std::os::raw::{c_char, c_int, c_long, c_uint, c_ulong};
use std::fmt::Write;

type OsysFsizeT = c_ulong;
type PngUint32 = c_uint;

const IDAT_SIZE_MAX: OsysFsizeT = 0x7fffffff;
const IDAT_SIZE_MAX_STRING: &str = "2GB";

struct OpngProcessStruct {
    status: c_uint,
    num_iterations: c_int,
    in_datastream_offset: c_long,
    in_file_size: OsysFsizeT,
    out_file_size: OsysFsizeT,
    in_idat_size: OsysFsizeT,
    out_idat_size: OsysFsizeT,
    best_idat_size: OsysFsizeT,
    max_idat_size: OsysFsizeT,
    in_plte_trns_size: PngUint32,
    out_plte_trns_size: PngUint32,
    reductions: PngUint32,
    compr_level_set: c_uint,
    mem_level_set: c_uint,
    strategy_set: c_uint,
    filter_set: c_uint,
    best_compr_level: c_int,
    best_mem_level: c_int,
    best_strategy: c_int,
    best_filter: c_int,
}

impl OpngProcessStruct {
    fn opng_finish_iterations(&mut self, usr_printf: &mut dyn FnMut(&str)) {
        if self.best_idat_size + self.out_plte_trns_size as OsysFsizeT <
           self.in_idat_size + self.in_plte_trns_size as OsysFsizeT {
            self.status |= OUTPUT_NEEDS_NEW_IDAT;
        }
        if self.status & OUTPUT_NEEDS_NEW_IDAT != 0 {
            if self.best_idat_size <= IDAT_SIZE_MAX {
                usr_printf("\nSelecting parameters:\n");
                usr_printf(&format!(
                    "  zc = {}  zm = {}  zs = {}  f = {}",
                    self.best_compr_level, self.best_mem_level,
                    self.best_strategy, self.best_filter
                ));
                if self.best_idat_size > 0 {
                    usr_printf(&format!("\t\tIDAT size = {}", self.best_idat_size));
                }
                usr_printf("\n");
            } else {
                usr_printf(&format!(
                    "  zc = *  zm = *  zs = *  f = *\t\tIDAT size > {}\n",
                    IDAT_SIZE_MAX_STRING
                ));
            }
        }
    }
}

const OUTPUT_NEEDS_NEW_IDAT: c_uint = 0x2000;

fn main() {
    let mut process = OpngProcessStruct {
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

    let mut output = String::new();
    process.opng_finish_iterations(&mut |s| {
        write!(output, "{}", s).unwrap();
    });

    println!("{}", output);
}
