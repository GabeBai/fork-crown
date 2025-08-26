struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
struct url_key_value;
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
char* decode_percent(char* s)
{
  char* in = s;
  char* out = s;
  while(*in)
  {
    if(*in=='%')
    {
      const int high = unhex(++in); if(high<0 || *in=='\0') return ((void*)0);
      const int low = unhex(++in); if(low <0 || *in=='\0') return ((void*)0);
      *out = (char)(high*16u + low);
      ++out;
      ++in;
    }else{
      *out++ = *in++;
    }
  }
  *out = '\0';
  return s;
}
