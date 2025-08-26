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
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
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
   typedef unsigned short png_uint_16;
   typedef unsigned int png_uint_32;
typedef size_t png_size_t;
typedef void * png_voidp;
typedef png_byte * png_bytep;
typedef const png_byte * png_const_bytep;
typedef png_uint_16 * png_uint_16p;
typedef const char * png_const_charp;
typedef png_byte * * png_bytepp;
typedef const char * * png_const_charpp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
typedef png_struct * * png_structpp;
typedef struct png_info_def png_info;
typedef png_info * png_infop;
typedef png_info * * png_infopp;
typedef png_struct * __restrict png_structrp;
typedef const png_struct * __restrict png_const_structrp;
typedef png_info * __restrict png_inforp;
typedef struct png_color_struct
{
   png_byte red;
   png_byte green;
   png_byte blue;
} png_color;
typedef png_color * png_colorp;
typedef struct png_color_16_struct
{
   png_byte index;
   png_uint_16 red;
   png_uint_16 green;
   png_uint_16 blue;
   png_uint_16 gray;
} png_color_16;
typedef png_color_16 * png_color_16p;
typedef struct png_color_8_struct
{
   png_byte red;
   png_byte green;
   png_byte blue;
   png_byte gray;
   png_byte alpha;
} png_color_8;
typedef png_color_8 * png_color_8p;
typedef struct png_unknown_chunk_t
{
    png_byte name[5];
    png_byte *data;
    png_size_t size;
    png_byte location;
}
png_unknown_chunk;
typedef png_unknown_chunk * png_unknown_chunkp;
typedef void ( *png_error_ptr) (png_structp, png_const_charp);
typedef void ( *png_rw_ptr) (png_structp, png_bytep, png_size_t);
extern __attribute__((__malloc__)) png_structp ( png_create_read_struct) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn);
extern __attribute__((__malloc__)) png_infop ( png_create_info_struct) (png_const_structrp png_ptr);
extern void ( png_destroy_read_struct) (png_structpp png_ptr_ptr, png_infopp info_ptr_ptr, png_infopp end_info_ptr_ptr);
extern void ( png_set_read_fn) (png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr read_data_fn);
extern void ( png_free_data) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 free_me, int num);
extern void ( png_data_freer) (png_const_structrp png_ptr, png_inforp info_ptr, int freer, png_uint_32 mask);
extern __attribute__((__noreturn__)) void ( png_error) (png_const_structrp png_ptr, png_const_charp error_message);
extern void ( png_warning) (png_const_structrp png_ptr, png_const_charp warning_message);
extern void ( png_set_keep_unknown_chunks) (png_structrp png_ptr, int keep, png_const_bytep chunk_list, int num_chunks);
extern void ( png_set_user_limits) (png_structrp png_ptr, png_uint_32 user_width_max, png_uint_32 user_height_max);
int opng_validate_image(png_structp png_ptr, png_infop info_ptr);
png_uint_32 opng_reduce_image(png_structp png_ptr, png_infop info_ptr,
   png_uint_32 reductions);
typedef long osys_foffset_t;
typedef unsigned long osys_fsize_t;
int
osys_fgetsize(FILE *stream, osys_fsize_t *size);
int pngx_read_image(png_structp png_ptr, png_infop info_ptr,
                           png_const_charpp fmt_name_ptr,
                           png_const_charpp fmt_long_name_ptr);
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
 struct opng_image_struct
{
    png_uint_32 width;
    png_uint_32 height;
    int bit_depth;
    int color_type;
    int compression_type;
    int filter_type;
    int interlace_type;
    png_bytepp row_pointers;
    png_colorp palette;
    int num_palette;
    png_color_16p background_ptr;
    png_color_16 background;
    png_uint_16p hist;
    png_color_8p sig_bit_ptr;
    png_color_8 sig_bit;
    png_bytep trans_alpha;
    int num_trans;
    png_color_16p trans_color_ptr;
    png_color_16 trans_color;
    png_unknown_chunkp unknowns;
    int num_unknowns;
} image;
 struct opng_options options;
 void (*usr_printf)(const char *fmt, ...);
 void (*usr_panic)(const char *msg);
 png_structp read_ptr;
 png_infop read_info_ptr;
 void
opng_read_file(FILE *infile)
{
    const char *fmt_name;
    int num_img;
    png_uint_32 reductions;
    const char * volatile err_msg;
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (_setjmp (exception__env) == 0) { do
    {
        read_ptr = png_create_read_struct("1.6.21", ((void*)0),
            opng_error, opng_warning);
        read_info_ptr = png_create_info_struct(read_ptr);
        if (read_info_ptr == ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Out of memory";
        png_set_keep_unknown_chunks(read_ptr,
                                    3, ((void*)0), 0);
        png_set_user_limits(read_ptr, ((png_uint_32)0x7fffffffL), ((png_uint_32)0x7fffffffL));
        opng_init_read_data();
        png_set_read_fn(read_ptr, infile, opng_read_data);
        fmt_name = ((void*)0);
        num_img = pngx_read_image(read_ptr, read_info_ptr, &fmt_name, ((void*)0));
        if (num_img <= 0)
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Unrecognized image file format";
        if (num_img > 1)
            process.status |= INPUT_HAS_MULTIPLE_IMAGES;
        if ((process.status & INPUT_IS_PNG_FILE) &&
            (process.status & INPUT_HAS_MULTIPLE_IMAGES))
        {
            fmt_name = (process.status & INPUT_HAS_PNG_SIGNATURE) ?
                       "APNG" : "APNG datastream";
        }
        { if (!(fmt_name != ((void*)0))) usr_panic("No format name from pngxtern"); };
        if (process.in_file_size == 0)
        {
            if (osys_fgetsize(infile, &process.in_file_size) < 0)
            {
                opng_print_warning("Can't get the correct file size");
                process.in_file_size = 0;
            }
        }
        err_msg = ((void*)0);
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        if (opng_validate_image(read_ptr, read_info_ptr))
        {
           png_warning(read_ptr, err_msg);
           err_msg = ((void*)0);
        }
    }
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (_setjmp (exception__env) == 0) { do
    {
        if (err_msg != ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
        if (strcmp(fmt_name, "PNG") != 0)
        {
            usr_printf("Importing %s", fmt_name);
            if (process.status & INPUT_HAS_MULTIPLE_IMAGES)
            {
                if (!(process.status & INPUT_IS_PNG_FILE))
                    usr_printf(" (multi-image or animation)");
                if (options.snip)
                    usr_printf("; snipping...");
            }
            usr_printf("\n");
        }
        opng_load_image_info(read_ptr, read_info_ptr, 1);
        opng_print_image_info(1, 1, 1, 1);
        usr_printf("\n");
        reductions = ((0x0001 | 0x0002) | (0x0004 | 0x0008 | 0x0010 | 0x0020 | 0x0040 | 0x0080) | (0x0100 | 0x0200) | 0x1000) & ~0x1000;
        if (options.nb)
            reductions &= ~(0x0001 | 0x0002);
        if (options.nc)
            reductions &= ~(0x0004 | 0x0008 | 0x0010 | 0x0020 | 0x0040 | 0x0080);
        if (options.np)
            reductions &= ~(0x0100 | 0x0200);
        if (options.nz && (process.status & INPUT_HAS_PNG_DATASTREAM))
        {
            reductions = 0x0000;
        }
        if (process.status & INPUT_HAS_DIGITAL_SIGNATURE)
        {
            reductions = 0x0000;
        }
        if ((process.status & INPUT_IS_PNG_FILE) &&
            (process.status & INPUT_HAS_MULTIPLE_IMAGES) &&
            (reductions != 0x0000) && !options.snip)
        {
            usr_printf(
                "Can't reliably reduce APNG file; disabling reductions.\n"
                "(Did you want to -snip and optimize the first frame?)\n");
            reductions = 0x0000;
        }
        process.reductions =
            opng_reduce_image(read_ptr, read_info_ptr, reductions);
        if (process.reductions != 0x0000)
        {
            opng_load_image_info(read_ptr, read_info_ptr, 1);
            usr_printf("Reducing image to ");
            opng_print_image_info(0, 1, 1, 0);
            usr_printf("\n");
        }
        if (options.interlace >= 0 &&
            image.interlace_type != options.interlace)
        {
            image.interlace_type = options.interlace;
            process.status |= OUTPUT_NEEDS_NEW_IDAT;
        }
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        png_data_freer(read_ptr, read_info_ptr,
                       1, 0x7fff);
        png_destroy_read_struct(&read_ptr, &read_info_ptr, ((void*)0));
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
    }
    png_data_freer(read_ptr, read_info_ptr,
                   2, 0x7fff);
    png_destroy_read_struct(&read_ptr, &read_info_ptr, ((void*)0));
}
