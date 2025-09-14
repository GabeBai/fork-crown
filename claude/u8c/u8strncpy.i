typedef long unsigned int size_t;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
char *u8strncpy(char *dest, const char *src, size_t n);
char *u8strncpy(char *dest, const char *src, size_t n)
{
  int k = n-1;
  int i;
  if (n) {
    dest[k] = 0;
    strncpy(dest,src,n);
    if (dest[k] & 0x80) {
      for (i=k; (i>0) && ((k-i) < 3) && ((dest[i] & 0xC0) == 0x80); i--) ;
      switch(k-i) {
        case 0: dest[i] = '\0'; break;
        case 1: if ( (dest[i] & 0xE0) != 0xC0) dest[i] = '\0'; break;
        case 2: if ( (dest[i] & 0xF0) != 0xE0) dest[i] = '\0'; break;
        case 3: if ( (dest[i] & 0xF8) != 0xF0) dest[i] = '\0'; break;
      }
    }
  }
  return dest;
}
