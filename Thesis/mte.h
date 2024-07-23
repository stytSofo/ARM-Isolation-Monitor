#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/auxv.h>
#include <sys/mman.h>
#include <sys/prctl.h>
#include <assert.h>
#include <stdbool.h>
#include <fcntl.h>
#define u8 uint8_t
#define u64 uint64_t

__attribute__((always_inline))
/// @brief Generate a randon tag and insert it at the ptr's range
/// @param ptr The pointer
/// @param len The length of memory we want to tag
/// @return A tagged pointer
inline void *
mte_tag(void *ptr, size_t len)
{
  asm volatile("irg %0, %0\n" : "+r"(ptr));
  void *end_ptr = ptr;
  for (size_t i = 0; i < len; i += 16)
  {
    asm volatile("stg %0, [%0], #16\n" : "+r"(end_ptr));
  }
  return ptr;
}

/// @brief Generates a tagged pointer with the specified tag
/// @param ptr The pointer we want to tag
/// @param tag The tag to tag the pointer with
/// @param len How many bytes to tag
inline void mte_set_tag(void *ptr, u8 tag, size_t len)
{
  uintptr_t tagged_ptr = (uintptr_t)ptr;

  // Calculate the new pointer with the tag
  tagged_ptr = (tagged_ptr & ~((uintptr_t)0xF << 56)) | ((uintptr_t)tag << 56);

  // Using inline assembly to apply the tag
  // Replace "stg" with the appropriate MTE instruction if needed
  for (size_t i = 0; i < len; i += 16)
  {
    asm volatile("stg %0, [%1]" : : "r"(tagged_ptr), "r"(ptr) : "memory");
  }
}

/// @brief Enable MTE in this executing thread
/// @param sync Bool flag, set to true for SYNC MTE
/// @param tag_mask Which tags to be used
void mte_enable(bool sync, uint16_t tag_mask)
{
  int ctrl = PR_TAGGED_ADDR_ENABLE | (sync ? PR_MTE_TCF_SYNC : PR_MTE_TCF_ASYNC);
  ctrl |= tag_mask << PR_MTE_TAG_SHIFT;
  assert(0 == prctl(PR_SET_TAGGED_ADDR_CTRL, ctrl, 0, 0, 0));
}

void mte_disable()
{
  assert(0 == prctl(PR_SET_TAGGED_ADDR_CTRL, PR_MTE_TCF_NONE, 0, 0, 0));
}