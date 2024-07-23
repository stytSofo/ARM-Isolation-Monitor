cmake_minimum_required(VERSION 3.13.4)
project(MyLLVMPass)

find_package(LLVM REQUIRED CONFIG)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

add_library( MyLLVMPass MODULE
    MTECheckPass.cpp
)

set_target_properties(MyLLVMPass PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)
