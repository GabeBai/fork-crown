typedef long unsigned int size_t;
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ ));
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ ));
struct url_key_value;
char *
url_get_scheme (const char* url);
_Bool
url_is_protocol (const char* str);
enum Category
{
  Scheme = 0x01,
  Unreserved = 0x02,
  GenDelim = 0x04,
  SubDelim = 0x08,
  PCharSlash = 0x10,
  HexDigit = 0x20,
  Query = 0x40,
  Fragment = 0x40,
  Userinfo = 0x80,
  IPv6Char = 0x100,
};
struct url_key_value
{
  const char* key;
  const char* value;
};
char *
url_get_scheme (const char* url) {
  char *protocol = (char *) malloc(32);
  if (!protocol) return ((void*)0);
  sscanf(url, "%[^://]", protocol);
  if (url_is_protocol(protocol)) return protocol;
  free(protocol);
  return ((void*)0);
}
