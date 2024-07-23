#include "mte.h"

uintptr_t set_specific_tag(uintptr_t ptr, uint8_t tag)
{
    // Clear the existing tag and apply the new one
    return (ptr & ~(0xFUL << 56)) | ((uintptr_t)tag << 56);
}

/// @brief Generates a tagged pointer with the specified tag
/// @param ptr The pointer we want to tag
/// @param tag The tag to tag the pointer with
/// @param size How many bytes to tag
void *mte_set_tag(void *ptr, uint8_t tag, size_t size)
{
    uintptr_t base_addr = set_specific_tag((uintptr_t)ptr, tag);
    size_t mte_granule_size = 16;

    // Tag each block in the memory region
    for (size_t offset = 0; offset < size; offset += mte_granule_size)
    {
        uintptr_t current_addr = base_addr + offset;
        asm volatile("stg %0, [%0]" : : "r"(current_addr) : "memory");
    }

    return (void *)base_addr;
}