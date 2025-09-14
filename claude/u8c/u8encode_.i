struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
int u8encode_(int ch, char *s);
int u8encode_(int ch, char *s)
{
  int len = -1;
  char t[8];
  if (s == ((void*)0)) s = t;
  if (ch == 0) {
    len=2;
    *s++ = 0xC0;
    *s++ = 0x80;
  }
  else if (ch < 0x80) {
    len = 1;
    *s++ = ch;
  }
  else if (ch < 0x0800) {
    len = 2;
    *s++ = 0xC0 | (ch >> 6);
    *s++ = 0x80 | (ch & 0x3F);
  }
  else if (ch < 0x10000) {
    len = 3;
    *s++ = 0xE0 | (ch >> 12);
    *s++ = 0x80 | ((ch >> 6 ) & 0x3F);
    *s++ = 0x80 | (ch & 0x3F);
  } else if (ch < 0x110000) {
    len = 4;
    *s++ = 0xF0 | (ch >> 18);
    *s++ = 0x80 | ((ch >> 12) & 0x3F);
    *s++ = 0x80 | ((ch >> 6 ) & 0x3F);
    *s++ = 0x80 | (ch & 0x3F);
  }
  *s = '\0';
  return len;
}
