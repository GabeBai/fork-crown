struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
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
unsigned char_cat[256];
void fill(unsigned value, const char* alnum, const char* special)
{
 for(;*alnum;++alnum)
 {
  char_cat[ (unsigned char)(*alnum) ] |= value;
 }
 for(;*special;++special)
 {
  char_cat[ (unsigned char)(*special) ] |= value;
 }
}
