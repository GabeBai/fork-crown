typedef long unsigned int size_t;
typedef long int __time_t;
typedef long int __syscall_slong_t;
struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
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
   typedef unsigned int png_uint_32;
typedef size_t png_size_t;
typedef void * png_voidp;
typedef png_byte * png_bytep;
typedef const png_byte * png_const_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
typedef png_struct * * png_structpp;
typedef struct png_info_def png_info;
typedef png_info * png_infop;
typedef png_info * * png_infopp;
typedef png_struct * __restrict png_structrp;
typedef const png_struct * __restrict png_const_structrp;
typedef png_info * __restrict png_inforp;
typedef void ( *png_error_ptr) (png_structp, png_const_charp);
typedef void ( *png_rw_ptr) (png_structp, png_bytep, png_size_t);
typedef void ( *png_flush_ptr) (png_structp);
extern __attribute__((__malloc__)) png_structp ( png_create_write_struct) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn);
extern __attribute__((__malloc__)) png_infop ( png_create_info_struct) (png_const_structrp png_ptr);
extern void ( png_destroy_write_struct) (png_structpp png_ptr_ptr, png_infopp info_ptr_ptr);
extern void ( png_set_filter) (png_structrp png_ptr, int method, int filters);
extern void ( png_set_compression_level) (png_structrp png_ptr, int level);
extern void ( png_set_compression_mem_level) (png_structrp png_ptr, int mem_level);
extern void ( png_set_compression_strategy) (png_structrp png_ptr, int strategy);
extern void ( png_set_compression_window_bits) (png_structrp png_ptr, int window_bits);
extern void ( png_set_write_fn) (png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr write_data_fn, png_flush_ptr output_flush_fn);
extern void ( png_free_data) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 free_me, int num);
extern __attribute__((__noreturn__)) void ( png_error) (png_const_structrp png_ptr, png_const_charp error_message);
extern void ( png_warning) (png_const_structrp png_ptr, png_const_charp warning_message);
extern void ( png_set_keep_unknown_chunks) (png_structrp png_ptr, int keep, png_const_bytep chunk_list, int num_chunks);
extern void ( png_write_png) (png_structrp png_ptr, png_inforp info_ptr, int transforms, png_voidp params);
extern void ( png_set_user_limits) (png_structrp png_ptr, png_uint_32 user_width_max, png_uint_32 user_height_max);
typedef long osys_foffset_t;
typedef unsigned long osys_fsize_t;
struct internal_state;
typedef long int __jmp_buf[8];
struct __jmp_buf_tag
  {
    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };
typedef struct __jmp_buf_tag jmp_buf[1];
extern int _setjmp (struct __jmp_buf_tag __env[1]) __attribute__ ((__nothrow__));
extern void longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
struct exception_context { jmp_buf *penv; int caught; volatile struct { const char * etmp; } v; };
struct exception_context the_exception_context[1];
 const int filter_table[5 + 1] =
{
    0x08,
    0x10,
    0x20,
    0x40,
    0x80,
    (0x08 | 0x10 | 0x20 | 0x40 | 0x80)
};
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
 struct opng_process_struct
{
    unsigned int status;
    int num_iterations;
    osys_foffset_t in_datastream_offset;
    osys_fsize_t in_file_size, out_file_size;
    osys_fsize_t in_idat_size, out_idat_size;
    osys_fsize_t best_idat_size, max_idat_size;
    png_uint_32 in_plte_trns_size, out_plte_trns_size;
    png_uint_32 reductions;
    opng_bitset_t compr_level_set, mem_level_set, strategy_set, filter_set;
    int best_compr_level, best_mem_level, best_strategy, best_filter;
} process;
 const osys_fsize_t idat_size_max = ((png_uint_32)0x7fffffffL);
 struct opng_options options;
 void (*usr_panic)(const char *msg);
 png_structp write_ptr;
 png_infop write_info_ptr;
 void
opng_write_file(FILE *outfile,
                int compression_level, int memory_level,
                int compression_strategy, int filter)
{
    const char * volatile err_msg;
    { if (!(compression_level >= 1 && compression_level <= 9 && memory_level >= 1 && memory_level <= 9 && compression_strategy >= 0 && compression_strategy <= 3 && filter >= 0 && filter <= 5)) usr_panic("Invalid encoding parameters"); };
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (_setjmp (exception__env) == 0) { do
    {
        write_ptr = png_create_write_struct("1.6.21",
            ((void*)0), opng_error, opng_warning);
        write_info_ptr = png_create_info_struct(write_ptr);
        if (write_info_ptr == ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Out of memory";
        png_set_compression_level(write_ptr, compression_level);
        png_set_compression_mem_level(write_ptr, memory_level);
        png_set_compression_strategy(write_ptr, compression_strategy);
        png_set_filter(write_ptr, 0, filter_table[filter]);
        if (compression_strategy != 2 &&
            compression_strategy != 3)
        {
            if (options.window_bits > 0)
                png_set_compression_window_bits(write_ptr,
                                                options.window_bits);
        }
        else
        {
            png_set_compression_window_bits(write_ptr, 9);
        }
        png_set_keep_unknown_chunks(write_ptr,
                                    3, ((void*)0), 0);
        png_set_user_limits(write_ptr, ((png_uint_32)0x7fffffffL), ((png_uint_32)0x7fffffffL));
        opng_store_image_info(write_ptr, write_info_ptr, (outfile != ((void*)0)));
        opng_init_write_data();
        png_set_write_fn(write_ptr, outfile, opng_write_data, ((void*)0));
        png_write_png(write_ptr, write_info_ptr, 0, ((void*)0));
        err_msg = ((void*)0);
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        process.out_idat_size = idat_size_max + 1;
    }
    png_destroy_write_struct(&write_ptr, &write_info_ptr);
    if (err_msg != ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
}
