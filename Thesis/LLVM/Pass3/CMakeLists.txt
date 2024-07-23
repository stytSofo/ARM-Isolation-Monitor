cmake_minimum_required(VERSION 3.13.4)
project(ModifyLoadStoreAddrsPass)

find_package(LLVM REQUIRED CONFIG)

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

add_library( ModifyLoadStoreAddrsPass MODULE
ModifyLoadStoreAddrsPass.cpp
)


set_target_properties(ModifyLoadStoreAddrsPass PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
)
