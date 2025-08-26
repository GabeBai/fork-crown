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
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
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
   typedef unsigned int png_uint_32;
typedef png_byte * png_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
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
 const png_byte sig_bKGD[4] = { 0x62, 0x4b, 0x47, 0x44 };
 const png_byte sig_hIST[4] = { 0x68, 0x49, 0x53, 0x54 };
 const png_byte sig_sBIT[4] = { 0x73, 0x42, 0x49, 0x54 };
 const png_byte sig_dSIG[4] = { 0x64, 0x53, 0x49, 0x47 };
 const png_byte sig_fdAT[4] = { 0x66, 0x64, 0x41, 0x54 };
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
 struct opng_options options;
 void
opng_handle_chunk(png_structp png_ptr, png_bytep chunk_type)
{
    int keep;
    if (opng_is_image_chunk(chunk_type))
        return;
    if (options.strip_all)
    {
        process.status |= INPUT_HAS_STRIPPED_DATA | INPUT_HAS_JUNK;
        opng_set_keep_unknown_chunk(png_ptr,
                                    1, chunk_type);
        return;
    }
    if (memcmp(chunk_type, sig_bKGD, 4) == 0 ||
        memcmp(chunk_type, sig_hIST, 4) == 0 ||
        memcmp(chunk_type, sig_sBIT, 4) == 0)
        return;
    keep = 3;
    if (memcmp(chunk_type, sig_dSIG, 4) == 0)
        process.status |= INPUT_HAS_DIGITAL_SIGNATURE;
    else if (opng_is_apng_chunk(chunk_type))
    {
        process.status |= INPUT_HAS_APNG;
        if (memcmp(chunk_type, sig_fdAT, 4) == 0)
            process.status |= INPUT_HAS_MULTIPLE_IMAGES;
        if (options.snip)
        {
            process.status |= INPUT_HAS_JUNK;
            keep = 1;
        }
    }
    opng_set_keep_unknown_chunk(png_ptr, keep, chunk_type);
}
