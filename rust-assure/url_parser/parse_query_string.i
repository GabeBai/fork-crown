typedef long unsigned int size_t;
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
extern FILE *stderr;
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...) __attribute__ ((__nonnull__ (1)));
struct url_key_value;
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
struct url_key_value* parse_query_string(char* begin, char* end)
{
  unsigned elements = 1;
  for(const char* p = begin; p!=end; ++p)
  {
    if(*p=='&' || *p==';')
      ++elements;
  }
  struct url_key_value* kv = calloc(elements+1, sizeof(struct url_key_value));
  if(!kv)
    return ((void*)0);
  char* p = begin;
  for(unsigned element=0; (element<=elements) && (p<end); ++element)
  {
    char* key = p;
    char* kv_end = scan_part(p, Query, '&', ';');
    if(!kv_end)
      do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 153 , p); goto error; }while(0);
    *kv_end = '\0';
    char* key_end = scan_part(p, Query, '=', '\0');
    const _Bool has_value = (*key_end == '=');
    *key_end = '\0';
    kv[element].key = decode_percent(key);
    if(has_value)
    {
      char* value = key_end+1;
      kv[element].value = decode_percent(value);
    }else{
      kv[element].value = key_end;
    }
    p = kv_end+1;
  }
  return kv;
error:
  free(kv);
  return ((void*)0);
}
