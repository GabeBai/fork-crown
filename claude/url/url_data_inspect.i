struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
extern int printf (const char *__restrict __format, ...);
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
void
url_data_inspect (const url_data_t* data);
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
void
url_data_inspect (const url_data_t* data) {
  printf("#url =>\n");
  do{ if(data->protocol) printf("    ." "protocol" ": \"%s\"\n", data->protocol); else printf("    ." "protocol" ": (NULL)\n"); }while(0);
  do{ if(data->host) printf("    ." "host" ": \"%s\"\n", data->host); else printf("    ." "host" ": (NULL)\n"); }while(0);
  do{ if(data->userinfo) printf("    ." "userinfo" ": \"%s\"\n", data->userinfo); else printf("    ." "userinfo" ": (NULL)\n"); }while(0);
  do{ if(data->host) printf("    ." "host" ": \"%s\"\n", data->host); else printf("    ." "host" ": (NULL)\n"); }while(0);
  do{ if(data->port) printf("    ." "port" ": \"%s\"\n", data->port); else printf("    ." "port" ": (NULL)\n"); }while(0);
  do{ if(data->path) printf("    ." "path" ": \"%s\"\n", data->path); else printf("    ." "path" ": (NULL)\n"); }while(0);
  if(data->query)
  {
     for(unsigned nr=0; data->query[nr].key; ++nr)
     {
        printf("    .query[%u]: \"%s\" -> ", nr, data->query[nr].key);
        if(data->query[nr].value)
          printf("\"%s\"\n", data->query[nr].value);
        else
          printf("(NULL)\n");
     }
  }
  do{ if(data->fragment) printf("    ." "fragment" ": \"%s\"\n", data->fragment); else printf("    ." "fragment" ": (NULL)\n"); }while(0);
}
