#include "safe.h"

// void run_if_tag_matches(void *ptr, uint8_t expected_tag, tagged_func_t func)
// {
//     uintptr_t base_addr = (uintptr_t)ptr & ~(0xFFFFUL << 48);            // Clear tag bits
//     uintptr_t tagged_addr = base_addr | ((uintptr_t)expected_tag << 56); // Set expected tag

//     volatile int value;
//     // Attempt to load from the address to check the tag
//     // Will trigger a hardware exception if the tag does not match
//     asm volatile("ldr %w[value], [%[address]]" : [value] "=r"(value) : [address] "r"(tagged_addr) : "memory");

//     // If no exception occurs, run the function
//     func(ptr);
// }

//Na ginoun instrumnetn ta load stores me to sosto xroma to opoio dexete i methodos
//change this implementation
//na grapso assembly se kathe load store

// __attribute__((annotate("Safe")))
void process_data(void *data)
{
    //add 1 to color tag and 4096 to reach a valid green tag. SHOULD CRASH when deref.
    // data = ((uint64_t)data & ~(0xFFUL << 56)) | 0x09UL << 56;

    printf("Address: %p\n", data);
    printf("Dereferencing: %c\n", ((char *)data)[0]);
    char *charPtr = data;

    charPtr[0] = 'a';

    // printf("Changing charPtr[0]: %p\n", &charPtr[0]);
}


// void safe_process_data(void *data, uint8_t expected_tag)
// {
//     run_if_tag_matches(data, expected_tag, process_data);
// }