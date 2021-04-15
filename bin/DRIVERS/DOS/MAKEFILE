edit:
	turbo doslfn.asm

debug:
	tasm -m5 -zi -DDEBUG doslfn.asm
	tlink -3 -v -x doslfn.obj
	tdstrip -s -c doslfn.exe

release:
	tasm -m5 doslfn.asm
	tlink -3 -t -x doslfn.obj

lst:
	tasm -m5 -l doslfn.asm


vxd: lfnxlat.386

lfnxlat.386: lfnxlat.obj lfnxlat.def
	link386 /ALI:16 lfnxlat.obj,lfnxlat.386,nul,,lfnxlat.def
	addhdr lfnxlat.386

lfnxlat.obj: lfnxlat.asm
	tasm -m5 -Ic:\ms\inc lfnxlat.asm
#	tasm -l -DDEBUG -m5 -Ic:\ms\inc lfnxlat.asm


disk:
	copy doslfn.asm a:
	copy doslfn.com a:
	copy doslfn.tds a:

zip:
	copy wnetdrv.dll FMLFN.DRV
	pkzip -u doslfn.zip @&&!
DOSLFN.TXT
DOSLFN.COM
DOSLFN.ASM
PROLOG.ASM
MAKEFILE
L.PAS
L.EXE
PARSER.PAS
*.TBL
*.GBK
MK_TABLE.C
LFNXLAT.386
LFNXLAT.ASM
LFNXLAT.DEF
TBL.TXT
FMLFN.DRV
!
