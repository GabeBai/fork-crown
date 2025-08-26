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
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s) __attribute__ ((__nonnull__ (4)));
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
enum bmp_error bmp_header_write (const bmp_header*,
                                                FILE*);
enum bmp_error bmp_img_write (const bmp_img*,
                                                const char*);
enum bmp_error
bmp_img_write (const bmp_img *img,
               const char *filename)
{
 FILE *img_file = fopen (filename, "wb");
 if (img_file == ((void*)0))
 {
  return BMP_FILE_NOT_OPENED;
 }
 const enum bmp_error err = bmp_header_write (&img->img_header, img_file);
 if (err != BMP_OK)
 {
  fclose (img_file);
  return err;
 }
 const size_t h = abs (img->img_header.biHeight);
 const size_t offset = (img->img_header.biHeight > 0 ? h - 1 : 0);
 const unsigned char padding[3] = {'\0', '\0', '\0'};
 for (size_t y = 0; y < h; y++)
 {
  fwrite (img->img_pixels[abs (offset - y)], sizeof (bmp_pixel), img->img_header.biWidth, img_file);
  fwrite (padding, sizeof (unsigned char), ((img->img_header.biWidth) % 4), img_file);
 }
 fclose (img_file);
 return BMP_OK;
}
