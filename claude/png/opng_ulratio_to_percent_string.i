typedef long unsigned int size_t;
typedef unsigned long long opng_ullong_t;
struct opng_ulratio
{
    unsigned long num;
    unsigned long denom;
};
int
opng_ulratio_to_percent_string(char *buffer, size_t buffer_size,
                               const struct opng_ulratio *ratio);
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
typedef opng_ullong_t opng_ulongest_impl_t;
int
opng_ulratio_to_percent_string(char *buffer, size_t buffer_size,
                               const struct opng_ulratio *ratio)
{
    opng_ulongest_impl_t num = ratio->num;
    opng_ulongest_impl_t denom = ratio->denom;
    return opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 1);
}
