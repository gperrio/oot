.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_801344A0
    .incbin "baserom.z64", 0xBAB640, 0x4

glabel D_801344A4
    .incbin "baserom.z64", 0xBAB644, 0xC

glabel D_801344B0
    .incbin "baserom.z64", 0xBAB650, 0x10
