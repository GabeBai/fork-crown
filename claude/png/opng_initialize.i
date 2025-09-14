typedef long unsigned int size_t;
typedef long int __time_t;
typedef long int __syscall_slong_t;
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
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
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
struct opng_ui
{
    void (*printf_fn)(const char *fmt, ...);
    void (*print_cntrl_fn)(int cntrl_code);
    void (*progress_fn)(unsigned long current_step, unsigned long total_steps);
    void (*panic_fn)(const char *msg);
};
int opng_initialize(const struct opng_options *options,
                    const struct opng_ui *ui);
 typedef unsigned char png_byte;
typedef png_byte * png_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
struct internal_state;
typedef long int __jmp_buf[8];
struct __jmp_buf_tag
  {
    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };
typedef struct __jmp_buf_tag jmp_buf[1];
struct exception_context { jmp_buf *penv; int caught; volatile struct { const char * etmp; } v; };
enum
{
    INPUT_IS_PNG_FILE = 0x0001,
    INPUT_HAS_PNG_DATASTREAM = 0x0002,
    INPUT_HAS_PNG_SIGNATURE = 0x0004,
    INPUT_HAS_DIGITAL_SIGNATURE = 0x0008,
    INPUT_HAS_MULTIPLE_IMAGES = 0x0010,
    INPUT_HAS_APNG = 0x0020,
    INPUT_HAS_STRIPPED_DATA = 0x0040,
    INPUT_HAS_JUNK = 0x0080,
    INPUT_HAS_ERRORS = 0x0100,
    OUTPUT_NEEDS_NEW_FILE = 0x1000,
    OUTPUT_NEEDS_NEW_IDAT = 0x2000,
    OUTPUT_HAS_ERRORS = 0x4000
};
 struct opng_engine_struct
{
    int started;
} engine;
 struct opng_summary_struct
{
    unsigned int file_count;
    unsigned int err_count;
    unsigned int fix_count;
    unsigned int snip_count;
} summary;
 struct opng_options options;
 void (*usr_printf)(const char *fmt, ...);
 void (*usr_print_cntrl)(int cntrl_code);
 void (*usr_progress)(unsigned long num, unsigned long denom);
 void (*usr_panic)(const char *msg);
int
opng_initialize(const struct opng_options *init_options,
                const struct opng_ui *init_ui)
{
    usr_printf = init_ui->printf_fn;
    usr_print_cntrl = init_ui->print_cntrl_fn;
    usr_progress = init_ui->progress_fn;
    usr_panic = init_ui->panic_fn;
    if (usr_printf == ((void*)0) ||
        usr_print_cntrl == ((void*)0) ||
        usr_progress == ((void*)0) ||
        usr_panic == ((void*)0))
       return -1;
    options = *init_options;
    if (options.optim_level == 0)
    {
        options.nb = options.nc = options.np = 1;
        options.nz = 1;
    }
    memset(&summary, 0, sizeof(summary));
    engine.started = 1;
    return 0;
}
