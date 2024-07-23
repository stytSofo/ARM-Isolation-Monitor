#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InlineAsm.h"

using namespace llvm;

namespace
{
  struct MTECheckPass : public FunctionPass
  {
    static char ID;
    MTECheckPass() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override
    {
      if (F.hasFnAttribute("annotate") && F.getFnAttribute("annotate").getValueAsString() == "Safe")
      {
        errs() << "Running MTE Check Pass on function: " << F.getName() << "\n";
        for (auto &BB : F)
        {
          for (auto &I : BB)
          {
            
            if (auto *LI = dyn_cast<LoadInst>(&I))
            {
              IRBuilder<> Builder(LI);
              Value *Ptr = LI->getPointerOperand();

              // Assuming 'expected_tag' is a part of your function arguments or known at compile time
              Value *ExpectedTag = Builder.getInt8(1); // Example tag value
              Value *TaggedAddr = insertTagCheck(Builder, Ptr, ExpectedTag, LI);

              // Use the checked address for loading
              LoadInst *NewLoad = Builder.CreateLoad(TaggedAddr->getType(), TaggedAddr, Twine(1));

              LI->replaceAllUsesWith(NewLoad);
              LI->eraseFromParent();
            }
          }
        }
        return true;
      }

      return false;
    }

    Value *insertTagCheck(IRBuilder<> &Builder, Value *Ptr, Value *ExpectedTag, Instruction *InsertBefore)
    {
      // Convert pointer to uintptr_t assuming 64-bit architecture
      Value *IntAddr = Builder.CreatePtrToInt(Ptr, Builder.getInt64Ty());
      // Clear tag bits and set expected tag
      Value *Mask = Builder.getInt64(~(0xFFFFUL << 48));
      Value *BaseAddr = Builder.CreateAnd(IntAddr, Mask, "base_addr");
      Value *TagShift = Builder.CreateShl(ExpectedTag, 56);
      Value *TaggedAddr = Builder.CreateOr(BaseAddr, TagShift, "tagged_addr");

      // Inline assembly to check tag
      FunctionType *AsmFT = FunctionType::get(Builder.getInt32Ty(), {Builder.getInt64Ty()}, false);
      InlineAsm *Asm = InlineAsm::get(AsmFT, "ldr w0, [$0]",
                                      "=r,r", /* Constraints */
                                      true);  /* Side effects */

      return Builder.CreateCall(Asm, {TaggedAddr}, "check_tag");
    }
  };
}

char MTECheckPass::ID = 0;
static RegisterPass<MTECheckPass> X("mteCheck", "Memory Tagging Extension Check Pass", false, false);
