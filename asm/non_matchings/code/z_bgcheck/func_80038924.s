glabel func_80038924
/* AAFAC4 80038924 8482000A */  lh    $v0, 0xa($a0)
/* AAFAC8 80038928 24017FFF */  li    $at, 32767
/* AAFACC 8003892C 10410003 */  beq   $v0, $at, .L8003893C
/* AAFAD0 80038930 24018001 */   li    $at, -32767
/* AAFAD4 80038934 5441000A */  bnel  $v0, $at, .L80038960
/* AAFAD8 80038938 94820002 */   lhu   $v0, 2($a0)
.L8003893C:
/* AAFADC 8003893C 948E0002 */  lhu   $t6, 2($a0)
/* AAFAE0 80038940 24090006 */  li    $t1, 6
/* AAFAE4 80038944 31CF1FFF */  andi  $t7, $t6, 0x1fff
/* AAFAE8 80038948 01E90019 */  multu $t7, $t1
/* AAFAEC 8003894C 0000C012 */  mflo  $t8
/* AAFAF0 80038950 00B8C821 */  addu  $t9, $a1, $t8
/* AAFAF4 80038954 03E00008 */  jr    $ra
/* AAFAF8 80038958 87220002 */   lh    $v0, 2($t9)

/* AAFAFC 8003895C 94820002 */  lhu   $v0, 2($a0)
.L80038960:
/* AAFB00 80038960 24090006 */  li    $t1, 6
/* AAFB04 80038964 94830004 */  lhu   $v1, 4($a0)
/* AAFB08 80038968 30421FFF */  andi  $v0, $v0, 0x1fff
/* AAFB0C 8003896C 00490019 */  multu $v0, $t1
/* AAFB10 80038970 30631FFF */  andi  $v1, $v1, 0x1fff
/* AAFB14 80038974 94860006 */  lhu   $a2, 6($a0)
/* AAFB18 80038978 00005012 */  mflo  $t2
/* AAFB1C 8003897C 00AA5821 */  addu  $t3, $a1, $t2
/* AAFB20 80038980 85670002 */  lh    $a3, 2($t3)
/* AAFB24 80038984 00690019 */  multu $v1, $t1
/* AAFB28 80038988 00006012 */  mflo  $t4
/* AAFB2C 8003898C 00AC6821 */  addu  $t5, $a1, $t4
/* AAFB30 80038990 85A80002 */  lh    $t0, 2($t5)
/* AAFB34 80038994 0107082A */  slt   $at, $t0, $a3
/* AAFB38 80038998 10200003 */  beqz  $at, .L800389A8
/* AAFB3C 8003899C 00000000 */   nop   
/* AAFB40 800389A0 00083C00 */  sll   $a3, $t0, 0x10
/* AAFB44 800389A4 00073C03 */  sra   $a3, $a3, 0x10
.L800389A8:
/* AAFB48 800389A8 00C90019 */  multu $a2, $t1
/* AAFB4C 800389AC 00007012 */  mflo  $t6
/* AAFB50 800389B0 00AE7821 */  addu  $t7, $a1, $t6
/* AAFB54 800389B4 85E30002 */  lh    $v1, 2($t7)
/* AAFB58 800389B8 00E3082A */  slt   $at, $a3, $v1
/* AAFB5C 800389BC 10200003 */  beqz  $at, .L800389CC
/* AAFB60 800389C0 00601025 */   move  $v0, $v1
/* AAFB64 800389C4 03E00008 */  jr    $ra
/* AAFB68 800389C8 00E01025 */   move  $v0, $a3

.L800389CC:
/* AAFB6C 800389CC 03E00008 */  jr    $ra
/* AAFB70 800389D0 00000000 */   nop   

