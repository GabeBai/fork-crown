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
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
unsigned int
opng_bitset_count(opng_bitset_t set);
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
typedef png_byte * png_bytep;
typedef png_uint_16 * png_uint_16p;
typedef const char * png_const_charp;
typedef png_byte * * png_bytepp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
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
 const struct opng_preset
{
    const char *compr_level;
    const char *mem_level;
    const char *strategy;
    const char *filter;
} presets[7 + 1] =
{
    { "", "", "", "" },
    { "", "", "", "" },
    { "9", "8", "0-", "0,5" },
    { "9", "8-9", "0-", "0,5" },
    { "9", "8", "0-", "0-" },
    { "9", "8-9", "0-", "0-" },
    { "1-9", "8", "0-", "0-" },
    { "1-9", "8-9", "0-", "0-" }
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
 void (*usr_panic)(const char *msg);
 void
opng_init_iterations(void)
{
    opng_bitset_t compr_level_set, mem_level_set, strategy_set, filter_set;
    opng_bitset_t strategy_singles_set;
    int preset_index;
    int t1, t2;
    if ((process.status & OUTPUT_NEEDS_NEW_IDAT) || options.full)
        process.max_idat_size = idat_size_max;
    else
    {
        { if (!(process.in_idat_size > 0)) usr_panic("No IDAT in input"); };
        process.max_idat_size =
            process.in_idat_size + process.in_plte_trns_size;
    }
    preset_index = options.optim_level;
    if (preset_index < 0)
        preset_index = 2;
    else if (preset_index > 7)
        preset_index = 7;
    opng_init_iteration(options.compr_level_set, ((1 << (9+1)) - (1 << 1)),
        presets[preset_index].compr_level, &compr_level_set);
    opng_init_iteration(options.mem_level_set, ((1 << (9+1)) - (1 << 1)),
        presets[preset_index].mem_level, &mem_level_set);
    opng_init_iteration(options.strategy_set, ((1 << (3+1)) - (1 << 0)),
        presets[preset_index].strategy, &strategy_set);
    opng_init_iteration(options.filter_set, ((1 << (5+1)) - (1 << 0)),
        presets[preset_index].filter, &filter_set);
    if (compr_level_set == 0)
        (*(&compr_level_set) |= (1U << (9)));
    if (mem_level_set == 0)
        (*(&mem_level_set) |= (1U << (8)));
    if (image.bit_depth < 8 || image.palette != ((void*)0))
    {
        if (strategy_set == 0)
            (*(&strategy_set) |= (1U << (0)));
        if (filter_set == 0)
            (*(&filter_set) |= (1U << (0)));
    }
    else
    {
        if (strategy_set == 0)
            (*(&strategy_set) |= (1U << (1)));
        if (filter_set == 0)
            (*(&filter_set) |= (1U << (5)));
    }
    process.compr_level_set = compr_level_set;
    process.mem_level_set = mem_level_set;
    process.strategy_set = strategy_set;
    process.filter_set = filter_set;
    strategy_singles_set = (1 << 2) | (1 << 3);
    t1 = opng_bitset_count(compr_level_set) *
         opng_bitset_count(strategy_set & ~strategy_singles_set);
    t2 = opng_bitset_count(strategy_set & strategy_singles_set);
    process.num_iterations =
        (t1 + t2) *
        opng_bitset_count(mem_level_set) * opng_bitset_count(filter_set);
    { if (!(process.num_iterations > 0)) usr_panic("Invalid iteration parameters"); };
}
