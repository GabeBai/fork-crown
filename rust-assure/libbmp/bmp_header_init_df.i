typedef long int __time_t;
typedef long int __syscall_slong_t;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
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
void bmp_header_init_df (bmp_header*,
                                                const int,
                                                const int);
void
bmp_header_init_df (bmp_header *header,
                    const int width,
                    const int height)
{
 header->bfSize = (sizeof (bmp_pixel) * width + ((width) % 4))
                   * abs (height);
 header->bfReserved = 0;
 header->bfOffBits = 54;
 header->biSize = 40;
 header->biWidth = width;
 header->biHeight = height;
 header->biPlanes = 1;
 header->biBitCount = 24;
 header->biCompression = 0;
 header->biSizeImage = 0;
 header->biXPelsPerMeter = 0;
 header->biYPelsPerMeter = 0;
 header->biClrUsed = 0;
 header->biClrImportant = 0;
}
