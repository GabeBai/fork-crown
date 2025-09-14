typedef long unsigned int size_t;
typedef long int __time_t;
typedef long int __syscall_slong_t;
struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
extern int fclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes)
  __attribute__ ((__malloc__)) ;
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));
extern int fseek (FILE *__stream, long int __off, int __whence)
  __attribute__ ((__nonnull__ (1)));
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
extern int abs (int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
enum bmp_error
{
 BMP_FILE_NOT_OPENED = -4,
 BMP_HEADER_NOT_INITIALIZED,
 BMP_INVALID_FILE,
 BMP_ERROR,
 BMP_OK = 0
};
typedef struct _bmp_header
{
 unsigned int bfSize;
 unsigned int bfReserved;
 unsigned int bfOffBits;
 unsigned int biSize;
 int biWidth;
 int biHeight;
 unsigned short biPlanes;
 unsigned short biBitCount;
 unsigned int biCompression;
 unsigned int biSizeImage;
 int biXPelsPerMeter;
 int biYPelsPerMeter;
 unsigned int biClrUsed;
 unsigned int biClrImportant;
} bmp_header;
typedef struct _bmp_pixel
{
 unsigned char blue;
 unsigned char green;
 unsigned char red;
} bmp_pixel;
typedef struct _bmp_img
{
 bmp_header img_header;
 bmp_pixel **img_pixels;
} bmp_img;
enum bmp_error bmp_header_read (bmp_header*,
                                                FILE*);
void bmp_img_alloc (bmp_img*);
enum bmp_error bmp_img_read (bmp_img*,
                                                const char*);
enum bmp_error
bmp_img_read (bmp_img *img,
              const char *filename)
{
 FILE *img_file = fopen (filename, "rb");
 if (img_file == ((void*)0))
 {
  return BMP_FILE_NOT_OPENED;
 }
 const enum bmp_error err = bmp_header_read (&img->img_header, img_file);
 if (err != BMP_OK)
 {
  fclose (img_file);
  return err;
 }
 bmp_img_alloc (img);
 const size_t h = abs (img->img_header.biHeight);
 const size_t offset = (img->img_header.biHeight > 0 ? h - 1 : 0);
 const size_t padding = ((img->img_header.biWidth) % 4);
 const size_t items = img->img_header.biWidth;
 for (size_t y = 0; y < h; y++)
 {
  if (fread (img->img_pixels[abs (offset - y)], sizeof (bmp_pixel), items, img_file) != items)
  {
   fclose (img_file);
   return BMP_ERROR;
  }
  fseek (img_file, padding, 1);
 }
 fclose (img_file);
 return BMP_OK;
}
