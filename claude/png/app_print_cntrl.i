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
struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
extern int fputc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int fputs (const char *__restrict __s, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (2)));
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
typedef png_byte * png_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
struct internal_state;
 FILE *con_file;
 FILE *log_file;
 int start_of_line;
 void
app_print_cntrl(int cntrl_code)
{
    const char *con_str, *log_str;
    int i;
    if (cntrl_code == '\r')
    {
        con_str = "\r";
        log_str = "\n";
        start_of_line = 1;
    }
    else if (cntrl_code == '\v')
    {
        if (!start_of_line)
        {
            con_str = log_str = "\n";
            start_of_line = 1;
        }
        else
            con_str = log_str = "";
    }
    else if (cntrl_code < 0 && cntrl_code > -80 && start_of_line)
    {
        if (con_file != ((void*)0))
        {
            for (i = 0; i > cntrl_code; --i)
                fputc(' ', con_file);
        }
        con_str = "\r";
        log_str = "";
    }
    else
    {
        con_str = log_str = "<?>";
    }
    if (con_file != ((void*)0))
        fputs(con_str, con_file);
    if (log_file != ((void*)0))
        fputs(log_str, log_file);
}
