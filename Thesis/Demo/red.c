#include "red.h"

/// @brief This function should only be able to access pointers with tag RED (0x03)
/// @param ptr 
void compartment1(unsigned char* ptr){
    printf("%c \n",ptr[0]);
}