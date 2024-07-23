#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

void* sign_pointer_with_modifier(void *ptr,uint64_t modifier);
void* authenticate_pointer_with_modifier(void *ptr,uint64_t modifier);
void access_array(void *array);