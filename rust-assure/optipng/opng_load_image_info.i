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
typedef struct png_info_def png_info;
typedef png_info * png_infop;
typedef const png_struct * __restrict png_const_structrp;
typedef png_info * __restrict png_inforp;
typedef const png_info * __restrict png_const_inforp;
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
typedef png_unknown_chunk * * png_unknown_chunkpp;
extern png_bytepp ( png_get_rows) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_uint_32 ( png_get_bKGD) (png_const_structrp png_ptr, png_inforp info_ptr, png_color_16p *background);
extern png_uint_32 ( png_get_hIST) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_16p *hist);
extern png_uint_32 ( png_get_IHDR) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *width, png_uint_32 *height, int *bit_depth, int *color_type, int *interlace_method, int *compression_method, int *filter_method);
extern png_uint_32 ( png_get_PLTE) (png_const_structrp png_ptr, png_inforp info_ptr, png_colorp *palette, int *num_palette);
extern png_uint_32 ( png_get_sBIT) (png_const_structrp png_ptr, png_inforp info_ptr, png_color_8p *sig_bit);
extern png_uint_32 ( png_get_tRNS) (png_const_structrp png_ptr, png_inforp info_ptr, png_bytep *trans_alpha, int *num_trans, png_color_16p *trans_color);
extern int ( png_get_unknown_chunks) (png_const_structrp png_ptr, png_inforp info_ptr, png_unknown_chunkpp entries);
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
 void
opng_load_image_info(png_structp png_ptr, png_infop info_ptr, int load_meta)
{
    memset(&image, 0, sizeof(image));
    png_get_IHDR(png_ptr, info_ptr,
        &image.width, &image.height, &image.bit_depth, &image.color_type,
        &image.interlace_type, &image.compression_type, &image.filter_type);
    image.row_pointers = png_get_rows(png_ptr, info_ptr);
    png_get_PLTE(png_ptr, info_ptr, &image.palette, &image.num_palette);
    if (png_get_tRNS(png_ptr, info_ptr,
        &image.trans_alpha, &image.num_trans, &image.trans_color_ptr))
    {
        if (image.trans_color_ptr != ((void*)0))
        {
            image.trans_color = *image.trans_color_ptr;
            image.trans_color_ptr = &image.trans_color;
        }
    }
    if (!load_meta)
        return;
    if (png_get_bKGD(png_ptr, info_ptr, &image.background_ptr))
    {
        image.background = *image.background_ptr;
        image.background_ptr = &image.background;
    }
    png_get_hIST(png_ptr, info_ptr, &image.hist);
    if (png_get_sBIT(png_ptr, info_ptr, &image.sig_bit_ptr))
    {
        image.sig_bit = *image.sig_bit_ptr;
        image.sig_bit_ptr = &image.sig_bit;
    }
    image.num_unknowns =
        png_get_unknown_chunks(png_ptr, info_ptr, &image.unknowns);
}
