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
url_data_t *
url_parse (const char* url);
char *
url_get_path (const char* url);
void
url_free (url_data_t* data);
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
url_get_path (const char* url) {
  do{ url_data_t* data = url_parse(url); char* out = data && data->path ? strdup(data->path) : ((void*)0); url_free(data); return out; }while(0);
}
