extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
struct url_key_value;
typedef struct url_data {
  char* whole_url;
  const char* protocol;
  const char* userinfo;
  const char* host;
  const char* port;
  const char* path;
  const struct url_key_value* query;
  const char* fragment;
} url_data_t;
const char *
url_get_query_value (const url_data_t* url, const char* key);
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
const char *
url_get_query_value (const url_data_t* url, const char* key)
{
  if(url->query == ((void*)0))
    return ((void*)0);
  for( const struct url_key_value* kv = url->query; kv->key; ++kv)
  {
     if(strcmp(kv->key, key) == 0)
       return kv->value;
  }
  return ((void*)0);
}
