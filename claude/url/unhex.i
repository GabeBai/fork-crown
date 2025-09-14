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
int unhex(const char* s)
{
  if(*s>='0' && *s<='9')
    return *s - '0';
  if(*s>='A' && *s<='F')
    return *s - 'A' + 10;
  if(*s>='a' && *s<='f')
    return *s - 'a' + 10;
  return -1;
}
