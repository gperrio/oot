.rdata
glabel D_80139960
    .asciz "S:"
    .balign 4
   
glabel D_80139964
    .asciz "M:"
    .balign 4

glabel D_80139968
    .asciz "F:"
    .balign 4
    
glabel D_8013996C
    .asciz "I:"
    .balign 4

.text
glabel func_800584E8
/* ACF688 800584E8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* ACF68C 800584EC 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* ACF690 800584F0 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* ACF694 800584F4 AFBF002C */  sw    $ra, 0x2c($sp)
/* ACF698 800584F8 AFB50028 */  sw    $s5, 0x28($sp)
/* ACF69C 800584FC AFB40024 */  sw    $s4, 0x24($sp)
/* ACF6A0 80058500 AFB30020 */  sw    $s3, 0x20($sp)
/* ACF6A4 80058504 AFB2001C */  sw    $s2, 0x1c($sp)
/* ACF6A8 80058508 AFB10018 */  sw    $s1, 0x18($sp)
/* ACF6AC 8005850C AFB00014 */  sw    $s0, 0x14($sp)
/* ACF6B0 80058510 85CF0194 */  lh    $t7, 0x194($t6)
/* ACF6B4 80058514 00808025 */  move  $s0, $a0
/* ACF6B8 80058518 31F80001 */  andi  $t8, $t7, 1
/* ACF6BC 8005851C 530000DD */  beql  $t8, $zero, .L80058894
/* ACF6C0 80058520 8FBF002C */   lw    $ra, 0x2c($sp)
/* ACF6C4 80058524 8C8E008C */  lw    $t6, 0x8c($a0)
/* ACF6C8 80058528 84990164 */  lh    $t9, 0x164($a0)
/* ACF6CC 8005852C 3C188012 */  lui   $t8, %hi(D_8011D394) # $t8, 0x8012
/* ACF6D0 80058530 85CF07A0 */  lh    $t7, 0x7a0($t6)
/* ACF6D4 80058534 572F00D7 */  bnel  $t9, $t7, .L80058894
/* ACF6D8 80058538 8FBF002C */   lw    $ra, 0x2c($sp)
/* ACF6DC 8005853C 8F18D394 */  lw    $t8, %lo(D_8011D394)($t8)
/* ACF6E0 80058540 00002825 */  move  $a1, $zero
/* ACF6E4 80058544 27A30058 */  addiu $v1, $sp, 0x58
/* ACF6E8 80058548 170000D1 */  bnez  $t8, .L80058890
/* ACF6EC 8005854C 27A80048 */   addiu $t0, $sp, 0x48
/* ACF6F0 80058550 24150020 */  li    $s5, 32
/* ACF6F4 80058554 24140063 */  li    $s4, 99
/* ACF6F8 80058558 24130077 */  li    $s3, 119
/* ACF6FC 8005855C 24120073 */  li    $s2, 115
/* ACF700 80058560 24110064 */  li    $s1, 100
/* ACF704 80058564 241F002A */  li    $ra, 42
/* ACF708 80058568 240D0100 */  li    $t5, 256
/* ACF70C 8005856C 240C0007 */  li    $t4, 7
/* ACF710 80058570 240B0003 */  li    $t3, 3
/* ACF714 80058574 240A0001 */  li    $t2, 1
/* ACF718 80058578 24090061 */  li    $t1, 97
/* ACF71C 8005857C 27A7005C */  addiu $a3, $sp, 0x5c
/* ACF720 80058580 2406002D */  li    $a2, 45
.L80058584:
/* ACF724 80058584 8E0E008C */  lw    $t6, 0x8c($s0)
/* ACF728 80058588 01C5C821 */  addu  $t9, $t6, $a1
/* ACF72C 8005858C 8F240790 */  lw    $a0, 0x790($t9)
/* ACF730 80058590 24A50004 */  addiu $a1, $a1, 4
/* ACF734 80058594 54800005 */  bnezl $a0, .L800585AC
/* ACF738 80058598 84820140 */   lh    $v0, 0x140($a0)
/* ACF73C 8005859C A0660000 */  sb    $a2, ($v1)
/* ACF740 800585A0 1000001F */  b     .L80058620
/* ACF744 800585A4 A1150000 */   sb    $s5, ($t0)
/* ACF748 800585A8 84820140 */  lh    $v0, 0x140($a0)
.L800585AC:
/* ACF74C 800585AC 24180020 */  li    $t8, 32
/* ACF750 800585B0 5040000E */  beql  $v0, $zero, .L800585EC
/* ACF754 800585B4 A0740000 */   sb    $s4, ($v1)
/* ACF758 800585B8 104A000E */  beq   $v0, $t2, .L800585F4
/* ACF75C 800585BC 240E0020 */   li    $t6, 32
/* ACF760 800585C0 104B000F */  beq   $v0, $t3, .L80058600
/* ACF764 800585C4 24190020 */   li    $t9, 32
/* ACF768 800585C8 104C0010 */  beq   $v0, $t4, .L8005860C
/* ACF76C 800585CC 240F0020 */   li    $t7, 32
/* ACF770 800585D0 104D0011 */  beq   $v0, $t5, .L80058618
/* ACF774 800585D4 24180020 */   li    $t8, 32
/* ACF778 800585D8 240F0020 */  li    $t7, 32
/* ACF77C 800585DC A10F0000 */  sb    $t7, ($t0)
/* ACF780 800585E0 1000000F */  b     .L80058620
/* ACF784 800585E4 A07F0000 */   sb    $ra, ($v1)
/* ACF788 800585E8 A0740000 */  sb    $s4, ($v1)
.L800585EC:
/* ACF78C 800585EC 1000000C */  b     .L80058620
/* ACF790 800585F0 A1180000 */   sb    $t8, ($t0)
.L800585F4:
/* ACF794 800585F4 A0730000 */  sb    $s3, ($v1)
/* ACF798 800585F8 10000009 */  b     .L80058620
/* ACF79C 800585FC A10E0000 */   sb    $t6, ($t0)
.L80058600:
/* ACF7A0 80058600 A0720000 */  sb    $s2, ($v1)
/* ACF7A4 80058604 10000006 */  b     .L80058620
/* ACF7A8 80058608 A1190000 */   sb    $t9, ($t0)
.L8005860C:
/* ACF7AC 8005860C A0690000 */  sb    $t1, ($v1)
/* ACF7B0 80058610 10000003 */  b     .L80058620
/* ACF7B4 80058614 A10F0000 */   sb    $t7, ($t0)
.L80058618:
/* ACF7B8 80058618 A0710000 */  sb    $s1, ($v1)
/* ACF7BC 8005861C A1180000 */  sb    $t8, ($t0)
.L80058620:
/* ACF7C0 80058620 24630001 */  addiu $v1, $v1, 1
/* ACF7C4 80058624 0067082B */  sltu  $at, $v1, $a3
/* ACF7C8 80058628 1420FFD6 */  bnez  $at, .L80058584
/* ACF7CC 8005862C 25080001 */   addiu $t0, $t0, 1
/* ACF7D0 80058630 A0600000 */  sb    $zero, ($v1)
/* ACF7D4 80058634 A1000000 */  sb    $zero, ($t0)
/* ACF7D8 80058638 8E0E008C */  lw    $t6, 0x8c($s0)
/* ACF7DC 8005863C 27B10048 */  addiu $s1, $sp, 0x48
/* ACF7E0 80058640 24040003 */  li    $a0, 3
/* ACF7E4 80058644 85D907A0 */  lh    $t9, 0x7a0($t6)
/* ACF7E8 80058648 24050016 */  li    $a1, 22
/* ACF7EC 8005864C 24060005 */  li    $a2, 5
/* ACF7F0 80058650 02397821 */  addu  $t7, $s1, $t9
/* ACF7F4 80058654 A1E90000 */  sb    $t1, ($t7)
/* ACF7F8 80058658 0C018DDB */  jal   func_8006376C
/* ACF7FC 8005865C 27A70058 */   addiu $a3, $sp, 0x58
/* ACF800 80058660 24040003 */  li    $a0, 3
/* ACF804 80058664 24050016 */  li    $a1, 22
/* ACF808 80058668 24060001 */  li    $a2, 1
/* ACF80C 8005866C 0C018DDB */  jal   func_8006376C
/* ACF810 80058670 02203825 */   move  $a3, $s1
/* ACF814 80058674 3C078014 */  lui   $a3, %hi(D_80139960) # $a3, 0x8014
/* ACF818 80058678 24E79960 */  addiu $a3, %lo(D_80139960) # addiu $a3, $a3, -0x66a0
/* ACF81C 8005867C 24040003 */  li    $a0, 3
/* ACF820 80058680 24050017 */  li    $a1, 23
/* ACF824 80058684 0C018DDB */  jal   func_8006376C
/* ACF828 80058688 24060005 */   li    $a2, 5
/* ACF82C 8005868C 86180142 */  lh    $t8, 0x142($s0)
/* ACF830 80058690 2411000C */  li    $s1, 12
/* ACF834 80058694 3C198012 */  lui   $t9, %hi(D_80119F8C) # $t9, 0x8012
/* ACF838 80058698 03110019 */  multu $t8, $s1
/* ACF83C 8005869C 27399F8C */  addiu $t9, %lo(D_80119F8C) # addiu $t9, $t9, -0x6074
/* ACF840 800586A0 24040005 */  li    $a0, 5
/* ACF844 800586A4 24050017 */  li    $a1, 23
/* ACF848 800586A8 24060004 */  li    $a2, 4
/* ACF84C 800586AC 00007012 */  mflo  $t6
/* ACF850 800586B0 01D93821 */  addu  $a3, $t6, $t9
/* ACF854 800586B4 0C018DDB */  jal   func_8006376C
/* ACF858 800586B8 00000000 */   nop   
/* ACF85C 800586BC 3C078014 */  lui   $a3, %hi(D_80139964) # $a3, 0x8014
/* ACF860 800586C0 24E79964 */  addiu $a3, %lo(D_80139964) # addiu $a3, $a3, -0x669c
/* ACF864 800586C4 24040003 */  li    $a0, 3
/* ACF868 800586C8 24050018 */  li    $a1, 24
/* ACF86C 800586CC 0C018DDB */  jal   func_8006376C
/* ACF870 800586D0 24060005 */   li    $a2, 5
/* ACF874 800586D4 860F0144 */  lh    $t7, 0x144($s0)
/* ACF878 800586D8 3C0E8012 */  lui   $t6, %hi(D_8011A2A4) # $t6, 0x8012
/* ACF87C 800586DC 25CEA2A4 */  addiu $t6, %lo(D_8011A2A4) # addiu $t6, $t6, -0x5d5c
/* ACF880 800586E0 01F10019 */  multu $t7, $s1
/* ACF884 800586E4 24040005 */  li    $a0, 5
/* ACF888 800586E8 24050018 */  li    $a1, 24
/* ACF88C 800586EC 24060004 */  li    $a2, 4
/* ACF890 800586F0 0000C012 */  mflo  $t8
/* ACF894 800586F4 030E3821 */  addu  $a3, $t8, $t6
/* ACF898 800586F8 0C018DDB */  jal   func_8006376C
/* ACF89C 800586FC 00000000 */   nop   
/* ACF8A0 80058700 3C078014 */  lui   $a3, %hi(D_80139968) # $a3, 0x8014
/* ACF8A4 80058704 24E79968 */  addiu $a3, %lo(D_80139968) # addiu $a3, $a3, -0x6698
/* ACF8A8 80058708 24040003 */  li    $a0, 3
/* ACF8AC 8005870C 24050019 */  li    $a1, 25
/* ACF8B0 80058710 0C018DDB */  jal   func_8006376C
/* ACF8B4 80058714 24060005 */   li    $a2, 5
/* ACF8B8 80058718 86190142 */  lh    $t9, 0x142($s0)
/* ACF8BC 8005871C 3C188012 */  lui   $t8, %hi(D_8011D068)
/* ACF8C0 80058720 860E0144 */  lh    $t6, 0x144($s0)
/* ACF8C4 80058724 001978C0 */  sll   $t7, $t9, 3
/* ACF8C8 80058728 030FC021 */  addu  $t8, $t8, $t7
/* ACF8CC 8005872C 8F18D068 */  lw    $t8, %lo(D_8011D068)($t8)
/* ACF8D0 80058730 000EC8C0 */  sll   $t9, $t6, 3
/* ACF8D4 80058734 24040005 */  li    $a0, 5
/* ACF8D8 80058738 03197821 */  addu  $t7, $t8, $t9
/* ACF8DC 8005873C 85EE0000 */  lh    $t6, ($t7)
/* ACF8E0 80058740 3C198012 */  lui   $t9, %hi(D_8011D3F8) # $t9, 0x8012
/* ACF8E4 80058744 2739D3F8 */  addiu $t9, %lo(D_8011D3F8) # addiu $t9, $t9, -0x2c08
/* ACF8E8 80058748 000EC0C0 */  sll   $t8, $t6, 3
/* ACF8EC 8005874C 03193821 */  addu  $a3, $t8, $t9
/* ACF8F0 80058750 24050019 */  li    $a1, 25
/* ACF8F4 80058754 0C018DDB */  jal   func_8006376C
/* ACF8F8 80058758 24060004 */   li    $a2, 4
/* ACF8FC 8005875C 86030148 */  lh    $v1, 0x148($s0)
/* ACF900 80058760 00001025 */  move  $v0, $zero
/* ACF904 80058764 2408000A */  li    $t0, 10
/* ACF908 80058768 04610005 */  bgez  $v1, .L80058780
/* ACF90C 8005876C 24040003 */   li    $a0, 3
/* ACF910 80058770 240F002D */  li    $t7, 45
/* ACF914 80058774 A3AF0050 */  sb    $t7, 0x50($sp)
/* ACF918 80058778 86030148 */  lh    $v1, 0x148($s0)
/* ACF91C 8005877C 24020001 */  li    $v0, 1
.L80058780:
/* ACF920 80058780 0068001A */  div   $zero, $v1, $t0
/* ACF924 80058784 00007012 */  mflo  $t6
/* ACF928 80058788 2405001A */  li    $a1, 26
/* ACF92C 8005878C 15000002 */  bnez  $t0, .L80058798
/* ACF930 80058790 00000000 */   nop   
/* ACF934 80058794 0007000D */  break 7
.L80058798:
/* ACF938 80058798 2401FFFF */  li    $at, -1
/* ACF93C 8005879C 15010004 */  bne   $t0, $at, .L800587B0
/* ACF940 800587A0 3C018000 */   lui   $at, 0x8000
/* ACF944 800587A4 14610002 */  bne   $v1, $at, .L800587B0
/* ACF948 800587A8 00000000 */   nop   
/* ACF94C 800587AC 0006000D */  break 6
.L800587B0:
/* ACF950 800587B0 24060005 */  li    $a2, 5
/* ACF954 800587B4 11C00011 */  beqz  $t6, .L800587FC
/* ACF958 800587B8 3C078014 */   lui   $a3, %hi(D_8013996C) # $a3, 0x8014
/* ACF95C 800587BC 0048001A */  div   $zero, $v0, $t0
/* ACF960 800587C0 27A30050 */  addiu $v1, $sp, 0x50
/* ACF964 800587C4 00627821 */  addu  $t7, $v1, $v0
/* ACF968 800587C8 0000C012 */  mflo  $t8
/* ACF96C 800587CC 27190030 */  addiu $t9, $t8, 0x30
/* ACF970 800587D0 15000002 */  bnez  $t0, .L800587DC
/* ACF974 800587D4 00000000 */   nop   
/* ACF978 800587D8 0007000D */  break 7
.L800587DC:
/* ACF97C 800587DC 2401FFFF */  li    $at, -1
/* ACF980 800587E0 15010004 */  bne   $t0, $at, .L800587F4
/* ACF984 800587E4 3C018000 */   lui   $at, 0x8000
/* ACF988 800587E8 14410002 */  bne   $v0, $at, .L800587F4
/* ACF98C 800587EC 00000000 */   nop   
/* ACF990 800587F0 0006000D */  break 6
.L800587F4:
/* ACF994 800587F4 24420001 */  addiu $v0, $v0, 1
/* ACF998 800587F8 A1F90000 */  sb    $t9, ($t7)
.L800587FC:
/* ACF99C 800587FC 0048001A */  div   $zero, $v0, $t0
/* ACF9A0 80058800 27A30050 */  addiu $v1, $sp, 0x50
/* ACF9A4 80058804 0062C821 */  addu  $t9, $v1, $v0
/* ACF9A8 80058808 15000002 */  bnez  $t0, .L80058814
/* ACF9AC 8005880C 00000000 */   nop   
/* ACF9B0 80058810 0007000D */  break 7
.L80058814:
/* ACF9B4 80058814 2401FFFF */  li    $at, -1
/* ACF9B8 80058818 15010004 */  bne   $t0, $at, .L8005882C
/* ACF9BC 8005881C 3C018000 */   lui   $at, 0x8000
/* ACF9C0 80058820 14410002 */  bne   $v0, $at, .L8005882C
/* ACF9C4 80058824 00000000 */   nop   
/* ACF9C8 80058828 0006000D */  break 6
.L8005882C:
/* ACF9CC 8005882C 24420001 */  addiu $v0, $v0, 1
/* ACF9D0 80058830 00007010 */  mfhi  $t6
/* ACF9D4 80058834 25D80030 */  addiu $t8, $t6, 0x30
/* ACF9D8 80058838 00627821 */  addu  $t7, $v1, $v0
/* ACF9DC 8005883C 24420001 */  addiu $v0, $v0, 1
/* ACF9E0 80058840 A3380000 */  sb    $t8, ($t9)
/* ACF9E4 80058844 00627021 */  addu  $t6, $v1, $v0
/* ACF9E8 80058848 24420001 */  addiu $v0, $v0, 1
/* ACF9EC 8005884C A1F50000 */  sb    $s5, ($t7)
/* ACF9F0 80058850 0062C021 */  addu  $t8, $v1, $v0
/* ACF9F4 80058854 24420001 */  addiu $v0, $v0, 1
/* ACF9F8 80058858 A1D50000 */  sb    $s5, ($t6)
/* ACF9FC 8005885C 0062C821 */  addu  $t9, $v1, $v0
/* ACFA00 80058860 A3150000 */  sb    $s5, ($t8)
/* ACFA04 80058864 24420001 */  addiu $v0, $v0, 1
/* ACFA08 80058868 A3350000 */  sb    $s5, ($t9)
/* ACFA0C 8005886C 00627821 */  addu  $t7, $v1, $v0
/* ACFA10 80058870 A1E00000 */  sb    $zero, ($t7)
/* ACFA14 80058874 0C018DDB */  jal   func_8006376C
/* ACFA18 80058878 24E7996C */   addiu $a3, %lo(D_8013996C) # addiu $a3, $a3, -0x6694
/* ACFA1C 8005887C 24040005 */  li    $a0, 5
/* ACFA20 80058880 2405001A */  li    $a1, 26
/* ACFA24 80058884 24060004 */  li    $a2, 4
/* ACFA28 80058888 0C018DDB */  jal   func_8006376C
/* ACFA2C 8005888C 27A70050 */   addiu $a3, $sp, 0x50
.L80058890:
/* ACFA30 80058890 8FBF002C */  lw    $ra, 0x2c($sp)
.L80058894:
/* ACFA34 80058894 8FB00014 */  lw    $s0, 0x14($sp)
/* ACFA38 80058898 8FB10018 */  lw    $s1, 0x18($sp)
/* ACFA3C 8005889C 8FB2001C */  lw    $s2, 0x1c($sp)
/* ACFA40 800588A0 8FB30020 */  lw    $s3, 0x20($sp)
/* ACFA44 800588A4 8FB40024 */  lw    $s4, 0x24($sp)
/* ACFA48 800588A8 8FB50028 */  lw    $s5, 0x28($sp)
/* ACFA4C 800588AC 03E00008 */  jr    $ra
/* ACFA50 800588B0 27BD0060 */   addiu $sp, $sp, 0x60
