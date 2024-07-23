#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <setjmp.h>
#include <sys/auxv.h>
#include <sys/mman.h>
#include <sys/prctl.h>

uintptr_t set_specific_tag(uintptr_t ptr, uint8_t tag);
/// @brief Generates a tagged pointer with the specified tag
/// @param ptr The pointer we want to tag
/// @param tag The tag to tag the pointer with
/// @param size How many bytes to tag
void *mte_set_tag(void *ptr, uint8_t tag, size_t size);


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