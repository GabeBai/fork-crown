extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
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
url_get_userinfo (const char* url);
char *
url_get_hostname (const char* url);
char *
url_get_path (const char* url);
const char *
url_get_query_value (const url_data_t* url, const char* key);
char *
url_get_fragment (const char* url);
char *
url_get_port (const char* url);
void
url_free (url_data_t* data);
_Bool
url_is_protocol (const char* str);
void
url_data_inspect (const url_data_t* data);
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
int
main (void) {
  char *gh_url = "git://git@github.com:jwerle/url.h.git";
  char *url = "http://user:pass@subdomain.host.com:8080/p/%C3%A5/t/h?qu%C3%ABry=strin%C4%9F&foo=bar=yuk&key%23%26%3D=%25&lol#h%C3%a6sh";
  url_data_t *parsed = url_parse(url);
  url_data_t *gh_parsed = url_parse(gh_url);
  ((parsed) ? (void) (0) : __assert_fail ("parsed", "test.c", 25,  __PRETTY_FUNCTION__));
  ((gh_parsed) ? (void) (0) : __assert_fail ("gh_parsed", "test.c", 26,  __PRETTY_FUNCTION__));
  url_data_inspect(parsed);
  url_data_inspect(gh_parsed);
  ((parsed->whole_url) ? (void) (0) : __assert_fail ("parsed->whole_url", "test.c", 31,  __PRETTY_FUNCTION__));
  ((parsed->protocol) ? (void) (0) : __assert_fail ("parsed->protocol", "test.c", 32,  __PRETTY_FUNCTION__));
  ((parsed->userinfo) ? (void) (0) : __assert_fail ("parsed->userinfo", "test.c", 33,  __PRETTY_FUNCTION__));
  ((parsed->host) ? (void) (0) : __assert_fail ("parsed->host", "test.c", 34,  __PRETTY_FUNCTION__));
  ((parsed->port) ? (void) (0) : __assert_fail ("parsed->port", "test.c", 35,  __PRETTY_FUNCTION__));
  ((parsed->path) ? (void) (0) : __assert_fail ("parsed->path", "test.c", 36,  __PRETTY_FUNCTION__));
  ((parsed->query) ? (void) (0) : __assert_fail ("parsed->query", "test.c", 37,  __PRETTY_FUNCTION__));
  ((parsed->fragment) ? (void) (0) : __assert_fail ("parsed->fragment", "test.c", 38,  __PRETTY_FUNCTION__));
  ((gh_parsed->whole_url) ? (void) (0) : __assert_fail ("gh_parsed->whole_url", "test.c", 40,  __PRETTY_FUNCTION__));
  ((gh_parsed->protocol) ? (void) (0) : __assert_fail ("gh_parsed->protocol", "test.c", 41,  __PRETTY_FUNCTION__));
  ((gh_parsed->userinfo) ? (void) (0) : __assert_fail ("gh_parsed->userinfo", "test.c", 42,  __PRETTY_FUNCTION__));
  ((gh_parsed->host) ? (void) (0) : __assert_fail ("gh_parsed->host", "test.c", 43,  __PRETTY_FUNCTION__));
  ((gh_parsed->path) ? (void) (0) : __assert_fail ("gh_parsed->path", "test.c", 44,  __PRETTY_FUNCTION__));
  ((url_is_protocol("http")) ? (void) (0) : __assert_fail ("url_is_protocol(\"http\")", "test.c", 46,  __PRETTY_FUNCTION__));
  ((url_is_protocol("https")) ? (void) (0) : __assert_fail ("url_is_protocol(\"https\")", "test.c", 47,  __PRETTY_FUNCTION__));
  ((url_is_protocol("git")) ? (void) (0) : __assert_fail ("url_is_protocol(\"git\")", "test.c", 48,  __PRETTY_FUNCTION__));
  ((url_is_protocol("ssh")) ? (void) (0) : __assert_fail ("url_is_protocol(\"ssh\")", "test.c", 49,  __PRETTY_FUNCTION__));
  ((url_is_protocol("sftp")) ? (void) (0) : __assert_fail ("url_is_protocol(\"sftp\")", "test.c", 50,  __PRETTY_FUNCTION__));
  ((url_is_protocol("ftp")) ? (void) (0) : __assert_fail ("url_is_protocol(\"ftp\")", "test.c", 51,  __PRETTY_FUNCTION__));
  ((url_is_protocol("javascript")) ? (void) (0) : __assert_fail ("url_is_protocol(\"javascript\")", "test.c", 52,  __PRETTY_FUNCTION__));
  do{ char* s = url_get_protocol(url); ((s) ? (void) (0) : __assert_fail ("s", "test.c", 54,  __PRETTY_FUNCTION__)); ((strcmp("http", s) == 0) ? (void) (0) : __assert_fail ("strcmp(\"http\", s) == 0", "test.c", 54,  __PRETTY_FUNCTION__)); free(s); }while(0);
  do{ char* s = url_get_userinfo(url); ((s) ? (void) (0) : __assert_fail ("s", "test.c", 55,  __PRETTY_FUNCTION__)); ((strcmp("user:pass", s) == 0) ? (void) (0) : __assert_fail ("strcmp(\"user:pass\", s) == 0", "test.c", 55,  __PRETTY_FUNCTION__)); free(s); }while(0);
  do{ char* s = url_get_hostname(url); ((s) ? (void) (0) : __assert_fail ("s", "test.c", 56,  __PRETTY_FUNCTION__)); ((strcmp("subdomain.host.com", s) == 0) ? (void) (0) : __assert_fail ("strcmp(\"subdomain.host.com\", s) == 0", "test.c", 56,  __PRETTY_FUNCTION__)); free(s); }while(0);
  do{ char* s = url_get_path (url); ((s) ? (void) (0) : __assert_fail ("s", "test.c", 57,  __PRETTY_FUNCTION__)); ((strcmp("/p/\xc3\xa5/t/h", s) == 0) ? (void) (0) : __assert_fail ("strcmp(\"/p/\\xc3\\xa5/t/h\", s) == 0", "test.c", 57,  __PRETTY_FUNCTION__)); free(s); }while(0);
  ((strcmp("strin\xc4\x9f", url_get_query_value (parsed, "qu\xc3\xabry"))==0) ? (void) (0) : __assert_fail ("strcmp(\"strin\\xc4\\x9f\", url_get_query_value (parsed, \"qu\\xc3\\xabry\"))==0", "test.c", 58,  __PRETTY_FUNCTION__));
  ((strcmp("bar=yuk", url_get_query_value (parsed, "foo"))==0) ? (void) (0) : __assert_fail ("strcmp(\"bar=yuk\", url_get_query_value (parsed, \"foo\"))==0", "test.c", 59,  __PRETTY_FUNCTION__));
  ((strcmp("%", url_get_query_value (parsed, "key#&="))==0) ? (void) (0) : __assert_fail ("strcmp(\"%\", url_get_query_value (parsed, \"key#&=\"))==0", "test.c", 60,  __PRETTY_FUNCTION__));
  ((strcmp("", url_get_query_value (parsed, "lol"))==0) ? (void) (0) : __assert_fail ("strcmp(\"\", url_get_query_value (parsed, \"lol\"))==0", "test.c", 61,  __PRETTY_FUNCTION__));
  do{ char* s = url_get_fragment(url); ((s) ? (void) (0) : __assert_fail ("s", "test.c", 62,  __PRETTY_FUNCTION__)); ((strcmp("hæsh", s) == 0) ? (void) (0) : __assert_fail ("strcmp(\"hæsh\", s) == 0", "test.c", 62,  __PRETTY_FUNCTION__)); free(s); }while(0);
  do{ char* s = url_get_port (url); ((s) ? (void) (0) : __assert_fail ("s", "test.c", 63,  __PRETTY_FUNCTION__)); ((strcmp("8080", s) == 0) ? (void) (0) : __assert_fail ("strcmp(\"8080\", s) == 0", "test.c", 63,  __PRETTY_FUNCTION__)); free(s); }while(0);
  do{ char* s = url_get_protocol(gh_url); ((s) ? (void) (0) : __assert_fail ("s", "test.c", 65,  __PRETTY_FUNCTION__)); ((strcmp("git", s) == 0) ? (void) (0) : __assert_fail ("strcmp(\"git\", s) == 0", "test.c", 65,  __PRETTY_FUNCTION__)); free(s); }while(0);
  do{ char* s = url_get_hostname(gh_url); ((s) ? (void) (0) : __assert_fail ("s", "test.c", 66,  __PRETTY_FUNCTION__)); ((strcmp("github.com", s) == 0) ? (void) (0) : __assert_fail ("strcmp(\"github.com\", s) == 0", "test.c", 66,  __PRETTY_FUNCTION__)); free(s); }while(0);
  do{ char* s = url_get_userinfo(gh_url); ((s) ? (void) (0) : __assert_fail ("s", "test.c", 67,  __PRETTY_FUNCTION__)); ((strcmp("git", s) == 0) ? (void) (0) : __assert_fail ("strcmp(\"git\", s) == 0", "test.c", 67,  __PRETTY_FUNCTION__)); free(s); }while(0);
  do{ char* s = url_get_path (gh_url); ((s) ? (void) (0) : __assert_fail ("s", "test.c", 68,  __PRETTY_FUNCTION__)); ((strcmp("jwerle/url.h.git", s) == 0) ? (void) (0) : __assert_fail ("strcmp(\"jwerle/url.h.git\", s) == 0", "test.c", 68,  __PRETTY_FUNCTION__)); free(s); }while(0);
  url_free(parsed);
  url_free(gh_parsed);
  return 0;
}
