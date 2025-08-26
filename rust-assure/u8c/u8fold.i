struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
int u8fold(int cp);
int u8fold(int cp)
{
  if (0x10400 <= cp && cp <= 0x10427) cp += 40;
  if (cp <= 0xFFFF) cp = fold_search(cp);
  return cp;
}
