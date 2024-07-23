
#include "pac.h"


// Function to sign a pointer with PAC using a unique modifier
void* sign_pointer_with_modifier(void *ptr, uint64_t modifier) {
    printf("Pointer before signing: %p\n",ptr);
    void * result;
    
    asm volatile(
        "pacia %[addr], %[mod]"
        : "=r"(result)
		: [addr] "0"(ptr), [mod] "r"(modifier)
		:
    );

    printf("Pointer after signing: %p\n",result);

    return result;
}

// Function to authenticate a pointer with PAC using the same unique modifier
void* authenticate_pointer_with_modifier(void *ptr,uint64_t modifier) {
    uintptr_t authenticated_ptr;
    void * result;

    asm volatile(
        "autia %[addr], %[mod]"
        : "=r"(result)
		: [addr] "0"(ptr), [mod] "r"(modifier)
		:
    );

    printf("Authenticate %p\n",ptr);


    return result;
}

// Function that is supposed to access the array
void access_array(void *array) {
    void* auth = authenticate_pointer_with_modifier(array,0xDEADBEEF12345678);
    printf("Accessing array with pointer: %p\n",auth);

    int* int_array = (int*)auth;
    printf("First element: %d\n", int_array[0]);
}

int main() {
    int *myArray = malloc(sizeof(int) * 10);
    for (int i = 0; i < 10; ++i) {
        myArray[i] = i * 10;
    }

    void *signed_ptr = sign_pointer_with_modifier(myArray, 0xDEADBEEF12345678);
    access_array(signed_ptr);

    free(myArray);
    return 0;
}
