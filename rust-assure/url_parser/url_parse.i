typedef long unsigned int size_t;
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
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
void
url_free (url_data_t* data);
_Bool
url_is_ssh (const char* str);
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
url_data_t*
url_parse (const char* url) {
  url_data_t *data = (url_data_t *) calloc(1, sizeof(url_data_t));
  if (!data) return ((void*)0);
  char* p = strdup(url);
  if(!p)
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 190 , p); goto error; }while(0);
  data->whole_url = p;
  const char* const p_end = p + strlen(p);
  char* protocol_end = scan_part(p, Scheme, ':', '\0');
  if (!protocol_end || *protocol_end=='\0')
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 197 , p); goto error; }while(0);
  *protocol_end = '\0';
  data->protocol = p;
  const _Bool is_ssh = url_is_ssh(data->protocol);
  p = protocol_end + 1;
  if(p>=p_end || *p != '/')
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 205 , p); goto error; }while(0);
  ++p;
  if(p>=p_end || *p != '/')
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 209 , p); goto error; }while(0);
  char* const second_slash = p;
  ++p;
  if(p>=p_end)
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 215 , p); goto error; }while(0);
  char* userinfo_end = scan_part(p, Userinfo, '@', '\0');
  if(userinfo_end && *userinfo_end == '@') {
    *userinfo_end = '\0';
    data->userinfo = p;
    p = userinfo_end + 1;
  }
  if(p>=p_end)
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 225 , p); goto error; }while(0);
  char* hostname_end = ((void*)0);
  if(*p == '[')
  {
    ++p;
    hostname_end = scan_part( p, IPv6Char, ']', '\0' );
    if(!hostname_end)
      do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 234 , p); goto error; }while(0);
    *hostname_end = '\0';
    data->host = p;
    ++hostname_end;
    if(hostname_end < p_end && !is_ssh && *hostname_end==':')
    {
      char* port_end = scan_decimal_number( hostname_end+1 );
      if(port_end)
      {
        data->port = hostname_end+1;
        p = port_end;
      }else{
        do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 247 , p); goto error; }while(0);
      }
    }else{
      p = hostname_end;
    }
  }else{
    hostname_end = scan_part( p, Unreserved | SubDelim, ':', '/' );
    if (!hostname_end)
      do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 255 , p); goto error; }while(0);
    data->host = p;
    if(!is_ssh && *hostname_end==':')
    {
      *hostname_end = '\0';
      char* port_end = scan_decimal_number( hostname_end+1 );
      if(port_end)
      {
        data->port = hostname_end+1;
        p = port_end;
      }else{
        do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 267 , p); goto error; }while(0);
      }
    }else{
      p = hostname_end;
    }
  }
  memmove(second_slash, second_slash+1, p-second_slash);
  if(data->userinfo)
    --(data->userinfo);
  --(data->host);
  if(data->port)
    --(data->port);
  p[-1] = '\0';
  if(is_ssh && *p == ':')
  {
    ++p;
  }
  char* path_end = scan_part( p, PCharSlash, '?', '#' );
  if(!path_end)
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 295 , p); goto error; }while(0);
  const _Bool has_query = (*path_end == '?');
  const _Bool has_fragment = (*path_end == '#');
  *path_end = '\0';
  data->path = decode_percent(p);
  p = path_end + 1;
  if(has_query)
  {
    char* query_end = scan_part( p, Query, '#', '\0' );
    if(query_end)
    {
      const _Bool has_fragment = (*query_end == '#');
      *query_end = '\0';
      data->query = parse_query_string(p, query_end);
      if(has_fragment)
      {
        char* fragment_end = scan_part( query_end+1, Fragment, '\0', '\0' );
        if(fragment_end)
        {
          data->fragment = decode_percent(query_end+1);
        }else{
          do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 319 , p); goto error; }while(0);
        }
      }
    }else{
      do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 323 , p); goto error; }while(0);
    }
  }else if(has_fragment)
  {
        char* fragment_end = scan_part( p, Fragment, '\0', '\0' );
        if(fragment_end)
        {
          data->fragment = decode_percent(p);
        }else{
          do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 332 , p); goto error; }while(0);
        }
  }
  return data;
error:
  url_free(data);
  return ((void*)0);
}
