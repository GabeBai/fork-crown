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
int u8next_(const char *txt, int *ch);
int u8next_FAST(const char *txt, int *ch);
extern int *__errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
char *s1;
char *s[] = {"Aa", "èa", "会員", "𧀀𧀍" };
int cp[] = {0x41, 0xE8, 0x4F1A, 0x27000 };
int main(int argc, char *argv[])
{
   int l;
   int c;
  for (int k=0; k<sizeof(s)/sizeof(char *);k++) {
    s1=s[k];
   l=u8next_(s1, &c);
   do {int e_=!(l==k+1); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"l==k+1","test2.c",17); if (e_ && *(("Wrong length: expected %d, got %d"))) { fprintf(stderr,"    : " "Wrong length: expected %d, got %d",k+1,l); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
   do {int e_=!(c==cp[k]); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"c==cp[k]","test2.c",18); if (e_ && *(("Wrong code: expected %06X, got %06X"))) { fprintf(stderr,"    : " "Wrong code: expected %06X, got %06X",cp[k],c); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
   l=u8next_FAST(s1,&c);
   do {int e_=!(l==k+1); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"l==k+1","test2.c",20); if (e_ && *(("(FAST) Wrong length: expected %d, got %d"))) { fprintf(stderr,"    : " "(FAST) Wrong length: expected %d, got %d",k+1,l); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
   do {int e_=!(c==cp[k]); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"c==cp[k]","test2.c",21); if (e_ && *(("(FAST) Wrong code: expected %06X, got %06X"))) { fprintf(stderr,"    : " "(FAST) Wrong code: expected %06X, got %06X",cp[k],c); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
  }
}
