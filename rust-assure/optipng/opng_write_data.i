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
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s) __attribute__ ((__nonnull__ (4)));
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
 typedef unsigned char png_byte;
   typedef unsigned int png_uint_32;
typedef void * png_voidp;
typedef png_byte * png_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
typedef const png_struct * __restrict png_const_structrp;
extern png_voidp ( png_get_io_ptr) (png_const_structrp png_ptr);
extern __attribute__((__noreturn__)) void ( png_error) (png_const_structrp png_ptr, png_const_charp error_message);
extern png_uint_32 ( png_get_io_state) (png_const_structrp png_ptr);
extern void ( png_save_uint_32) (png_bytep buf, png_uint_32 i);
typedef long osys_foffset_t;
typedef unsigned long osys_fsize_t;
osys_foffset_t
osys_ftello(FILE *stream);
size_t
osys_fwrite_at(FILE *stream, osys_foffset_t offset, int whence,
               const void *block, size_t blocksize);
typedef unsigned char Byte;
typedef unsigned int uInt;
typedef unsigned long uLong;
   typedef Byte Bytef;
struct internal_state;
extern uLong crc32 (uLong crc, const Bytef *buf, uInt len);
typedef long int __jmp_buf[8];
struct __jmp_buf_tag
  {
    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };
typedef struct __jmp_buf_tag jmp_buf[1];
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
 const png_byte sig_PLTE[4] = { 0x50, 0x4c, 0x54, 0x45 };
 const png_byte sig_tRNS[4] = { 0x74, 0x52, 0x4e, 0x53 };
 const png_byte sig_IDAT[4] = { 0x49, 0x44, 0x41, 0x54 };
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
 void (*usr_panic)(const char *msg);
 void
opng_write_data(png_structp png_ptr, png_bytep data, size_t length)
{
     int allow_crt_chunk;
     int crt_chunk_is_idat;
     osys_foffset_t crt_idat_offset;
     osys_fsize_t crt_idat_size;
     png_uint_32 crt_idat_crc;
    FILE *stream = (FILE *)png_get_io_ptr(png_ptr);
    int io_state = png_get_io_state(png_ptr);
    int io_state_loc = io_state & 0x00f0;
    png_bytep chunk_sig;
    png_byte buf[4];
    { if (!((io_state & 0x0002) && (io_state_loc != 0))) usr_panic("Incorrect info in png_ptr->io_state"); };
    if (io_state_loc == 0x0020)
    {
        { if (!(length == 8)) usr_panic("Writing chunk header, expecting 8 bytes"); };
        chunk_sig = data + 4;
        allow_crt_chunk = opng_allow_chunk(chunk_sig);
        if (memcmp(chunk_sig, sig_IDAT, 4) == 0)
        {
            crt_chunk_is_idat = 1;
            process.out_idat_size += (((png_uint_32)(*(data)) << 24) + ((png_uint_32)(*((data) + 1)) << 16) + ((png_uint_32)(*((data) + 2)) << 8) + ((png_uint_32)(*((data) + 3))));
            if (stream == ((void*)0))
            {
                if (process.out_idat_size > process.max_idat_size)
                    for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = ((void*)0);
            }
        }
        else
        {
            crt_chunk_is_idat = 0;
            if (memcmp(chunk_sig, sig_PLTE, 4) == 0 ||
                memcmp(chunk_sig, sig_tRNS, 4) == 0)
            {
                process.out_plte_trns_size += (((png_uint_32)(*(data)) << 24) + ((png_uint_32)(*((data) + 1)) << 16) + ((png_uint_32)(*((data) + 2)) << 8) + ((png_uint_32)(*((data) + 3)))) + 12;
            }
        }
    }
    else if (io_state_loc == 0x0080)
    {
        { if (!(length == 4)) usr_panic("Writing chunk CRC, expecting 4 bytes"); };
    }
    if (stream == ((void*)0))
        return;
    if (io_state_loc != 0x0010 && !allow_crt_chunk)
        return;
    switch (io_state_loc)
    {
        case 0x0020:
        {
            if (crt_chunk_is_idat)
            {
                if (crt_idat_offset == 0)
                {
                    crt_idat_offset = osys_ftello(stream);
                    if (process.best_idat_size > 0)
                    {
                        crt_idat_size = process.best_idat_size;
                    }
                    else
                    {
                        crt_idat_size = length;
                    }
                    png_save_uint_32(data, (png_uint_32)crt_idat_size);
                    crt_idat_crc = crc32(0, sig_IDAT, 4);
                }
                else
                {
                    return;
                }
            }
            else
            {
                if (crt_idat_offset != 0)
                {
                    png_save_uint_32(buf, crt_idat_crc);
                    if (fwrite(buf, 1, 4, stream) != 4)
                        io_state = 0;
                    process.out_file_size += 4;
                    if (process.out_idat_size != crt_idat_size)
                    {
                        { if (!(process.best_idat_size == 0)) usr_panic("Wrong guess of the output IDAT size"); };
                        opng_check_idat_size(process.out_idat_size);
                        png_save_uint_32(buf,
                                         (png_uint_32)process.out_idat_size);
                        if (osys_fwrite_at(stream, crt_idat_offset, 0,
                                           buf, 4) != 4)
                            io_state = 0;
                    }
                    if (io_state == 0)
                        png_error(png_ptr, "Can't finalize IDAT");
                    crt_idat_offset = 0;
                }
            }
            break;
        }
        case 0x0040:
        {
            if (crt_chunk_is_idat)
                crt_idat_crc = crc32(crt_idat_crc, data, length);
            break;
        }
        case 0x0080:
        {
            if (crt_chunk_is_idat)
                return;
            break;
        }
    }
    if (fwrite(data, 1, length, stream) != length)
        png_error(png_ptr, "Can't write the output file");
    process.out_file_size += length;
}
