//===-- Cpu0MCTargetDesc.cpp - Cpu0 Target Descriptions -------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file provides Cpu0 specific target descriptions.
//
//===----------------------------------------------------------------------===//

#include "Cpu0MCTargetDesc.h"
#include "Cpu0MCAsmInfo.h"
#include "llvm/MC/MachineLocation.h"
#include "llvm/MC/MCELFStreamer.h"
#include "llvm/MC/MCInstrAnalysis.h"
#include "llvm/MC/MCInstPrinter.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/FormattedStream.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

#define GET_INSTRINFO_MC_DESC
#include "Cpu0GenInstrInfo.inc"

#define GET_SUBTARGETINFO_MC_DESC
#include "Cpu0GenSubtargetInfo.inc"

#define GET_REGINFO_MC_DESC
#include "Cpu0GenRegisterInfo.inc"

static MCInstrInfo *createCpu0MCInstrInfo() {
  MCInstrInfo *X = new MCInstrInfo();
  InitCpu0MCInstrInfo(X); // defined in Cpu0GenInstrInfo.inc
  return X;
}

static MCAsmInfo *createCpu0MCAsmInfo(const MCRegisterInfo &MRI,
                                      const Triple &TT,
                                      const MCTargetOptions &Options) {
  MCAsmInfo *MAI = new Cpu0MCAsmInfo(TT);

  unsigned SP = MRI.getDwarfRegNum(Cpu0::SP, true);
  MCCFIInstruction Inst = MCCFIInstruction::createDefCfaRegister(nullptr, SP);
  MAI->addInitialFrameState(Inst);

  return MAI;
}

//@2 {
extern "C" void LLVMInitializeCpu0TargetMC() {
  for (Target *T : {&TheCpu0Target, &TheCpu0elTarget}) {
    // Register the MC asm info.
    RegisterMCAsmInfoFn X(*T, createCpu0MCAsmInfo);

    // Register the MC instruction info.
    TargetRegistry::RegisterMCInstrInfo(*T, createCpu0MCInstrInfo);
  }

}
//@2 }

