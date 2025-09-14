struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
struct url_key_value;
char *
url_get_scheme (const char* url);
char *
url_get_protocol (const char* url) { return url_get_scheme(url); }
