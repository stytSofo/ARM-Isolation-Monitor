cmake_minimum_required(VERSION 3.13.4)
project(ModifyLoadAddrsPass)

find_package(LLVM REQUIRED CONFIG)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

add_library( ModifyLoadAddrsPass MODULE
    ModifyLoadAddrsPass.cpp
)


set_target_properties(ModifyLoadAddrsPass PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)
