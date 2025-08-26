union pthread_attr_t
{
  char __size[56];
  long int __align;
};
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
const char * csv_strerror(int error);
 const char *csv_errors[] = {"success",
                             "error parsing data while strict checking enabled",
                             "memory exhausted while increasing buffer size",
                             "data size too large",
                             "invalid status code"};
const char *
csv_strerror(int status)
{
  if (status >= 4 || status < 0)
    return csv_errors[4];
  else
    return csv_errors[status];
}
