struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
int u8strlen(const char *s);
int u8strlen(const char *s)
{
  int len=0;
  while (*s) {
    if ((*s & 0xC0) != 0x80) len++ ;
    s++;
  }
  return len;
}
