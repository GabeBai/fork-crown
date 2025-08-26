typedef long unsigned int size_t;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
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
void bmp_pixel_init (bmp_pixel*,
                                                const unsigned char,
                                                const unsigned char,
                                                const unsigned char);
void bmp_img_init_df (bmp_img*,
                                                const int,
                                                const int);
void bmp_img_free (bmp_img*);
enum bmp_error bmp_img_write (const bmp_img*,
                                                const char*);
int
main (int argc, char *argv[])
{
 bmp_img img;
 bmp_img_init_df (&img, 512, 512);
 for (size_t y = 0; y < 512; y++)
 {
  for (size_t x = 0; x < 512; x++)
  {
   if ((y % 128 < 64 && x % 128 < 64) ||
       (y % 128 >= 64 && x % 128 >= 64))
   {
    bmp_pixel_init (&img.img_pixels[y][x], 250, 250, 250);
   }
   else
   {
    bmp_pixel_init (&img.img_pixels[y][x], 0, 0, 0);
   }
  }
 }
 bmp_img_write (&img, "test.bmp");
 bmp_img_free (&img);
 return 0;
}
