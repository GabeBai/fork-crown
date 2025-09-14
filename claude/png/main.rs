#[allow(non_camel_case_types)]
type __time_t = i64;
#[allow(non_camel_case_types)]
type __syscall_slong_t = i64;

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
const _ISblank: u32 = 1 << 8;
#[allow(non_upper_case_globals)]
const _IScntrl: u32 = 1 << 9;
#[allow(non_upper_case_globals)]
const _ISpunct: u32 = 1 << 10;
#[allow(non_upper_case_globals)]
const _ISalnum: u32 = 1 << 11;

struct TimeSpec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

type __fd_mask = i64;

struct FdSet {
    __fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
}

union PthreadAttrT {
    __size: [u8; 56],
    __align: i64,
}

type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

type PngByte = u8;
type PngBytep = *mut PngByte;
type PngConstCharp = *const i8;

struct PngStruct;
type PngStructp = *mut PngStruct;
type PngConstStructrp = *const PngStruct;

extern "C" {
    fn png_get_libpng_ver(png_ptr: PngConstStructrp) -> PngConstCharp;
    fn zlibVersion() -> *const i8;
}

const MSG_INTRO: &str = "OptiPNG version 0.7.6\nCopyright (C) 2001-2016 Cosmin Truta and the Contributing Authors.\n";
const MSG_LICENSE: &str = "This program is open-source software. See LICENSE for more details.\n\nPortions of this software are based in part on the work of:\n  Jean-loup Gailly and Mark Adler (zlib)\n  Glenn Randers-Pehrson and the PNG Development Group (libpng)\n  Miyasaka Masaru (BMP support)\n  David Koblas (GIF support)\n";
const MSG_HELP_SYNOPSIS: &str = "Synopsis:\n    optipng [options] files ...\nFiles:\n    Image files of type: PNG, BMP, GIF, PNM or TIFF\n";
const MSG_HELP_BASIC_OPTIONS: &str = "Basic options:\n    -?, -h, -help\tshow the extended help\n    -o <level>\t\toptimization level (0-7)\t\t[default: 2]\n    -v\t\t\trun in verbose mode / show copyright and version info\n";
const MSG_HELP_OPTIONS: &str = "Basic options:\n    -?, -h, -help\tshow this help\n    -o <level>\t\toptimization level (0-7)\t\t[default: 2]\n    -v\t\t\trun in verbose mode / show copyright and version info\nGeneral options:\n    -backup, -keep\tkeep a backup of the modified files\n    -clobber\t\toverwrite existing files\n    -fix\t\tenable error recovery\n    -force\t\tenforce writing of a new output file\n    -preserve\t\tpreserve file attributes if possible\n    -quiet, -silent\trun in quiet mode\n    -simulate\t\trun in simulation mode\n    -out <file>\t\twrite output file to <file>\n    -dir <directory>\twrite output file(s) to <directory>\n    -log <file>\t\tlog messages to <file>\n    --\t\t\tstop option switch parsing\nOptimization options:\n    -f <filters>\tPNG delta filters (0-5)\t\t\t[default: 0,5]\n    -i <type>\t\tPNG interlace type (0-1)\n    -zc <levels>\tzlib compression levels (1-9)\t\t[default: 9]\n    -zm <levels>\tzlib memory levels (1-9)\t\t[default: 8]\n    -zs <strategies>\tzlib compression strategies (0-3)\t[default: 0-3]\n    -zw <size>\t\tzlib window size (256,512,1k,2k,4k,8k,16k,32k)\n    -full\t\tproduce a full report on IDAT (might reduce speed)\n    -nb\t\t\tno bit depth reduction\n    -nc\t\t\tno color type reduction\n    -np\t\t\tno palette reduction\n    -nx\t\t\tno reductions\n    -nz\t\t\tno IDAT recoding\nEditing options:\n    -snip\t\tcut one image out of multi-image or animation files\n    -strip <objects>\tstrip metadata objects (e.g. \"all\")\nOptimization levels:\n    -o0\t\t<=>\t-o1 -nx -nz\t\t\t\t(0 or 1 trials)\n    -o1\t\t<=>\t-zc9 -zm8 -zs0 -f0\t\t\t(1 trial)\n    \t\t(or...)\t-zc9 -zm8 -zs1 -f5\t\t\t(1 trial)\n    -o2\t\t<=>\t-zc9 -zm8 -zs0-3 -f0,5\t\t\t(8 trials)\n    -o3\t\t<=>\t-zc9 -zm8-9 -zs0-3 -f0,5\t\t(16 trials)\n    -o4\t\t<=>\t-zc9 -zm8 -zs0-3 -f0-5\t\t\t(24 trials)\n    -o5\t\t<=>\t-zc9 -zm8-9 -zs0-3 -f0-5\t\t(48 trials)\n    -o6\t\t<=>\t-zc1-9 -zm8 -zs0-3 -f0-5\t\t(120 trials)\n    -o7\t\t<=>\t-zc1-9 -zm8-9 -zs0-3 -f0-5\t\t(240 trials)\n    -o7 -zm1-9\t<=>\t-zc1-9 -zm1-9 -zs0-3 -f0-5\t\t(1080 trials)\nNotes:\n    The combination for -o1 is chosen heuristically.\n    Exhaustive combinations such as \"-o7 -zm1-9\" are not generally recommended.\n";
const MSG_HELP_EXAMPLES: &str = "Examples:\n    optipng file.png\t\t\t\t\t\t(default speed)\n    optipng -o5 file.png\t\t\t\t\t(slow)\n    optipng -o7 file.png\t\t\t\t\t(very slow)\n";
const MSG_HELP_MORE: &str = "Type \"optipng -h\" for extended help.\n";

#[derive(PartialEq)]
enum Operation {
    Run,
    ShowHelp,
    ShowVersion,
}

struct LocalOptions {
    help: bool,
    version: bool,
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let argc = args.len() as i32;
    let argv: Vec<*const i8> = args.iter()
        .map(|s| s.as_ptr() as *const i8)
        .collect();

    let mut result;
    parse_args(argc, argv.as_ptr());
    app_init();
    result = 0;

    let mut local_options = LocalOptions { help: false, version: false };
    let mut operation = Operation::Run;

    if local_options.version {
        app_printf(&format!("{}\n", MSG_INTRO));
    }

    match operation {
        Operation::Run => {
            result = process_files(argc, argv.as_ptr());
        },
        Operation::ShowHelp => {
            if local_options.help {
                app_printf(&format!("{}{}{}", MSG_HELP_SYNOPSIS, MSG_HELP_OPTIONS, MSG_HELP_EXAMPLES));
            } else {
                app_printf(&format!("{}{}{}{}", MSG_HELP_SYNOPSIS, MSG_HELP_BASIC_OPTIONS, MSG_HELP_EXAMPLES, MSG_HELP_MORE));
            }
        },
        Operation::ShowVersion => {
            app_printf(&format!("{}\n", MSG_LICENSE));
            unsafe {
                app_printf(&format!("Using libpng version {} and zlib version {}\n",
                    std::ffi::CStr::from_ptr(png_get_libpng_ver(std::ptr::null())).to_str().unwrap(),
                    std::ffi::CStr::from_ptr(zlibVersion()).to_str().unwrap()));
            }
        },
    }

    app_finish();
    std::process::exit(result);
}