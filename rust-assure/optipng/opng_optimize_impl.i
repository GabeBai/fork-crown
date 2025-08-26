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
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
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
char *
osys_path_chdir(char *buffer, size_t bufsize,
                const char *old_path, const char *new_dirname);
char *
osys_path_chext(char *buffer, size_t bufsize,
                const char *old_path, const char *new_extname);
char *
osys_path_mkbak(char *buffer, size_t bufsize, const char *path);
int
osys_fseeko(FILE *stream, osys_foffset_t offset, int whence);
int
osys_rename(const char *src_path, const char *dest_path, int clobber);
int
osys_copy_attr(const char *src_path, const char *dest_path);
int
osys_create_dir(const char *dirname);
int
osys_test(const char *path, const char *mode);
int
osys_test_eq(const char *path1, const char *path2);
int
osys_unlink(const char *path);
struct internal_state;
typedef long int __jmp_buf[8];
struct __jmp_buf_tag
  {
    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };
typedef struct __jmp_buf_tag jmp_buf[1];
extern int _setjmp (struct __jmp_buf_tag __env[1]) __attribute__ ((__nothrow__));
extern void longjmp (struct __jmp_buf_tag __env[1], int __val)
     __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));
struct exception_context { jmp_buf *penv; int caught; volatile struct { const char * etmp; } v; };
struct exception_context the_exception_context[1];
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
 struct opng_options options;
 void (*usr_printf)(const char *fmt, ...);
 void (*usr_panic)(const char *msg);
 void
opng_optimize_impl(const char *infile_name)
{
     FILE *infile, *outfile;
     const char *infile_name_local;
     const char *outfile_name, *bakfile_name;
     int new_outfile, has_backup;
    char name_buf[4096], tmp_buf[4096];
    const char * volatile err_msg;
    memset(&process, 0, sizeof(process));
    if (options.force)
        process.status |= OUTPUT_NEEDS_NEW_IDAT;
    err_msg = ((void*)0);
    infile_name_local = infile_name;
    if ((infile = fopen(infile_name_local, "rb")) == ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't open the input file";
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (_setjmp (exception__env) == 0) { do
    {
        opng_read_file(infile);
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        { if (!(err_msg != ((void*)0))) usr_panic("Mysterious error in opng_read_file"); };
    }
    fclose(infile);
    if (err_msg != ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
    if (process.status & INPUT_HAS_ERRORS)
    {
        usr_printf("Recoverable errors found in input.");
        if (options.fix)
        {
            usr_printf(" Fixing...\n");
            process.status |= OUTPUT_NEEDS_NEW_FILE;
        }
        else
        {
            usr_printf(" Rerun " "OptiPNG" " with -fix enabled.\n");
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Previous error(s) not fixed";
        }
    }
    if (process.status & INPUT_HAS_JUNK)
        process.status |= OUTPUT_NEEDS_NEW_FILE;
    if (!(process.status & INPUT_HAS_PNG_SIGNATURE))
        process.status |= OUTPUT_NEEDS_NEW_FILE;
    if (process.status & INPUT_HAS_PNG_DATASTREAM)
    {
        if (options.nz && (process.status & OUTPUT_NEEDS_NEW_IDAT))
        {
            usr_printf(
                "IDAT recoding is necessary, but is disabled by the user.\n");
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't continue";
        }
    }
    else
        process.status |= OUTPUT_NEEDS_NEW_IDAT;
    if (process.status & INPUT_HAS_DIGITAL_SIGNATURE)
    {
        usr_printf("Digital signature found in input.");
        if (options.force)
        {
            usr_printf(" Erasing...\n");
            process.status |= OUTPUT_NEEDS_NEW_FILE;
        }
        else
        {
            usr_printf(" Rerun " "OptiPNG" " with -force enabled.\n");
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't optimize digitally-signed files";
        }
    }
    if (process.status & INPUT_HAS_MULTIPLE_IMAGES)
    {
        if (!options.snip && !(process.status & INPUT_IS_PNG_FILE))
        {
            usr_printf("Conversion to PNG requires snipping. "
                       "Rerun " "OptiPNG" " with -snip enabled.\n");
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Incompatible input format";
        }
    }
    if ((process.status & INPUT_HAS_APNG) && options.snip)
        process.status |= OUTPUT_NEEDS_NEW_FILE;
    if (process.status & INPUT_HAS_STRIPPED_DATA)
        usr_printf("Stripping metadata...\n");
    outfile_name = ((void*)0);
    if (!(process.status & INPUT_IS_PNG_FILE))
    {
        if (osys_path_chext(name_buf, sizeof(name_buf),
                            infile_name_local, ".png") == ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't create the output file (name too long)";
        outfile_name = name_buf;
    }
    if (options.out_name != ((void*)0))
        outfile_name = options.out_name;
    if (options.dir_name != ((void*)0))
    {
        const char *tmp_name;
        if (outfile_name != ((void*)0))
        {
            strcpy(tmp_buf, outfile_name);
            tmp_name = tmp_buf;
        }
        else
            tmp_name = infile_name_local;
        if (osys_path_chdir(name_buf, sizeof(name_buf), tmp_name,
                            options.dir_name) == ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't create the output file (name too long)";
        outfile_name = name_buf;
    }
    if (outfile_name == ((void*)0))
    {
        outfile_name = infile_name_local;
        new_outfile = 0;
    }
    else
    {
        int test_eq = osys_test_eq(infile_name_local, outfile_name);
        if (test_eq >= 0)
            new_outfile = (test_eq == 0);
        else
        {
            new_outfile = (strcmp(infile_name_local, outfile_name) != 0);
        }
    }
    bakfile_name = tmp_buf;
    if (new_outfile)
    {
        if (osys_path_mkbak(tmp_buf, sizeof(tmp_buf),
            outfile_name) == ((void*)0))
            bakfile_name = ((void*)0);
    }
    else
    {
        if (osys_path_mkbak(tmp_buf, sizeof(tmp_buf),
            infile_name_local) == ((void*)0))
            bakfile_name = ((void*)0);
    }
    if (bakfile_name == ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't create backup file (name too long)";
    if (!options.simulate && osys_test(outfile_name, "e") == 0)
    {
        if (new_outfile && !options.backup && !options.clobber)
        {
            usr_printf("The output file exists. "
                       "Rerun " "OptiPNG" " with -backup enabled.\n");
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't overwrite the output file";
        }
        if (osys_test(outfile_name, "fw") != 0 ||
            (!options.clobber && osys_test(bakfile_name, "e") == 0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't back up the existing output file";
    }
    if (process.status & INPUT_HAS_PNG_DATASTREAM)
        usr_printf("Input IDAT size = %" "lu" " bytes\n",
                   process.in_idat_size);
    usr_printf("Input file size = %" "lu" " bytes\n",
               process.in_file_size);
    if (!options.nz || (process.status & OUTPUT_NEEDS_NEW_IDAT))
    {
        opng_init_iterations();
        opng_iterate();
        opng_finish_iterations();
    }
    if (process.status & OUTPUT_NEEDS_NEW_IDAT)
    {
        process.status |= OUTPUT_NEEDS_NEW_FILE;
        opng_check_idat_size(process.best_idat_size);
    }
    if (!(process.status & OUTPUT_NEEDS_NEW_FILE))
    {
        usr_printf("\n%s is already optimized.\n", infile_name_local);
        if (!new_outfile)
            return;
    }
    if (options.simulate)
    {
        usr_printf("\nNo output: simulation mode.\n");
        return;
    }
    if (new_outfile)
    {
        usr_printf("\nOutput file: %s\n", outfile_name);
        if (options.dir_name != ((void*)0))
            osys_create_dir(options.dir_name);
        has_backup = 0;
        if (osys_test(outfile_name, "e") == 0)
        {
            if (osys_rename(outfile_name, bakfile_name, options.clobber) != 0)
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't back up the output file";
            has_backup = 1;
        }
    }
    else
    {
        if (osys_rename(infile_name_local, bakfile_name, options.clobber) != 0)
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't back up the input file";
        has_backup = 1;
    }
    outfile = fopen(outfile_name, "wb");
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (_setjmp (exception__env) == 0) { do
    {
        if (outfile == ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't open the output file";
        if (process.status & OUTPUT_NEEDS_NEW_IDAT)
        {
            opng_write_file(outfile,
                process.best_compr_level, process.best_mem_level,
                process.best_strategy, process.best_filter);
        }
        else
        {
            infile =
                fopen((new_outfile ? infile_name_local : bakfile_name), "rb");
            if (infile == ((void*)0))
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't reopen the input file";
            { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (_setjmp (exception__env) == 0) { do
            {
                if (process.in_datastream_offset > 0 &&
                    osys_fseeko(infile, process.in_datastream_offset,
                                 0) != 0)
                    for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't reposition the input file";
                process.best_idat_size = process.in_idat_size;
                opng_copy_file(infile, outfile);
            }
            while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
            {
                { if (!(err_msg != ((void*)0))) usr_panic("Mysterious error in opng_copy_file"); };
            }
            fclose(infile);
            if (err_msg != ((void*)0))
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
        }
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        if (outfile != ((void*)0))
            fclose(outfile);
        if (has_backup)
        {
            if (osys_rename(bakfile_name,
                            (new_outfile ? outfile_name : infile_name_local),
                            1) != 0)
                opng_print_warning(
                    "Can't recover the original file from backup");
        }
        else
        {
            { if (!(new_outfile)) usr_panic("Overwrote input with no temporary backup"); };
            if (osys_unlink(outfile_name) != 0)
                opng_print_warning("Can't remove the broken output file");
        }
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
    }
    fclose(outfile);
    if (options.preserve)
        osys_copy_attr((new_outfile ? infile_name_local : bakfile_name),
                       outfile_name);
    if (!new_outfile && !options.backup)
    {
        if (osys_unlink(bakfile_name) != 0)
            opng_print_warning("Can't remove the backup file");
    }
    usr_printf("\nOutput IDAT size = %" "lu" " bytes",
               process.out_idat_size);
    if (process.status & INPUT_HAS_PNG_DATASTREAM)
    {
        usr_printf(" (");
        opng_print_fsize_difference(process.in_idat_size,
                                    process.out_idat_size, 0);
        usr_printf(")");
    }
    usr_printf("\nOutput file size = %" "lu" " bytes (",
               process.out_file_size);
    opng_print_fsize_difference(process.in_file_size,
                                process.out_file_size, 1);
    usr_printf(")\n");
}
