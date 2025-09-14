typedef long unsigned int size_t;
typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef long int __time_t;
typedef long int __syscall_slong_t;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef __gnuc_va_list va_list;
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
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
 int
opng_snprintf_impl(char *buffer, size_t buffer_size, const char *format, ...)
{
    va_list arg_ptr;
    int result;
    __builtin_va_start(arg_ptr, format);
    result = vsnprintf(buffer, buffer_size, format, arg_ptr);
    __builtin_va_end(arg_ptr);
    if (result < 0 || (size_t)result >= buffer_size)
    {
        if (buffer_size > 0)
            buffer[buffer_size - 1] = '\0';
        return -1;
    }
    return result;
}
