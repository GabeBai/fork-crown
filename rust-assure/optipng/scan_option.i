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
extern int tolower (int __c) __attribute__ ((__nothrow__ ));
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
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
 typedef unsigned char png_byte;
typedef png_byte * png_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
struct internal_state;
 int
scan_option(const char *str,
            char opt_buf[], size_t opt_buf_size, const char **opt_arg_ptr)
{
    const char *ptr;
    unsigned int opt_len;
    if (str[0] != '-' || str[1] == 0)
        return 0;
    opt_len = 0;
    ptr = str + 1;
    while (*ptr == '-')
        ++ptr;
    if (*ptr == 0)
        --ptr;
    for ( ; ; )
    {
        if (opt_len < opt_buf_size)
            opt_buf[opt_len] = (char)tolower(*ptr);
        ++opt_len;
        ++ptr;
        if (*ptr == 0 || ((*__ctype_b_loc ())[(int) ((*ptr))] & (unsigned short int) _ISspace))
        {
            while (((*__ctype_b_loc ())[(int) ((*ptr))] & (unsigned short int) _ISspace))
                ++ptr;
            *opt_arg_ptr = (*ptr != 0) ? ptr : ((void*)0);
            break;
        }
        if (*ptr == '=')
        {
            ++ptr;
            *opt_arg_ptr = ptr;
            break;
        }
    }
    if (opt_buf_size > 0)
    {
        if (opt_len < opt_buf_size)
            opt_buf[opt_len] = '\0';
        else
            opt_buf[opt_buf_size - 1] = '\0';
    }
    return 1;
}
