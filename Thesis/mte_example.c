/*
 * Memory Tagging Extension (MTE) example for Linux
 *
 * Compile with gcc and use -march=armv8.5-a+memtag
 *    gcc mte-example.c -o mte-example -march=armv8.5-a+memtag
 *
 * Compilation should be done on a recent Arm Linux machine for the .h files to include MTE support.
 *
 */
#include "safe.h"

/*
 * Insert a random logical tag into the given pointer.
 * IRG instruction.
 */
#define insert_random_tag(ptr) ({               \
    uint64_t __val;                             \
    asm("irg %0, %1" : "=r"(__val) : "r"(ptr)); \
    __val;                                      \
})

/*
 * Set the allocation tag on the destination address.
 * STG instruction.
 */
#define set_tag(tagged_addr)                                          \
    do                                                                \
    {                                                                 \
        asm volatile("stg %0, [%0]" : : "r"(tagged_addr) : "memory"); \
    } while (0)

__attribute__((always_inline)) inline void *mte_tag(void *ptr, size_t len)
{
    asm volatile("irg %0, %0\n" : "+r"(ptr));
    void *end_ptr = ptr;
    for (size_t i = 0; i < len; i += 16)
    {
        asm volatile("stg %0, [%0], #16\n" : "+r"(end_ptr));
    }
    return ptr;
}

void check_tag(void *ptr, uint8_t expected_tag)
{
    uintptr_t base_addr = (uintptr_t)ptr & ~(0xFFFFUL << 48);            // Clear tag bits
    uintptr_t tagged_addr = base_addr | ((uintptr_t)expected_tag << 56); // Set expected tag

    volatile int value;
    // Will crush if not the same color.
    asm volatile("ldr %w[value], [%[address]]" : [value] "=r"(value) : [address] "r"(tagged_addr) : "memory");
}

uint8_t get_color(void *adr)
{
    return (uint64_t)adr >> 56 & 0b00001111;
}

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

int main(void)
{
    unsigned char *red_ptr; // pointer to memory for MTE demonstration

    /*
     * Use the architecture dependent information about the processor
     * from getauxval() to check if MTE is available.
     */
    if (!((getauxval(AT_HWCAP2)) & HWCAP2_MTE))
    {
        printf("MTE is not supported\n");
        return EXIT_FAILURE;
    }
    else
    {
        printf("MTE is supported\n");
    }

    /*
     * Enable MTE with synchronous checking
     *
     */
    if (prctl(PR_SET_TAGGED_ADDR_CTRL,
              PR_TAGGED_ADDR_ENABLE | PR_MTE_TCF_ASYNC | (0xfffe << PR_MTE_TAG_SHIFT),
              0, 0, 0))
    {
        perror("prctl() failed");
        return EXIT_FAILURE;
    }

    /*
     * Allocate 1 page of memory with MTE protection
     * sysconf(_SC_PAGESIZE)
     */

    red_ptr = mmap(NULL, 4096, PROT_READ | PROT_WRITE | PROT_MTE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

    char *green_ptr;
    green_ptr = mmap(NULL, 8192, PROT_READ | PROT_WRITE | PROT_MTE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    // ptr = malloc(16);

    if (red_ptr == MAP_FAILED)
    {
        perror("mmap() failed");
        return EXIT_FAILURE;
    }

    /*
     * Print the pointer value with the default tag (expecting 0)
     */
    printf("pointer red_ptr is %p\n", red_ptr);

    /*
     * Write the first 2 bytes of the memory with the default tag
     */
    red_ptr[0] = 0x41;
    red_ptr[1] = 0x42;

    /*
     * Read back to confirm the writes
     */
    printf("ptr[0] = 0x%hhx ptr[1] = 0x%hhx\n", red_ptr[0], red_ptr[1]);

    red_ptr = mte_set_tag(red_ptr, RED, 16 * 16);
    // ptr = mte_tag(ptr, 16);
    green_ptr = mte_set_tag(green_ptr, GREEN, 8192);

    printf("red_ptr color: %d\n", get_color(red_ptr));
    printf("green_ptr color: %d\n", get_color(green_ptr));

    /*
     * Print the pointer value with the new tag
     */
    printf("pointer red_ptr is now %p\n", red_ptr);
    printf("pointer green_ptr is now %p\n", green_ptr);
    /*
     * Write the first 2 bytes of the memory again, with the new tag
     */
    red_ptr[0] = 0x41;
    red_ptr[1] = 0x44;
    /*
     * Read back to confirm the writes
     */
    printf("ptr[0] = 0x%hhx ptr[1] = 0x%hhx\n", red_ptr[0], red_ptr[1]);
    // printf("Calling does_something\n");
    // does_something(ptr, 3);
    printf("red_ptr[0] = 0x%hhx red_ptr[1] = 0x%hhx\n", red_ptr[0], red_ptr[1]);

    /*
     * Write to memory beyond the 16 byte granule (offsest 0x10)
     * MTE should generate an exception
     * If the offset is less than 0x10 no SIGSEGV will occur.
     */
    printf("Expecting SIGSEGV...\n");
    // safe_process_data(red_ptr, RED);
    process_data(red_ptr);
    // does_something(ptr, 4);
    // We can construct a pointer with 1/16 prob to access a region.
    // {
    //     unsigned char *malicious;

    //     malicious = 0x400005500a040a0;
    //     printf("Deref 'malicious': 0x%hhx\n", *malicious);
    // }

    printf("red_ptr[0x10] = %hhx\n", red_ptr[0x10]);

    /*
     * Program only reaches this if no SIGSEGV occurs
     */
    printf("...no SIGSEGV was received\n");

    return 0;
}