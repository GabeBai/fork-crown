struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
int u8next_(const char *txt, int *ch);
  int u8codepoint(char *s) {int c; (void)u8next_(s, &c); return c;}
