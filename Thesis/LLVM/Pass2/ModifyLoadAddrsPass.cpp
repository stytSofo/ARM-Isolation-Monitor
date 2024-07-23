#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Analysis/CostModel.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/Support/InstructionCost.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"

#include <llvm/Support/Debug.h>

using namespace llvm;

namespace
{
    struct ModifyLoadAddrsPass : public FunctionPass
    {
        static char ID;
        ModifyLoadAddrsPass() : FunctionPass(ID) {}

        bool runOnFunction(Function &F) override
        {
            for (auto &BB : F)
            {
                for (auto &I : BB)
                {

                    if (LoadInst *loadInst = dyn_cast<LoadInst>(&I))
                    {
                        {
                            std::string instr_name = loadInst->getOpcodeName();

                            // Use LLVM's debugging stream to print out instruction details
                            dbgs() << "Instrumenting " << instr_name;

                            // Print each operand of the load instruction
                            dbgs() << " with operands: ";
                            for (unsigned i = 0, e = loadInst->getNumOperands(); i != e; ++i)
                            {
                                if (i > 0)
                                    dbgs() << ", ";
                                dbgs() << *loadInst->getOperand(i);
                            }
                            dbgs() << "\n";
                        }

                        IRBuilder<> Builder(loadInst);
                        Value *originalPtr = loadInst->getPointerOperand();

                        // Calculate new address with the expected tag
                        Value *modifiedPtr = modifyPointerAddress(Builder, originalPtr);

                        // Replace original pointer with the expected-tag tagged pointer in the load instruction
                        loadInst->setOperand(0, modifiedPtr);
                    }
                }
            }
            return true;
        }

        Value *modifyPointerAddress(IRBuilder<> &Builder, Value *originalPtr)
        {

            uint64_t mask = ~(0xFFUL << 56); // Clear the top byte (56-63) si
            uint64_t expectedByte = 0x03UL << 56;

            Value *maskedAddr = Builder.CreateAnd(originalPtr, ConstantInt::get(Type::getInt64Ty(Builder.getContext()), mask), "maskedAddr");
            Value *modifiedAddr = Builder.CreateOr(maskedAddr, ConstantInt::get(Type::getInt64Ty(Builder.getContext()), expectedByte), "modifiedAddr");

            return modifiedAddr;
        }
    };
}

char ModifyLoadAddrsPass::ID = 0;
static RegisterPass<ModifyLoadAddrsPass> X("ModifyLoadAddrsPass", "Pass");

static ModifyLoadAddrsPass *_PassMaker = NULL;

static RegisterStandardPasses _RegPass1(PassManagerBuilder::EP_OptimizerLast,
                                        [](const PassManagerBuilder &, legacy::PassManagerBase &PM)
                                        {
        if(!_PassMaker){ PM.add(_PassMaker = new ModifyLoadAddrsPass());} }); // ** for -Ox

static RegisterStandardPasses _RegPass2(PassManagerBuilder::EP_EnabledOnOptLevel0,
                                        [](const PassManagerBuilder &, legacy::PassManagerBase &PM)
                                        {
        if(!_PassMaker){ PM.add(_PassMaker = new ModifyLoadAddrsPass()); } }); // ** for -O0
