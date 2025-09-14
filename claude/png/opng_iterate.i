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
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
int
opng_bitset_find_first(opng_bitset_t set);
struct opng_options
{
    int backup;
    int clobber;
    int debug;
    int fix;
    int force;
    int full;
    int preserve;
    int quiet;
    int simulate;
    int verbose;
    const char *out_name;
    const char *dir_name;
    const char *log_name;
    int interlace;
    int nb, nc, np, nz;
    int optim_level;
    opng_bitset_t compr_level_set;
    opng_bitset_t mem_level_set;
    opng_bitset_t strategy_set;
    opng_bitset_t filter_set;
    int window_bits;
    int snip;
    int strip_all;
};
 typedef unsigned char png_byte;
   typedef unsigned int png_uint_32;
typedef png_byte * png_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
typedef long osys_foffset_t;
typedef unsigned long osys_fsize_t;
struct internal_state;
typedef long int __jmp_buf[8];
struct __jmp_buf_tag
  {
    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };
typedef struct __jmp_buf_tag jmp_buf[1];
struct exception_context { jmp_buf *penv; int caught; volatile struct { const char * etmp; } v; };
enum
{
    INPUT_IS_PNG_FILE = 0x0001,
    INPUT_HAS_PNG_DATASTREAM = 0x0002,
    INPUT_HAS_PNG_SIGNATURE = 0x0004,
    INPUT_HAS_DIGITAL_SIGNATURE = 0x0008,
    INPUT_HAS_MULTIPLE_IMAGES = 0x0010,
    INPUT_HAS_APNG = 0x0020,
    INPUT_HAS_STRIPPED_DATA = 0x0040,
    INPUT_HAS_JUNK = 0x0080,
    INPUT_HAS_ERRORS = 0x0100,
    OUTPUT_NEEDS_NEW_FILE = 0x1000,
    OUTPUT_NEEDS_NEW_IDAT = 0x2000,
    OUTPUT_HAS_ERRORS = 0x4000
};
 struct opng_process_struct
{
    unsigned int status;
    int num_iterations;
    osys_foffset_t in_datastream_offset;
    osys_fsize_t in_file_size, out_file_size;
    osys_fsize_t in_idat_size, out_idat_size;
    osys_fsize_t best_idat_size, max_idat_size;
    png_uint_32 in_plte_trns_size, out_plte_trns_size;
    png_uint_32 reductions;
    opng_bitset_t compr_level_set, mem_level_set, strategy_set, filter_set;
    int best_compr_level, best_mem_level, best_strategy, best_filter;
} process;
 const osys_fsize_t idat_size_max = ((png_uint_32)0x7fffffffL);
 struct opng_options options;
 void (*usr_printf)(const char *fmt, ...);
 void (*usr_print_cntrl)(int cntrl_code);
 void (*usr_progress)(unsigned long num, unsigned long denom);
 void (*usr_panic)(const char *msg);
 void
opng_iterate(void)
{
    opng_bitset_t compr_level_set, mem_level_set, strategy_set, filter_set;
    opng_bitset_t saved_compr_level_set;
    int compr_level, mem_level, strategy, filter;
    int counter;
    int line_reused;
    { if (!(process.num_iterations > 0)) usr_panic("Iterations not initialized"); };
    if ((process.num_iterations == 1) &&
        (process.status & OUTPUT_NEEDS_NEW_IDAT))
    {
       process.best_idat_size = 0;
       process.best_compr_level = opng_bitset_find_first(process.compr_level_set);
       process.best_mem_level = opng_bitset_find_first(process.mem_level_set);
       process.best_strategy = opng_bitset_find_first(process.strategy_set);
       process.best_filter = opng_bitset_find_first(process.filter_set);
       return;
    }
    compr_level_set = process.compr_level_set;
    mem_level_set = process.mem_level_set;
    strategy_set = process.strategy_set;
    filter_set = process.filter_set;
    process.best_idat_size = idat_size_max + 1;
    process.best_compr_level = -1;
    process.best_mem_level = -1;
    process.best_strategy = -1;
    process.best_filter = -1;
    usr_printf("\nTrying:\n");
    line_reused = 0;
    counter = 0;
    for (filter = 0;
         filter <= 5; ++filter)
    {
       if ((((filter_set) & (1U << (filter))) != 0))
       {
          for (strategy = 0;
               strategy <= 3; ++strategy)
          {
             if ((((strategy_set) & (1U << (strategy))) != 0))
             {
                saved_compr_level_set = compr_level_set;
                if (strategy == 2)
                {
                   compr_level_set = 0;
                   (*(&compr_level_set) |= (1U << (1)));
                }
                else if (strategy == 3)
                {
                   compr_level_set = 0;
                   (*(&compr_level_set) |= (1U << (9)));
                }
                for (compr_level = 9;
                     compr_level >= 1; --compr_level)
                {
                   if ((((compr_level_set) & (1U << (compr_level))) != 0))
                   {
                      for (mem_level = 9;
                           mem_level >= 1; --mem_level)
                      {
                         if ((((mem_level_set) & (1U << (mem_level))) != 0))
                         {
                            usr_printf(
                               "  zc = %d  zm = %d  zs = %d  f = %d",
                               compr_level, mem_level, strategy, filter);
                            usr_progress(counter, process.num_iterations);
                            ++counter;
                            opng_write_file(((void*)0),
                               compr_level, mem_level, strategy, filter);
                            if (process.out_idat_size > idat_size_max)
                            {
                               if (options.verbose)
                               {
                                  usr_printf("\t\tIDAT too big\n");
                                  line_reused = 0;
                               }
                               else
                               {
                                  usr_print_cntrl('\r');
                                  line_reused = 1;
                               }
                               continue;
                            }
                            usr_printf("\t\tIDAT size = %" "lu"
                                       "\n",
                                       process.out_idat_size);
                            line_reused = 0;
                            if (process.best_idat_size < process.out_idat_size)
                               continue;
                            if (process.best_idat_size == process.out_idat_size
                                && process.best_strategy >= 2)
                               continue;
                            process.best_compr_level = compr_level;
                            process.best_mem_level = mem_level;
                            process.best_strategy = strategy;
                            process.best_filter = filter;
                            process.best_idat_size = process.out_idat_size;
                            if (!options.full)
                               process.max_idat_size = process.out_idat_size;
                         }
                      }
                   }
                }
                compr_level_set = saved_compr_level_set;
             }
          }
       }
    }
    if (line_reused)
        usr_print_cntrl(-31);
    { if (!(counter == process.num_iterations)) usr_panic("Inconsistent iteration counter"); };
    usr_progress(counter, process.num_iterations);
}
