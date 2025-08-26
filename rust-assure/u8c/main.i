struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
extern FILE *stdout;
extern FILE *stderr;
extern int fflush (FILE *__stream);
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...) __attribute__ ((__nonnull__ (1)));
extern int fputc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
int u8strlen(const char *s);
int u8next_(const char *txt, int *ch);
extern int *__errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
char *s1;
char *s[] = {"Aa", "èa", "会員", "𧀀𧀍" };
int main(int argc, char *argv[])
{
  int l,slen,l2;
  int c;
  for (int k=0; k<sizeof(s)/sizeof(char *);k++) {
    s1=s[k];
    l=u8next_(s1, &c);
    do {int e_=!(l == k+1); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"l == k+1","test1.c",16); if (e_ && *(("Expected length: %d, got %d"))) { fprintf(stderr,"    : " "Expected length: %d, got %d",k+1,l); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
    slen = u8strlen(s1);
    do {int e_=!(slen == 2); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"slen == 2","test1.c",18); if (e_ && *(("String len (in codepoints) should be 2, got %d"))) { fprintf(stderr,"    : " "String len (in codepoints) should be 2, got %d",slen); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
    l2=u8next_(s1, ((void*)0));
    do {int e_=!(l == l2); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"l == l2","test1.c",20); if (e_ && *(("Calling u8next with ch == NULL failed. Expecting %d got %d"))) { fprintf(stderr,"    : " "Calling u8next with ch == NULL failed. Expecting %d got %d",l,l2); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
  }
}
