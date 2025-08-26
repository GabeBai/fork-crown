typedef long unsigned int size_t;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
int csv_fwrite(FILE *fp, const void *src, size_t src_size);
int csv_fwrite2(FILE *fp, const void *src, size_t src_size, unsigned char quote);
int
csv_fwrite (FILE *fp, const void *src, size_t src_size)
{
  return csv_fwrite2(fp, src, src_size, 0x22);
}
