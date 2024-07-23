#include "mte.h"
#include "red.h"

int main()
{
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
     * Enable MTE with asynchronous checking
     *
     */
    if (prctl(PR_SET_TAGGED_ADDR_CTRL,
              PR_TAGGED_ADDR_ENABLE | PR_MTE_TCF_ASYNC | (0xfffe << PR_MTE_TAG_SHIFT),
              0, 0, 0))
    {
        perror("prctl() failed");
        return EXIT_FAILURE;
    }

    // each of the pointers get a page.
    unsigned char *safe_red_data = mmap(NULL, 4096, PROT_READ | PROT_WRITE | PROT_MTE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    unsigned char *safe_black_data = mmap(NULL, 4096, PROT_READ | PROT_WRITE | PROT_MTE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

    if (safe_red_data == MAP_FAILED)
    {
        printf("Map error at red pointer\nExiting...\n");
        exit(-1);
    }
    if (safe_black_data == MAP_FAILED)
    {
        printf("Map error at black pointer\nExiting...\n");
        exit(-1);
    }

    safe_red_data = mte_set_tag(safe_red_data, RED, 32);
    safe_black_data = mte_set_tag(safe_black_data, BLACK, 32);

    for (int i = 0; i < 32; i++)
    {
        safe_red_data[i] = 'a' + i;
        safe_black_data[i] = 'a' + i;
    }

    printf("Accessing compartment1 with RED pointer %p\n", safe_red_data);
    compartment1(safe_red_data);
    printf("Accessing compartment1 with BLACK pointer %p\n", safe_black_data);
    compartment1(safe_black_data);

    return 0;
}