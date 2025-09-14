struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
int u8next_(const char *txt, int *ch);
int u8stricmp(char *s, char *t);
int u8fold(int cp);
int u8stricmp(char *s, char *t)
{
  int ls, lt;
  int cs = 0, ct =0 ;
  for(int chk=0; chk < 1024*1024; chk++) {
     ls=u8next_(s, &cs); lt=u8next_(t, &ct);
     cs = u8fold(cs); ct = u8fold(ct);
     if (cs != ct) return cs-ct;
     if (ls == 0) return 0;
     if (ls<0) ls=-ls;
     if (lt<0) lt=-ls;
     s += ls;
     t += lt;
  }
  return 0;
}
