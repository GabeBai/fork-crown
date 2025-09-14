typedef long unsigned int size_t;
typedef long int __time_t;
typedef long int __syscall_slong_t;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
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
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
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
void bmp_img_alloc (bmp_img*);
void
bmp_img_alloc (bmp_img *img)
{
 const size_t h = abs (img->img_header.biHeight);
 img->img_pixels = malloc (sizeof (bmp_pixel*) * h);
 for (size_t y = 0; y < h; y++)
 {
  img->img_pixels[y] = malloc (sizeof (bmp_pixel) * img->img_header.biWidth);
 }
}
