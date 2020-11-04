llvm-tblgen ..\src\lib\Tg\X86\X86.td -gen-register-info -I ..\src\include -I ..\src\lib\Tg\X86 -o X86GenRegisterInfo.inc
llvm-tblgen ..\src\lib\Tg\X86\X86.td -gen-instr-info -I ..\src\include -I ..\src\lib\Tg\X86 -o X86GenInstrInfo.inc
llvm-tblgen ..\src\lib\Tg\X86\X86.td -gen-subtarget -I ..\src\include -I ..\src\lib\Tg\X86 -o X86GenSubtargetInfo.inc
llvm-tblgen ..\src\lib\Tg\X86\X86.td -gen-asm-matcher -I ..\src\include -I ..\src\lib\Tg\X86 -o X86GenAsmMatcher.inc
llvm-tblgen ..\src\lib\Tg\X86\X86.td -gen-disassembler -I ..\src\include -I ..\src\lib\Tg\X86 -o X86GenDisassemblerTables.inc
llvm-tblgen ..\src\lib\Tg\X86\X86.td -gen-asm-writer -I ..\src\include -I ..\src\lib\Tg\X86 -o X86GenAsmWriter.inc
llvm-tblgen ..\src\lib\Tg\X86\X86.td -asmwriternum=1 -gen-asm-writer -I ..\src\include -I ..\src\lib\Tg\X86 -o X86GenAsmWriter1.inc
llvm-tblgen ..\src\lib\Tg\X86\X86.td -gen-fast-isel -I ..\src\include -I ..\src\lib\Tg\X86 -o X86GenFastISel.inc
llvm-tblgen ..\src\lib\Tg\X86\X86.td -gen-callingconv -I ..\src\include -I ..\src\lib\Tg\X86 -o X86GenCallingConv.inc
llvm-tblgen ..\src\lib\Tg\X86\X86.td -gen-dag-isel -I ..\src\include -I ..\src\lib\Tg\X86 -o X86GenDAGISel.inc
pause