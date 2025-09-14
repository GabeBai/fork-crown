typedef long int __time_t;
typedef long int __syscall_slong_t;
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
 typedef unsigned char png_byte;
typedef png_byte * png_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
typedef const png_struct * __restrict png_const_structrp;
extern png_const_charp ( png_get_libpng_ver) (png_const_structrp png_ptr);
struct internal_state;
extern const char * zlibVersion (void);
 const char *msg_intro =
    "OptiPNG" " version " "0.7.6" "\n"
    "Copyright (C) 2001-2016 Cosmin Truta and the Contributing Authors" ".\n";
 const char *msg_license =
    "This program is open-source software. See LICENSE for more details.\n"
    "\n"
    "Portions of this software are based in part on the work of:\n"
    "  Jean-loup Gailly and Mark Adler (zlib)\n"
    "  Glenn Randers-Pehrson and the PNG Development Group (libpng)\n"
    "  Miyasaka Masaru (BMP support)\n"
    "  David Koblas (GIF support)\n";
 const char *msg_help_synopsis =
    "Synopsis:\n"
    "    optipng [options] files ...\n"
    "Files:\n"
    "    Image files of type: PNG, BMP, GIF, PNM or TIFF\n";
 const char *msg_help_basic_options =
    "Basic options:\n"
    "    -?, -h, -help\tshow the extended help\n"
    "    -o <level>\t\toptimization level (0-7)\t\t[default: 2]\n"
    "    -v\t\t\trun in verbose mode / show copyright and version info\n";
 const char *msg_help_options =
    "Basic options:\n"
    "    -?, -h, -help\tshow this help\n"
    "    -o <level>\t\toptimization level (0-7)\t\t[default: 2]\n"
    "    -v\t\t\trun in verbose mode / show copyright and version info\n"
    "General options:\n"
    "    -backup, -keep\tkeep a backup of the modified files\n"
    "    -clobber\t\toverwrite existing files\n"
    "    -fix\t\tenable error recovery\n"
    "    -force\t\tenforce writing of a new output file\n"
    "    -preserve\t\tpreserve file attributes if possible\n"
    "    -quiet, -silent\trun in quiet mode\n"
    "    -simulate\t\trun in simulation mode\n"
    "    -out <file>\t\twrite output file to <file>\n"
    "    -dir <directory>\twrite output file(s) to <directory>\n"
    "    -log <file>\t\tlog messages to <file>\n"
    "    --\t\t\tstop option switch parsing\n"
    "Optimization options:\n"
    "    -f <filters>\tPNG delta filters (0-5)\t\t\t[default: 0,5]\n"
    "    -i <type>\t\tPNG interlace type (0-1)\n"
    "    -zc <levels>\tzlib compression levels (1-9)\t\t[default: 9]\n"
    "    -zm <levels>\tzlib memory levels (1-9)\t\t[default: 8]\n"
    "    -zs <strategies>\tzlib compression strategies (0-3)\t[default: 0-3]\n"
    "    -zw <size>\t\tzlib window size (256,512,1k,2k,4k,8k,16k,32k)\n"
    "    -full\t\tproduce a full report on IDAT (might reduce speed)\n"
    "    -nb\t\t\tno bit depth reduction\n"
    "    -nc\t\t\tno color type reduction\n"
    "    -np\t\t\tno palette reduction\n"
    "    -nx\t\t\tno reductions\n"
    "    -nz\t\t\tno IDAT recoding\n"
    "Editing options:\n"
    "    -snip\t\tcut one image out of multi-image or animation files\n"
    "    -strip <objects>\tstrip metadata objects (e.g. \"all\")\n"
    "Optimization levels:\n"
    "    -o0\t\t<=>\t-o1 -nx -nz\t\t\t\t(0 or 1 trials)\n"
    "    -o1\t\t<=>\t-zc9 -zm8 -zs0 -f0\t\t\t(1 trial)\n"
    "    \t\t(or...)\t-zc9 -zm8 -zs1 -f5\t\t\t(1 trial)\n"
    "    -o2\t\t<=>\t-zc9 -zm8 -zs0-3 -f0,5\t\t\t(8 trials)\n"
    "    -o3\t\t<=>\t-zc9 -zm8-9 -zs0-3 -f0,5\t\t(16 trials)\n"
    "    -o4\t\t<=>\t-zc9 -zm8 -zs0-3 -f0-5\t\t\t(24 trials)\n"
    "    -o5\t\t<=>\t-zc9 -zm8-9 -zs0-3 -f0-5\t\t(48 trials)\n"
    "    -o6\t\t<=>\t-zc1-9 -zm8 -zs0-3 -f0-5\t\t(120 trials)\n"
    "    -o7\t\t<=>\t-zc1-9 -zm8-9 -zs0-3 -f0-5\t\t(240 trials)\n"
    "    -o7 -zm1-9\t<=>\t-zc1-9 -zm1-9 -zs0-3 -f0-5\t\t(1080 trials)\n"
    "Notes:\n"
    "    The combination for -o1 is chosen heuristically.\n"
    "    Exhaustive combinations such as \"-o7 -zm1-9\" are not generally recommended.\n";
 const char *msg_help_examples =
    "Examples:\n"
    "    optipng file.png\t\t\t\t\t\t(default speed)\n"
    "    optipng -o5 file.png\t\t\t\t\t(slow)\n"
    "    optipng -o7 file.png\t\t\t\t\t(very slow)\n";
 const char *msg_help_more =
    "Type \"optipng -h\" for extended help.\n";
 enum
{
    OP_RUN,
    OP_SHOW_HELP,
    OP_SHOW_VERSION
} operation;
 struct
{
    int help;
    int version;
} local_options;
int
main(int argc, char *argv[])
{
    int result;
    parse_args(argc, argv);
    app_init();
    result = 0;
    if (local_options.version)
    {
        app_printf("%s\n", msg_intro);
    }
    switch (operation)
    {
    case OP_RUN:
        result = process_files(argc, argv);
        break;
    case OP_SHOW_HELP:
        if (local_options.help)
        {
            app_printf("%s%s%s",
                       msg_help_synopsis,
                       msg_help_options,
                       msg_help_examples);
        }
        else
        {
            app_printf("%s%s%s%s",
                       msg_help_synopsis,
                       msg_help_basic_options,
                       msg_help_examples,
                       msg_help_more);
        }
        break;
    case OP_SHOW_VERSION:
        app_printf("%s\n", msg_license);
        app_printf("Using libpng version %s and zlib version %s\n",
                   png_get_libpng_ver(((void*)0)), zlibVersion());
        break;
    default:
        result = -1;
    }
    app_finish();
    return result;
}
