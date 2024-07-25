# Makefile for building with LLVM pass and specific ARM architecture settings
# Please make sure you have LLVM 14 installed.

# Compiler setup
CC := clang-14
CFLAGS := -march=armv8.5a+memtag -O0
LLVMPASS := ./LLVM/Pass3/libModifyLoadStoreAddrsPass.so

# Source files
SAFE_SRC := safe.c
MTE_EXAMPLE_SRC := mte_example.c

# Object files
SAFE_OBJ := safe.o
MTE_EXAMPLE_OBJ := mte_example.o

EXECUTABLE := pass_mte_load_store

all: $(EXECUTABLE)

# Link executable
$(EXECUTABLE): $(SAFE_OBJ) $(MTE_EXAMPLE_OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

# Compile safe.c with LLVM pass
$(SAFE_OBJ): $(SAFE_SRC)
	$(CC) -flegacy-pass-manager -c -Xclang -load -Xclang $(LLVMPASS) $(CFLAGS) $< -o $@

# Compile mte_example.c normally
$(MTE_EXAMPLE_OBJ): $(MTE_EXAMPLE_SRC)
	$(CC) -c $(CFLAGS) $< -o $@

# Clean to remove generated files
clean:
	rm -f $(SAFE_OBJ) $(MTE_EXAMPLE_OBJ) $(EXECUTABLE)

.PHONY: all clean
