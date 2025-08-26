typedef long unsigned int size_t;
typedef unsigned long long opng_ullong_t;
typedef long int __time_t;
typedef long int __syscall_slong_t;
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
typedef opng_ullong_t opng_ulongest_impl_t;
 int
opng_sprint_uratio_impl(char *buffer, size_t buffer_size,
                        opng_ulongest_impl_t num, opng_ulongest_impl_t denom,
                        int always_percent)
{
    opng_ulongest_impl_t integer_part, remainder;
    unsigned int fractional_part, scale;
    double scaled_ratio;
    if (denom == 0)
        return opng_snprintf_impl(buffer, buffer_size,
                                  num == 0 ? "??%%" : "INFTY%%");
    if (num < denom && denom / (denom - num) < 20000)
    {
        scale = 10000;
        scaled_ratio = ((double)num * (double)scale) / (double)denom;
        fractional_part = (unsigned int)(scaled_ratio + 0.5);
        if (fractional_part >= scale)
            fractional_part = scale - 1;
        return opng_snprintf_impl(buffer, buffer_size,
                                  "%u.%02u%%",
                                  fractional_part / 100,
                                  fractional_part % 100);
    }
    integer_part = num / denom;
    remainder = num % denom;
    scale = 100;
    scaled_ratio = ((double)remainder * (double)scale) / (double)denom;
    fractional_part = (unsigned int)(scaled_ratio + 0.5);
    if (fractional_part >= scale)
    {
        fractional_part = 0;
        ++integer_part;
    }
    if (always_percent)
        return opng_snprintf_impl(buffer, buffer_size,
                                  "%" "ll" "u%02u%%",
                                  integer_part, fractional_part);
    if (integer_part < 100)
        return opng_snprintf_impl(buffer, buffer_size,
                                  "%" "ll" "u.%02ux",
                                  integer_part, fractional_part);
    integer_part = num / denom;
    if (remainder > (denom - 1) / 2)
        ++integer_part;
    return opng_snprintf_impl(buffer, buffer_size,
                              "%" "ll" "ux",
                              integer_part);
}
