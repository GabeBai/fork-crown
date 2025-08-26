typedef long unsigned int size_t;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
char *u8strncpy(char *dest, const char *src, size_t n);
char *u8strncat(char *dest, const char *src, size_t n);
char *u8strncat(char *dest, const char *src, size_t n)
{
  char *d = dest;
  while (*d) d++;
  u8strncpy(d,src,n);
  d[n] = '\0';
  return dest;
}
