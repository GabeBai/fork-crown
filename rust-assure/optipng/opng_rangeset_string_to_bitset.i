typedef long unsigned int size_t;
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
opng_bitset_t
opng_rangeset_string_to_bitset(const char *str, size_t *end_idx);
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int *__errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
opng_bitset_t
opng_rangeset_string_to_bitset(const char *str, size_t *end_idx)
{
    opng_bitset_t result;
    const char *ptr;
    int state;
    int num, num1, num2;
    int out_of_range;
    result = 0;
    ptr = str;
    state = 0;
    out_of_range = 0;
    num1 = num2 = -1;
    for ( ; ; )
    {
        { while (((*__ctype_b_loc ())[(int) ((*(ptr)))] & (unsigned short int) _ISspace)) ++(ptr); };
        switch (state)
        {
        case 0:
        case 2:
            if (*ptr >= '0' && *ptr <= '9')
            {
                num = 0;
                do
                {
                    num = 10 * num + (*ptr - '0');
                    if (num > OPNG_BITSET_ELT_MAX)
                    {
                        out_of_range = 1;
                        num = OPNG_BITSET_ELT_MAX;
                    }
                    ++ptr;
                } while (*ptr >= '0' && *ptr <= '9');
                if (state == 0)
                    num1 = num;
                num2 = num;
                ++state;
                continue;
            }
            break;
        case 1:
            if (*ptr == '-')
            {
                ++ptr;
                num2 = OPNG_BITSET_ELT_MAX;
                ++state;
                continue;
            }
            break;
        }
        if (state > 0)
        {
            state = 0;
            if (num2 > OPNG_BITSET_ELT_MAX)
            {
                out_of_range = 1;
                num2 = OPNG_BITSET_ELT_MAX;
            }
            if (num1 <= num2)
                (*(&result) |= ((num1) <= (num2)) ? (((1U << ((num2) - (num1)) << 1) - 1) << (num1)) : 0U);
            else
                out_of_range = 1;
        }
        if (*ptr == ',' || *ptr == ';')
        {
            ++ptr;
            continue;
        }
        else
        {
            break;
        }
    }
    if (num1 == -1)
    {
        if (end_idx != ((void*)0))
            *end_idx = 0;
        return 0;
    }
    if (end_idx != ((void*)0))
        *end_idx = (size_t)(ptr - str);
    if (out_of_range)
        (*__errno_location ()) = 34;
    return result;
}
