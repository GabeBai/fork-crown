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
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
typedef long unsigned int size_t;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
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
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
struct opng_options
{
    int backup;
    int clobber;
    int debug;
    int fix;
    int force;
    int full;
    int preserve;
    int quiet;
    int simulate;
    int verbose;
    const char *out_name;
    const char *dir_name;
    const char *log_name;
    int interlace;
    int nb, nc, np, nz;
    int optim_level;
    opng_bitset_t compr_level_set;
    opng_bitset_t mem_level_set;
    opng_bitset_t strategy_set;
    opng_bitset_t filter_set;
    int window_bits;
    int snip;
    int strip_all;
};
 typedef unsigned char png_byte;
typedef png_byte * png_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
struct internal_state;
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
 struct opng_options options;
 void
parse_args(int argc, char *argv[])
{
    char *arg;
    char opt[16];
    size_t opt_len;
    const char *xopt;
    int simple_opt, stop_switch;
    opng_bitset_t set;
    int val;
    unsigned int file_count;
    int i;
    memset(&options, 0, sizeof(options));
    options.optim_level = -1;
    options.interlace = -1;
    file_count = 0;
    stop_switch = 0;
    for (i = 1; i < argc; ++i)
    {
        arg = argv[i];
        if (stop_switch || scan_option(arg, opt, sizeof(opt), &xopt) < 1)
        {
            ++file_count;
            continue;
        }
        opt_len = strlen(opt);
        argv[i] = ((void*)0);
        if ((strchr("fio", opt[0]) != ((void*)0) && ((*__ctype_b_loc ())[(int) ((opt[1]))] & (unsigned short int) _ISdigit)) ||
            (opt[0] == 'z' && ((*__ctype_b_loc ())[(int) ((opt[1]))] & (unsigned short int) _ISalpha) && ((*__ctype_b_loc ())[(int) ((opt[2]))] & (unsigned short int) _ISdigit)))
        {
            opt_len = (size_t)(opng_strpbrk_digit(opt) - opt);
            opt[opt_len] = '\0';
            xopt = opng_strpbrk_digit(arg);
        }
        simple_opt = 1;
        if (strcmp("-", opt) == 0)
        {
            stop_switch = 1;
        }
        else if (strcmp("?", opt) == 0 ||
                 strncmp("help", opt, opt_len) == 0)
        {
            local_options.help = 1;
        }
        else if ((strncmp("backup", opt, opt_len) == 0) ||
                 (strncmp("keep", opt, opt_len) == 0))
        {
            options.backup = 1;
        }
        else if (strncmp("clobber", opt, opt_len) == 0)
        {
            options.clobber = 1;
        }
        else if (strcmp("debug", opt) == 0)
        {
            options.debug = 1;
        }
        else if (strncmp("fix", opt, opt_len) == 0 && opt_len >= 2)
        {
            options.fix = 1;
        }
        else if (strncmp("force", opt, opt_len) == 0 && opt_len >= 2)
        {
            options.force = 1;
        }
        else if (strncmp("full", opt, opt_len) == 0 && opt_len >= 2)
        {
            options.full = 1;
        }
        else if (strcmp("nb", opt) == 0)
        {
            options.nb = 1;
        }
        else if (strcmp("nc", opt) == 0)
        {
            options.nc = 1;
        }
        else if (strcmp("np", opt) == 0)
        {
            options.np = 1;
        }
        else if (strcmp("nx", opt) == 0)
        {
            options.nb = options.nc = options.np = 1;
        }
        else if (strcmp("nz", opt) == 0)
        {
            options.nz = 1;
        }
        else if (strncmp("preserve", opt, opt_len) == 0)
        {
            options.preserve = 1;
        }
        else if ((strncmp("quiet", opt, opt_len) == 0) ||
                 (strncmp("silent", opt, opt_len) == 0 && opt_len >= 3))
        {
            options.quiet = 1;
        }
        else if (strncmp("simulate", opt, opt_len) == 0 && opt_len >= 3)
        {
            options.simulate = 1;
        }
        else if (strncmp("snip", opt, opt_len) == 0 && opt_len >= 2)
        {
            options.snip = 1;
        }
        else if (strcmp("v", opt) == 0)
        {
            options.verbose = 1;
            local_options.version = 1;
        }
        else if (strncmp("verbose", opt, opt_len) == 0 && opt_len >= 4)
        {
            options.verbose = 1;
        }
        else if (strncmp("version", opt, opt_len) == 0 && opt_len >= 4)
        {
            local_options.version = 1;
        }
        else
        {
            simple_opt = 0;
            if (xopt == ((void*)0))
            {
                if (++i < argc)
                {
                    xopt = argv[i];
                    argv[i] = ((void*)0);
                }
                else
                {
                    xopt = "";
                }
            }
        }
        if (simple_opt)
        {
            if (xopt != ((void*)0))
                error("No argument allowed for option: %s", arg);
        }
        else if (strcmp("o", opt) == 0)
        {
            val = check_num_option("-o", xopt, 0, 2147483647);
            if (options.optim_level < 0)
                options.optim_level = val;
            else if (options.optim_level != val)
                error("Multiple optimization levels are not permitted");
        }
        else if (strcmp("i", opt) == 0)
        {
            val = check_num_option("-i", xopt, 0, 1);
            if (options.interlace < 0)
                options.interlace = val;
            else if (options.interlace != val)
                error("Multiple interlace types are not permitted");
        }
        else if (strcmp("f", opt) == 0)
        {
            set = check_rangeset_option("-f", xopt, ((1 << (5+1)) - (1 << 0)));
            options.filter_set |= set;
        }
        else if (strcmp("zc", opt) == 0)
        {
            set = check_rangeset_option("-zc", xopt, ((1 << (9+1)) - (1 << 1)));
            options.compr_level_set |= set;
        }
        else if (strcmp("zm", opt) == 0)
        {
            set = check_rangeset_option("-zm", xopt, ((1 << (9+1)) - (1 << 1)));
            options.mem_level_set |= set;
        }
        else if (strcmp("zs", opt) == 0)
        {
            set = check_rangeset_option("-zs", xopt, ((1 << (3+1)) - (1 << 0)));
            options.strategy_set |= set;
        }
        else if (strcmp("zw", opt) == 0)
        {
            val = check_power2_option("-zw", xopt, 8, 15);
            if (options.window_bits == 0)
                options.window_bits = val;
            else if (options.window_bits != val)
                error("Multiple window sizes are not permitted");
        }
        else if (strncmp("strip", opt, opt_len) == 0 && opt_len >= 2)
        {
            check_obj_option("-strip", xopt);
            options.strip_all = 1;
        }
        else if (strncmp("out", opt, opt_len) == 0 && opt_len >= 2)
        {
            if (options.out_name != ((void*)0))
                error("Multiple output file names are not permitted");
            if (xopt[0] == 0)
                err_option_arg("-out", ((void*)0));
            options.out_name = xopt;
        }
        else if (strncmp("dir", opt, opt_len) == 0)
        {
            if (options.dir_name != ((void*)0))
                error("Multiple output dir names are not permitted");
            if (xopt[0] == 0)
                err_option_arg("-dir", ((void*)0));
            options.dir_name = xopt;
        }
        else if (strncmp("log", opt, opt_len) == 0)
        {
            if (options.log_name != ((void*)0))
                error("Multiple log file names are not permitted");
            if (xopt[0] == 0)
                err_option_arg("-log", ((void*)0));
            options.log_name = xopt;
        }
        else
        {
            error("Unrecognized option: %s", arg);
        }
    }
    if (options.out_name != ((void*)0))
    {
        if (file_count > 1)
            error("The option -out requires one input file");
        if (options.dir_name != ((void*)0))
            error("The options -out and -dir are mutually exclusive");
    }
    if (options.log_name != ((void*)0))
    {
        if (opng_strcasecmp(".log", opng_strtail(options.log_name, 4)) != 0)
            error("To prevent accidental data corruption, "
                  "the log file name must end with \".log\"");
    }
    if (local_options.help)
        operation = OP_SHOW_HELP;
    else if (file_count != 0)
        operation = OP_RUN;
    else if (local_options.version)
        operation = OP_SHOW_VERSION;
    else
        operation = OP_SHOW_HELP;
}
