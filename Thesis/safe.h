#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <setjmp.h>
#include <sys/auxv.h>
#include <sys/mman.h>
#include <sys/prctl.h>

typedef void (*tagged_func_t)(void *);

enum MTE_TAGS
{
    NO = 0x0,
    BLACK,
    WHITE,
    RED,
    GREEN,
    BLUE,
    YELLOW,
    CYAN,
    MAGENTA,
    PINK,
    BROWN,
    ORANGE,
    PURPLE,
    GOLD,
    GREY
};

// General function to check and run operations on tagged memory
void run_if_tag_matches(void *ptr, uint8_t expected_tag, tagged_func_t func);

// In a header file or a specific module
void process_data(void *data);

// Public function that is exposed
void safe_process_data(void *data, uint8_t expected_tag);
// Function pointer type for operations on tagged pointers