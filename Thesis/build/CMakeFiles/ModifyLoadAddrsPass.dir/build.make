# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/thesis/Thesis/LLVM/Pass2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thesis/Thesis/build

# Include any dependencies generated for this target.
include CMakeFiles/ModifyLoadAddrsPass.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ModifyLoadAddrsPass.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ModifyLoadAddrsPass.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ModifyLoadAddrsPass.dir/flags.make

CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.o: CMakeFiles/ModifyLoadAddrsPass.dir/flags.make
CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.o: /home/thesis/Thesis/LLVM/Pass2/ModifyLoadAddrsPass.cpp
CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.o: CMakeFiles/ModifyLoadAddrsPass.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thesis/Thesis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.o"
	/usr/bin/clang++-14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.o -MF CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.o.d -o CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.o -c /home/thesis/Thesis/LLVM/Pass2/ModifyLoadAddrsPass.cpp

CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.i"
	/usr/bin/clang++-14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thesis/Thesis/LLVM/Pass2/ModifyLoadAddrsPass.cpp > CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.i

CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.s"
	/usr/bin/clang++-14 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thesis/Thesis/LLVM/Pass2/ModifyLoadAddrsPass.cpp -o CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.s

# Object files for target ModifyLoadAddrsPass
ModifyLoadAddrsPass_OBJECTS = \
"CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.o"

# External object files for target ModifyLoadAddrsPass
ModifyLoadAddrsPass_EXTERNAL_OBJECTS =

libModifyLoadAddrsPass.so: CMakeFiles/ModifyLoadAddrsPass.dir/ModifyLoadAddrsPass.cpp.o
libModifyLoadAddrsPass.so: CMakeFiles/ModifyLoadAddrsPass.dir/build.make
libModifyLoadAddrsPass.so: CMakeFiles/ModifyLoadAddrsPass.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thesis/Thesis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module libModifyLoadAddrsPass.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ModifyLoadAddrsPass.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ModifyLoadAddrsPass.dir/build: libModifyLoadAddrsPass.so
.PHONY : CMakeFiles/ModifyLoadAddrsPass.dir/build

CMakeFiles/ModifyLoadAddrsPass.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ModifyLoadAddrsPass.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ModifyLoadAddrsPass.dir/clean

CMakeFiles/ModifyLoadAddrsPass.dir/depend:
	cd /home/thesis/Thesis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thesis/Thesis/LLVM/Pass2 /home/thesis/Thesis/LLVM/Pass2 /home/thesis/Thesis/build /home/thesis/Thesis/build /home/thesis/Thesis/build/CMakeFiles/ModifyLoadAddrsPass.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ModifyLoadAddrsPass.dir/depend

