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
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));
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
typedef size_t png_size_t;
   typedef png_size_t png_alloc_size_t;
typedef void * png_voidp;
typedef png_byte * png_bytep;
typedef const png_byte * png_const_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
typedef png_struct * * png_structpp;
typedef struct png_info_def png_info;
typedef png_info * * png_infopp;
typedef png_struct * __restrict png_structrp;
typedef const png_struct * __restrict png_const_structrp;
typedef png_info * __restrict png_inforp;
typedef void ( *png_error_ptr) (png_structp, png_const_charp);
typedef void ( *png_rw_ptr) (png_structp, png_bytep, png_size_t);
typedef void ( *png_flush_ptr) (png_structp);
extern __attribute__((__malloc__)) png_structp ( png_create_write_struct) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn);
extern void ( png_write_sig) (png_structrp png_ptr);
extern void ( png_write_chunk) (png_structrp png_ptr, png_const_bytep chunk_name, png_const_bytep data, png_size_t length);
extern void ( png_destroy_write_struct) (png_structpp png_ptr_ptr, png_infopp info_ptr_ptr);
extern void ( png_set_write_fn) (png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr write_data_fn, png_flush_ptr output_flush_fn);
extern __attribute__((__malloc__)) png_voidp ( png_malloc) (png_const_structrp png_ptr, png_alloc_size_t size);
extern void ( png_free) (png_const_structrp png_ptr, png_voidp ptr);
extern void ( png_free_data) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 free_me, int num);
extern __attribute__((__noreturn__)) void ( png_error) (png_const_structrp png_ptr, png_const_charp error_message);
extern void ( png_warning) (png_const_structrp png_ptr, png_const_charp warning_message);
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
 const png_byte sig_IEND[4] = { 0x49, 0x45, 0x4e, 0x44 };
 png_structp write_ptr;
 void
opng_copy_file(FILE *infile, FILE *outfile)
{
    volatile png_bytep buf;
    const png_uint_32 buf_size_incr = 0x1000;
    png_uint_32 buf_size, length;
    png_byte chunk_hdr[8];
    const char * volatile err_msg;
    write_ptr = png_create_write_struct("1.6.21",
        ((void*)0), opng_error, opng_warning);
    if (write_ptr == ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Out of memory";
    opng_init_write_data();
    png_set_write_fn(write_ptr, outfile, opng_write_data, ((void*)0));
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (_setjmp (exception__env) == 0) { do
    {
        buf = ((void*)0);
        buf_size = 0;
        png_write_sig(write_ptr);
        do
        {
            if (fread(chunk_hdr, 8, 1, infile) != 1)
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Read error";
            length = (((png_uint_32)(*(chunk_hdr)) << 24) + ((png_uint_32)(*((chunk_hdr) + 1)) << 16) + ((png_uint_32)(*((chunk_hdr) + 2)) << 8) + ((png_uint_32)(*((chunk_hdr) + 3))));
            if (length > ((png_uint_32)0x7fffffffL))
            {
                if (buf == ((void*)0) && length == 0x89504e47UL)
                    continue;
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Data error";
            }
            if (length + 4 > buf_size)
            {
                png_free(write_ptr, buf);
                buf_size = (((length + 4) + (buf_size_incr - 1))
                            / buf_size_incr) * buf_size_incr;
                buf = (png_bytep)png_malloc(write_ptr, buf_size);
            }
            if (fread(buf, length + 4, 1, infile) != 1)
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Read error";
            png_write_chunk(write_ptr, chunk_hdr + 4, buf, length);
        } while (memcmp(chunk_hdr + 4, sig_IEND, 4) != 0);
        err_msg = ((void*)0);
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
    }
    png_free(write_ptr, buf);
    png_destroy_write_struct(&write_ptr, ((void*)0));
    if (err_msg != ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
}
