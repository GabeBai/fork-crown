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
 void (*usr_printf)(const char *fmt, ...);
 void
opng_print_image_info(int show_dim, int show_depth, int show_type,
                      int show_interlaced)
{
     const int type_channels[8] = {1, 0, 3, 1, 2, 0, 4, 0};
    int channels, printed;
    printed = 0;
    if (show_dim)
    {
        printed = 1;
        usr_printf("%lux%lu pixels",
                   (unsigned long)image.width, (unsigned long)image.height);
    }
    if (show_depth)
    {
        if (printed)
            usr_printf(", ");
        printed = 1;
        channels = type_channels[image.color_type & 7];
        if (channels != 1)
            usr_printf("%dx%d bits/pixel", channels, image.bit_depth);
        else if (image.bit_depth != 1)
            usr_printf("%d bits/pixel", image.bit_depth);
        else
            usr_printf("1 bit/pixel");
    }
    if (show_type)
    {
        if (printed)
            usr_printf(", ");
        printed = 1;
        if (image.color_type & 1)
        {
            if (image.num_palette == 1)
                usr_printf("1 color");
            else
                usr_printf("%d colors", image.num_palette);
            if (image.num_trans > 0)
                usr_printf(" (%d transparent)", image.num_trans);
            usr_printf(" in palette");
        }
        else
        {
            usr_printf((image.color_type & 2) ?
                       "RGB" : "grayscale");
            if (image.color_type & 4)
                usr_printf("+alpha");
            else if (image.trans_color_ptr != ((void*)0))
                usr_printf("+transparency");
        }
    }
    if (show_interlaced)
    {
        if (image.interlace_type != 0)
        {
            if (printed)
                usr_printf(", ");
            usr_printf("interlaced");
        }
    }
}
