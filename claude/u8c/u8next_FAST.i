struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
int u8next_FAST(const char *txt, int *ch);
int u8next_FAST(const char *txt, int *ch)
{
  int len = 0;
  unsigned char *s = (unsigned char *)txt;
  unsigned char first = *s;
  int val = 0;
  if (first) {
    val = first;
    if (first > 0x7F) {
       val = *++s & 0x3F;
            if ((first & 0xF8) == 0xF0) { val |= (first & 0x07)<<6; goto L4;}
       else if ((first & 0xF0) == 0xE0) { val |= (first & 0x0F)<<6; goto L3;}
       else { val |= (first & 0x1F)<<6; goto L2;}
       L4: val <<= 6; if (*s) s++; val |= (*s & 0x3F);
       L3: val <<= 6; if (*s) s++; val |= (*s & 0x3F);
       L2: ;
    }
    len = 1+(s-(unsigned char *)txt);
  }
  if (ch) *ch = val;
  return len;
}
