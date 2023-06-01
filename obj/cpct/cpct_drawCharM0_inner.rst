ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 ;;-----------------------------LICENSE NOTICE------------------------------------
                              2 ;;  This file is part of CPCtelera: An Amstrad CPC Game Engine 
                              3 ;;  Copyright (C) 2018 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
                              4 ;;
                              5 ;;  This program is free software: you can redistribute it and/or modify
                              6 ;;  it under the terms of the GNU Lesser General Public License as published by
                              7 ;;  the Free Software Foundation, either version 3 of the License, or
                              8 ;;  (at your option) any later version.
                              9 ;;
                             10 ;;  This program is distributed in the hope that it will be useful,
                             11 ;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
                             12 ;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
                             13 ;;  GNU Lesser General Public License for more details.
                             14 ;;
                             15 ;;  You should have received a copy of the GNU Lesser General Public License
                             16 ;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
                             17 ;;-------------------------------------------------------------------------------
                             18 .module cpct_strings
                             19 
                             20 ;;
                             21 ;; Include constants and general values
                             22 ;;
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                             23 .include "macros/cpct_undocumentedOpcodes.h.s"
                              1 ;;-----------------------------LICENSE NOTICE------------------------------------
                              2 ;;  This file is part of CPCtelera: An Amstrad CPC Game Engine 
                              3 ;;  Copyright (C) 2021 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
                              4 ;;
                              5 ;;  This program is free software: you can redistribute it and/or modify
                              6 ;;  it under the terms of the GNU Lesser General Public License as published by
                              7 ;;  the Free Software Foundation, either version 3 of the License, or
                              8 ;;  (at your option) any later version.
                              9 ;;
                             10 ;;  This program is distributed in the hope that it will be useful,
                             11 ;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
                             12 ;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
                             13 ;;  GNU Lesser General Public License for more details.
                             14 ;;
                             15 ;;  You should have received a copy of the GNU Lesser General Public License
                             16 ;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
                             17 ;;-------------------------------------------------------------------------------
                             18 
                             19 ;;
                             20 ;; File: Undocumented Opcodes
                             21 ;;
                             22 ;;    Macros to clarify source code when using undocumented opcodes. Only
                             23 ;; valid to be used from assembly language (not from C).
                             24 ;;
                             25 
                             26 ;; Macro: jr__0
                             27 ;;    Opcode for "JR #0" instruction
                             28 ;; 
                             29 .mdelete jr__0
                             30 .macro jr__0
                             31    .DW #0x0018  ;; JR #00 (Normally used as a modifiable jump, as jr 0 is an infinite loop)
                             32 .endm
                             33 
                             34 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                             35 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                             36 ;; SLL Instructions
                             37 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                             38 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                             39 
                             40 ;; Macro: sll__b
                             41 ;;    Opcode for "SLL b" instruction
                             42 ;; 
                             43 .mdelete sll__b
                             44 .macro sll__b
                             45    .db #0xCB, #0x30  ;; Opcode for sll b
                             46 .endm
                             47 
                             48 ;; Macro: sll__c
                             49 ;;    Opcode for "SLL c" instruction
                             50 ;; 
                             51 .mdelete sll__c
                             52 .macro sll__c
                             53    .db #0xCB, #0x31  ;; Opcode for sll c
                             54 .endm
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                             55 
                             56 ;; Macro: sll__d
                             57 ;;    Opcode for "SLL d" instruction
                             58 ;; 
                             59 .mdelete sll__d
                             60 .macro sll__d
                             61    .db #0xCB, #0x32  ;; Opcode for sll d
                             62 .endm
                             63 
                             64 ;; Macro: sll__e
                             65 ;;    Opcode for "SLL e" instruction
                             66 ;; 
                             67 .mdelete sll__e
                             68 .macro sll__e
                             69    .db #0xCB, #0x33  ;; Opcode for sll e
                             70 .endm
                             71 
                             72 ;; Macro: sll__h
                             73 ;;    Opcode for "SLL h" instruction
                             74 ;; 
                             75 .mdelete sll__h
                             76 .macro sll__h
                             77    .db #0xCB, #0x34  ;; Opcode for sll h
                             78 .endm
                             79 
                             80 ;; Macro: sll__l
                             81 ;;    Opcode for "SLL l" instruction
                             82 ;; 
                             83 .mdelete sll__l
                             84 .macro sll__l
                             85    .db #0xCB, #0x35  ;; Opcode for sll l
                             86 .endm
                             87 
                             88 ;; Macro: sll___hl_
                             89 ;;    Opcode for "SLL (hl)" instruction
                             90 ;; 
                             91 .mdelete sll___hl_
                             92 .macro sll___hl_
                             93    .db #0xCB, #0x36  ;; Opcode for sll (hl)
                             94 .endm
                             95 
                             96 ;; Macro: sll__a
                             97 ;;    Opcode for "SLL a" instruction
                             98 ;; 
                             99 .mdelete sll__a
                            100 .macro sll__a
                            101    .db #0xCB, #0x37  ;; Opcode for sll a
                            102 .endm
                            103 
                            104 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            105 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            106 ;; IXL Related Macros
                            107 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            108 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            109 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



                            110 ;; Macro: ld__ixl    Value
                            111 ;;    Opcode for "LD ixl, Value" instruction
                            112 ;;  
                            113 ;; Parameters:
                            114 ;;    Value - An inmediate 8-bits value that will be loaded into ixl
                            115 ;; 
                            116 .mdelete ld__ixl
                            117 .macro ld__ixl    Value 
                            118    .db #0xDD, #0x2E, Value  ;; Opcode for ld ixl, Value
                            119 .endm
                            120 
                            121 ;; Macro: ld__ixl_a
                            122 ;;    Opcode for "LD ixl, a" instruction
                            123 ;; 
                            124 .mdelete ld__ixl_a
                            125 .macro ld__ixl_a
                            126    .dw #0x6FDD  ;; Opcode for ld ixl, a
                            127 .endm
                            128 
                            129 ;; Macro: ld__ixl_b
                            130 ;;    Opcode for "LD ixl, B" instruction
                            131 ;; 
                            132 .mdelete ld__ixl_b
                            133 .macro ld__ixl_b
                            134    .dw #0x68DD  ;; Opcode for ld ixl, b
                            135 .endm
                            136 
                            137 ;; Macro: ld__ixl_c
                            138 ;;    Opcode for "LD ixl, C" instruction
                            139 ;; 
                            140 .mdelete ld__ixl_c
                            141 .macro ld__ixl_c
                            142    .dw #0x69DD  ;; Opcode for ld ixl, c
                            143 .endm
                            144 
                            145 ;; Macro: ld__ixl_d
                            146 ;;    Opcode for "LD ixl, D" instruction
                            147 ;; 
                            148 .mdelete ld__ixl_d
                            149 .macro ld__ixl_d
                            150    .dw #0x6ADD  ;; Opcode for ld ixl, d
                            151 .endm
                            152 
                            153 ;; Macro: ld__ixl_e
                            154 ;;    Opcode for "LD ixl, E" instruction
                            155 ;; 
                            156 .mdelete ld__ixl_e
                            157 .macro ld__ixl_e
                            158    .dw #0x6BDD  ;; Opcode for ld ixl, e
                            159 .endm
                            160 
                            161 ;; Macro: ld__ixl_ixh
                            162 ;;    Opcode for "LD ixl, IXH" instruction
                            163 ;; 
                            164 .mdelete  ld__ixl_ixh
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                            165 .macro ld__ixl_ixh
                            166    .dw #0x6CDD  ;; Opcode for ld ixl, ixh
                            167 .endm
                            168 
                            169 ;; Macro: ld__a_ixl
                            170 ;;    Opcode for "LD A, ixl" instruction
                            171 ;; 
                            172 .mdelete ld__a_ixl
                            173 .macro ld__a_ixl
                            174    .dw #0x7DDD  ;; Opcode for ld a, ixl
                            175 .endm
                            176 
                            177 ;; Macro: ld__b_ixl
                            178 ;;    Opcode for "LD B, ixl" instruction
                            179 ;; 
                            180 .mdelete ld__b_ixl
                            181 .macro ld__b_ixl
                            182    .dw #0x45DD  ;; Opcode for ld b, ixl
                            183 .endm
                            184 
                            185 ;; Macro: ld__c_ixl
                            186 ;;    Opcode for "LD c, ixl" instruction
                            187 ;; 
                            188 .mdelete ld__c_ixl
                            189 .macro ld__c_ixl
                            190    .dw #0x4DDD  ;; Opcode for ld c, ixl
                            191 .endm
                            192 
                            193 ;; Macro: ld__d_ixl
                            194 ;;    Opcode for "LD D, ixl" instruction
                            195 ;; 
                            196 .mdelete ld__d_ixl
                            197 .macro ld__d_ixl
                            198    .dw #0x55DD  ;; Opcode for ld d, ixl
                            199 .endm
                            200 
                            201 ;; Macro: ld__e_ixl
                            202 ;;    Opcode for "LD e, ixl" instruction
                            203 ;; 
                            204 .mdelete ld__e_ixl
                            205 .macro ld__e_ixl
                            206    .dw #0x5DDD  ;; Opcode for ld e, ixl
                            207 .endm
                            208 
                            209 ;; Macro: add__ixl
                            210 ;;    Opcode for "Add ixl" instruction
                            211 ;; 
                            212 .mdelete add__ixl
                            213 .macro add__ixl
                            214    .dw #0x85DD  ;; Opcode for add ixl
                            215 .endm
                            216 
                            217 ;; Macro: sub__ixl
                            218 ;;    Opcode for "SUB ixl" instruction
                            219 ;; 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



                            220 .mdelete sub__ixl
                            221 .macro sub__ixl
                            222    .dw #0x95DD  ;; Opcode for sub ixl
                            223 .endm
                            224 
                            225 ;; Macro: adc__ixl
                            226 ;;    Opcode for "ADC ixl" instruction
                            227 ;; 
                            228 .mdelete adc__ixl
                            229 .macro adc__ixl
                            230    .dw #0x8DDD  ;; Opcode for adc ixl
                            231 .endm
                            232 
                            233 ;; Macro: sbc__ixl
                            234 ;;    Opcode for "SBC ixl" instruction
                            235 ;; 
                            236 .mdelete sbc__ixl
                            237 .macro sbc__ixl
                            238    .dw #0x9DDD  ;; Opcode for sbc ixl
                            239 .endm
                            240 
                            241 ;; Macro: and__ixl
                            242 ;;    Opcode for "AND ixl" instruction
                            243 ;; 
                            244 .mdelete and__ixl
                            245 .macro and__ixl
                            246    .dw #0xA5DD  ;; Opcode for and ixl
                            247 .endm
                            248 
                            249 ;; Macro: or__ixl
                            250 ;;    Opcode for "OR ixl" instruction
                            251 ;; 
                            252 .mdelete or__ixl
                            253 .macro or__ixl
                            254    .dw #0xB5DD  ;; Opcode for or ixl
                            255 .endm
                            256 
                            257 ;; Macro: xor__ixl
                            258 ;;    Opcode for "XOR ixl" instruction
                            259 ;; 
                            260 .mdelete xor__ixl
                            261 .macro xor__ixl
                            262    .dw #0xADDD  ;; Opcode for xor ixl
                            263 .endm
                            264 
                            265 ;; Macro: cp__ixl
                            266 ;;    Opcode for "CP ixl" instruction
                            267 ;; 
                            268 .mdelete cp__ixl
                            269 .macro cp__ixl
                            270    .dw #0xBDDD  ;; Opcode for cp ixl
                            271 .endm
                            272 
                            273 ;; Macro: dec__ixl
                            274 ;;    Opcode for "DEC ixl" instruction
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



                            275 ;; 
                            276 .mdelete dec__ixl
                            277 .macro dec__ixl
                            278    .dw #0x2DDD  ;; Opcode for dec ixl
                            279 .endm
                            280 
                            281 ;; Macro: inc__ixl
                            282 ;;    Opcode for "INC ixl" instruction
                            283 ;; 
                            284 .mdelete inc__ixl
                            285 .macro inc__ixl
                            286    .dw #0x2CDD  ;; Opcode for inc ixl
                            287 .endm
                            288 
                            289 
                            290 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            291 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            292 ;; IXH Related Macros
                            293 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            294 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            295 
                            296 ;; Macro: ld__ixh    Value
                            297 ;;    Opcode for "LD IXH, Value" instruction
                            298 ;;  
                            299 ;; Parameters:
                            300 ;;    Value - An inmediate 8-bits value that will be loaded into IXH
                            301 ;; 
                            302 .mdelete  ld__ixh
                            303 .macro ld__ixh    Value 
                            304    .db #0xDD, #0x26, Value  ;; Opcode for ld ixh, Value
                            305 .endm
                            306 
                            307 ;; Macro: ld__ixh_a
                            308 ;;    Opcode for "LD IXH, a" instruction
                            309 ;; 
                            310 .mdelete ld__ixh_a
                            311 .macro ld__ixh_a
                            312    .dw #0x67DD  ;; Opcode for ld ixh, a
                            313 .endm
                            314 
                            315 ;; Macro: ld__ixh_b
                            316 ;;    Opcode for "LD IXH, B" instruction
                            317 ;; 
                            318 .mdelete ld__ixh_b
                            319 .macro ld__ixh_b
                            320    .dw #0x60DD  ;; Opcode for ld ixh, b
                            321 .endm
                            322 
                            323 ;; Macro: ld__ixh_c
                            324 ;;    Opcode for "LD IXH, C" instruction
                            325 ;; 
                            326 .mdelete ld__ixh_c
                            327 .macro ld__ixh_c
                            328    .dw #0x61DD  ;; Opcode for ld ixh, c
                            329 .endm
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



                            330 
                            331 ;; Macro: ld__ixh_d
                            332 ;;    Opcode for "LD IXH, D" instruction
                            333 ;; 
                            334 .mdelete ld__ixh_d
                            335 .macro ld__ixh_d
                            336    .dw #0x62DD  ;; Opcode for ld ixh, d
                            337 .endm
                            338 
                            339 ;; Macro: ld__ixh_e
                            340 ;;    Opcode for "LD IXH, E" instruction
                            341 ;; 
                            342 .mdelete ld__ixh_e
                            343 .macro ld__ixh_e
                            344    .dw #0x63DD  ;; Opcode for ld ixh, e
                            345 .endm
                            346 
                            347 ;; Macro: ld__ixh_ixl
                            348 ;;    Opcode for "LD IXH, IXL" instruction
                            349 ;; 
                            350 .mdelete ld__ixh_ixl
                            351 .macro ld__ixh_ixl
                            352    .dw #0x65DD  ;; Opcode for ld ixh, ixl
                            353 .endm
                            354 
                            355 ;; Macro: ld__a_ixh
                            356 ;;    Opcode for "LD A, IXH" instruction
                            357 ;; 
                            358 .mdelete ld__a_ixh
                            359 .macro ld__a_ixh
                            360    .dw #0x7CDD  ;; Opcode for ld a, ixh
                            361 .endm
                            362 
                            363 ;; Macro: ld__b_ixh
                            364 ;;    Opcode for "LD B, IXH" instruction
                            365 ;; 
                            366 .mdelete ld__b_ixh
                            367 .macro ld__b_ixh
                            368    .dw #0x44DD  ;; Opcode for ld b, ixh
                            369 .endm
                            370 
                            371 ;; Macro: ld__c_ixh
                            372 ;;    Opcode for "LD c, IXH" instruction
                            373 ;; 
                            374 .mdelete ld__c_ixh
                            375 .macro ld__c_ixh
                            376    .dw #0x4CDD  ;; Opcode for ld c, ixh
                            377 .endm
                            378 
                            379 ;; Macro: ld__d_ixh
                            380 ;;    Opcode for "LD D, IXH" instruction
                            381 ;; 
                            382 .mdelete ld__d_ixh
                            383 .macro ld__d_ixh
                            384    .dw #0x54DD  ;; Opcode for ld d, ixh
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



                            385 .endm
                            386 
                            387 ;; Macro: ld__e_ixh
                            388 ;;    Opcode for "LD e, IXH" instruction
                            389 ;; 
                            390 .mdelete ld__e_ixh
                            391 .macro ld__e_ixh
                            392    .dw #0x5CDD  ;; Opcode for ld e, ixh
                            393 .endm
                            394 
                            395 ;; Macro: add__ixh
                            396 ;;    Opcode for "ADD IXH" instruction
                            397 ;; 
                            398 .mdelete add__ixh
                            399 .macro add__ixh
                            400    .dw #0x84DD  ;; Opcode for add ixh
                            401 .endm
                            402 
                            403 ;; Macro: sub__ixh
                            404 ;;    Opcode for "SUB IXH" instruction
                            405 ;; 
                            406 .mdelete sub__ixh
                            407 .macro sub__ixh
                            408    .dw #0x94DD  ;; Opcode for sub ixh
                            409 .endm
                            410 
                            411 ;; Macro: adc__ixh
                            412 ;;    Opcode for "ADC IXH" instruction
                            413 ;; 
                            414 .mdelete adc__ixh
                            415 .macro adc__ixh
                            416    .dw #0x8CDD  ;; Opcode for adc ixh
                            417 .endm
                            418 
                            419 ;; Macro: sbc__ixh
                            420 ;;    Opcode for "SBC IXH" instruction
                            421 ;; 
                            422 .mdelete sbc__ixh
                            423 .macro sbc__ixh
                            424    .dw #0x9CDD  ;; Opcode for sbc ixh
                            425 .endm
                            426 
                            427 ;; Macro: and__ixh
                            428 ;;    Opcode for "AND IXH" instruction
                            429 ;; 
                            430 .mdelete and__ixh
                            431 .macro and__ixh
                            432    .dw #0xA4DD  ;; Opcode for and ixh
                            433 .endm
                            434 
                            435 ;; Macro: or__ixh
                            436 ;;    Opcode for "OR IXH" instruction
                            437 ;; 
                            438 .mdelete or__ixh
                            439 .macro or__ixh
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



                            440    .dw #0xB4DD  ;; Opcode for or ixh
                            441 .endm
                            442 
                            443 ;; Macro: xor__ixh
                            444 ;;    Opcode for "XOR IXH" instruction
                            445 ;; 
                            446 .mdelete xor__ixh
                            447 .macro xor__ixh
                            448    .dw #0xACDD  ;; Opcode for xor ixh
                            449 .endm
                            450 
                            451 ;; Macro: cp__ixh
                            452 ;;    Opcode for "CP IXH" instruction
                            453 ;; 
                            454 .mdelete cp__ixh
                            455 .macro cp__ixh
                            456    .dw #0xBCDD  ;; Opcode for cp ixh
                            457 .endm
                            458 
                            459 ;; Macro: dec__ixh
                            460 ;;    Opcode for "DEC IXH" instruction
                            461 ;; 
                            462 .mdelete dec__ixh
                            463 .macro dec__ixh
                            464    .dw #0x25DD  ;; Opcode for dec ixh
                            465 .endm
                            466 
                            467 ;; Macro: inc__ixh
                            468 ;;    Opcode for "INC IXH" instruction
                            469 ;; 
                            470 .mdelete inc__ixh
                            471 .macro inc__ixh
                            472    .dw #0x24DD  ;; Opcode for inc ixh
                            473 .endm
                            474 
                            475 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            476 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            477 ;; IYL Related Macros
                            478 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            479 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            480 
                            481 ;; Macro: ld__iyl    Value
                            482 ;;    Opcode for "LD iyl, Value" instruction
                            483 ;;  
                            484 ;; Parameters:
                            485 ;;    Value - An inmediate 8-bits value that will be loaded into iyl
                            486 ;; 
                            487 .mdelete  ld__iyl
                            488 .macro ld__iyl    Value 
                            489    .db #0xFD, #0x2E, Value  ;; Opcode for ld iyl, Value
                            490 .endm
                            491 
                            492 ;; Macro: ld__iyl_a
                            493 ;;    Opcode for "LD iyl, a" instruction
                            494 ;; 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



                            495 .mdelete ld__iyl_a
                            496 .macro ld__iyl_a
                            497    .dw #0x6FFD  ;; Opcode for ld iyl, a
                            498 .endm
                            499 
                            500 ;; Macro: ld__iyl_b
                            501 ;;    Opcode for "LD iyl, B" instruction
                            502 ;; 
                            503 .mdelete ld__iyl_b
                            504 .macro ld__iyl_b
                            505    .dw #0x68FD  ;; Opcode for ld iyl, b
                            506 .endm
                            507 
                            508 ;; Macro: ld__iyl_c
                            509 ;;    Opcode for "LD iyl, C" instruction
                            510 ;; 
                            511 .mdelete ld__iyl_c
                            512 .macro ld__iyl_c
                            513    .dw #0x69FD  ;; Opcode for ld iyl, c
                            514 .endm
                            515 
                            516 ;; Macro: ld__iyl_d
                            517 ;;    Opcode for "LD iyl, D" instruction
                            518 ;; 
                            519 .mdelete ld__iyl_d
                            520 .macro ld__iyl_d
                            521    .dw #0x6AFD  ;; Opcode for ld iyl, d
                            522 .endm
                            523 
                            524 ;; Macro: ld__iyl_e
                            525 ;;    Opcode for "LD iyl, E" instruction
                            526 ;; 
                            527 .mdelete ld__iyl_e
                            528 .macro ld__iyl_e
                            529    .dw #0x6BFD  ;; Opcode for ld iyl, e
                            530 .endm
                            531 
                            532 ;; Macro: ld__iyl_iyh
                            533 ;;    Opcode for "LD iyl, IXL" instruction
                            534 ;; 
                            535 .mdelete  ld__iyl_iyh
                            536 .macro ld__iyl_iyh
                            537    .dw #0x6CFD  ;; Opcode for ld iyl, ixl
                            538 .endm
                            539 
                            540 ;; Macro: ld__a_iyl
                            541 ;;    Opcode for "LD A, iyl" instruction
                            542 ;; 
                            543 .mdelete ld__a_iyl
                            544 .macro ld__a_iyl
                            545    .dw #0x7DFD  ;; Opcode for ld a, iyl
                            546 .endm
                            547 
                            548 ;; Macro: ld__b_iyl
                            549 ;;    Opcode for "LD B, iyl" instruction
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



                            550 ;; 
                            551 .mdelete ld__b_iyl
                            552 .macro ld__b_iyl
                            553    .dw #0x45FD  ;; Opcode for ld b, iyl
                            554 .endm
                            555 
                            556 ;; Macro: ld__c_iyl
                            557 ;;    Opcode for "LD c, iyl" instruction
                            558 ;; 
                            559 .mdelete ld__c_iyl
                            560 .macro ld__c_iyl
                            561    .dw #0x4DFD  ;; Opcode for ld c, iyl
                            562 .endm
                            563 
                            564 ;; Macro: ld__d_iyl
                            565 ;;    Opcode for "LD D, iyl" instruction
                            566 ;; 
                            567 .mdelete ld__d_iyl
                            568 .macro ld__d_iyl
                            569    .dw #0x55FD  ;; Opcode for ld d, iyl
                            570 .endm
                            571 
                            572 ;; Macro: ld__e_iyl
                            573 ;;    Opcode for "LD e, iyl" instruction
                            574 ;; 
                            575 .mdelete ld__e_iyl
                            576 .macro ld__e_iyl
                            577    .dw #0x5DFD  ;; Opcode for ld e, iyl
                            578 .endm
                            579 
                            580 ;; Macro: add__iyl
                            581 ;;    Opcode for "Add iyl" instruction
                            582 ;; 
                            583 .mdelete add__iyl
                            584 .macro add__iyl
                            585    .dw #0x85FD  ;; Opcode for add iyl
                            586 .endm
                            587 
                            588 ;; Macro: sub__iyl
                            589 ;;    Opcode for "SUB iyl" instruction
                            590 ;; 
                            591 .mdelete sub__iyl
                            592 .macro sub__iyl
                            593    .dw #0x95FD  ;; Opcode for sub iyl
                            594 .endm
                            595 
                            596 ;; Macro: adc__iyl
                            597 ;;    Opcode for "ADC iyl" instruction
                            598 ;; 
                            599 .mdelete adc__iyl
                            600 .macro adc__iyl
                            601    .dw #0x8DFD  ;; Opcode for adc iyl
                            602 .endm
                            603 
                            604 ;; Macro: sbc__iyl
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



                            605 ;;    Opcode for "SBC iyl" instruction
                            606 ;; 
                            607 .mdelete sbc__iyl
                            608 .macro sbc__iyl
                            609    .dw #0x9DFD  ;; Opcode for sbc iyl
                            610 .endm
                            611 
                            612 ;; Macro: and__iyl
                            613 ;;    Opcode for "AND iyl" instruction
                            614 ;; 
                            615 .mdelete and__iyl
                            616 .macro and__iyl
                            617    .dw #0xA5FD  ;; Opcode for and iyl
                            618 .endm
                            619 
                            620 ;; Macro: or__iyl
                            621 ;;    Opcode for "OR iyl" instruction
                            622 ;; 
                            623 .mdelete or__iyl
                            624 .macro or__iyl
                            625    .dw #0xB5FD  ;; Opcode for or iyl
                            626 .endm
                            627 
                            628 ;; Macro: xor__iyl
                            629 ;;    Opcode for "XOR iyl" instruction
                            630 ;; 
                            631 .mdelete xor__iyl
                            632 .macro xor__iyl
                            633    .dw #0xADFD  ;; Opcode for xor iyl
                            634 .endm
                            635 
                            636 ;; Macro: cp__iyl
                            637 ;;    Opcode for "CP iyl" instruction
                            638 ;; 
                            639 .mdelete cp__iyl
                            640 .macro cp__iyl
                            641    .dw #0xBDFD  ;; Opcode for cp iyl
                            642 .endm
                            643 
                            644 ;; Macro: dec__iyl
                            645 ;;    Opcode for "DEC iyl" instruction
                            646 ;; 
                            647 .mdelete dec__iyl
                            648 .macro dec__iyl
                            649    .dw #0x2DFD  ;; Opcode for dec iyl
                            650 .endm
                            651 
                            652 ;; Macro: inc__iyl
                            653 ;;    Opcode for "INC iyl" instruction
                            654 ;; 
                            655 .mdelete inc__iyl
                            656 .macro inc__iyl
                            657    .dw #0x2CFD  ;; Opcode for inc iyl
                            658 .endm
                            659 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



                            660 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            661 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            662 ;; IYH Related Macros
                            663 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            664 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,
                            665 
                            666 ;; Macro: ld__iyh    Value
                            667 ;;    Opcode for "LD iyh, Value" instruction
                            668 ;;  
                            669 ;; Parameters:
                            670 ;;    Value - An inmediate 8-bits value that will be loaded into iyh
                            671 ;; 
                            672 .mdelete  ld__iyh
                            673 .macro ld__iyh    Value 
                            674    .db #0xFD, #0x26, Value  ;; Opcode for ld iyh, Value
                            675 .endm
                            676 
                            677 ;; Macro: ld__iyh_a
                            678 ;;    Opcode for "LD iyh, a" instruction
                            679 ;; 
                            680 .mdelete ld__iyh_a
                            681 .macro ld__iyh_a
                            682    .dw #0x67FD  ;; Opcode for ld iyh, a
                            683 .endm
                            684 
                            685 ;; Macro: ld__iyh_b
                            686 ;;    Opcode for "LD iyh, B" instruction
                            687 ;; 
                            688 .mdelete ld__iyh_b
                            689 .macro ld__iyh_b
                            690    .dw #0x60FD  ;; Opcode for ld iyh, b
                            691 .endm
                            692 
                            693 ;; Macro: ld__iyh_c
                            694 ;;    Opcode for "LD iyh, C" instruction
                            695 ;; 
                            696 .mdelete ld__iyh_c
                            697 .macro ld__iyh_c
                            698    .dw #0x61FD  ;; Opcode for ld iyh, c
                            699 .endm
                            700 
                            701 ;; Macro: ld__iyh_d
                            702 ;;    Opcode for "LD iyh, D" instruction
                            703 ;; 
                            704 .mdelete ld__iyh_d
                            705 .macro ld__iyh_d
                            706    .dw #0x62FD  ;; Opcode for ld iyh, d
                            707 .endm
                            708 
                            709 ;; Macro: ld__iyh_e
                            710 ;;    Opcode for "LD iyh, E" instruction
                            711 ;; 
                            712 .mdelete ld__iyh_e
                            713 .macro ld__iyh_e
                            714    .dw #0x63FD  ;; Opcode for ld iyh, e
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



                            715 .endm
                            716 
                            717 ;; Macro: ld__iyh_iyl
                            718 ;;    Opcode for "LD iyh, IyL" instruction
                            719 ;; 
                            720 .mdelete  ld__iyh_iyl
                            721 .macro ld__iyh_iyl
                            722    .dw #0x65FD  ;; Opcode for ld iyh, iyl
                            723 .endm
                            724 
                            725 ;; Macro: ld__a_iyh
                            726 ;;    Opcode for "LD A, iyh" instruction
                            727 ;; 
                            728 .mdelete ld__a_iyh
                            729 .macro ld__a_iyh
                            730    .dw #0x7CFD  ;; Opcode for ld a, iyh
                            731 .endm
                            732 
                            733 ;; Macro: ld__b_iyh
                            734 ;;    Opcode for "LD B, iyh" instruction
                            735 ;; 
                            736 .mdelete ld__b_iyh
                            737 .macro ld__b_iyh
                            738    .dw #0x44FD  ;; Opcode for ld b, iyh
                            739 .endm
                            740 
                            741 ;; Macro: ld__c_iyh
                            742 ;;    Opcode for "LD c, iyh" instruction
                            743 ;; 
                            744 .mdelete ld__c_iyh
                            745 .macro ld__c_iyh
                            746    .dw #0x4CFD  ;; Opcode for ld c, iyh
                            747 .endm
                            748 
                            749 ;; Macro: ld__d_iyh
                            750 ;;    Opcode for "LD D, iyh" instruction
                            751 ;; 
                            752 .mdelete ld__d_iyh
                            753 .macro ld__d_iyh
                            754    .dw #0x54FD  ;; Opcode for ld d, iyh
                            755 .endm
                            756 
                            757 ;; Macro: ld__e_iyh
                            758 ;;    Opcode for "LD e, iyh" instruction
                            759 ;; 
                            760 .mdelete ld__e_iyh
                            761 .macro ld__e_iyh
                            762    .dw #0x5CFD  ;; Opcode for ld e, iyh
                            763 .endm
                            764 
                            765 ;; Macro: add__iyh
                            766 ;;    Opcode for "Add iyh" instruction
                            767 ;; 
                            768 .mdelete add__iyh
                            769 .macro add__iyh
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



                            770    .dw #0x84FD  ;; Opcode for add iyh
                            771 .endm
                            772 
                            773 ;; Macro: sub__iyh
                            774 ;;    Opcode for "SUB iyh" instruction
                            775 ;; 
                            776 .mdelete sub__iyh
                            777 .macro sub__iyh
                            778    .dw #0x94FD  ;; Opcode for sub iyh
                            779 .endm
                            780 
                            781 ;; Macro: adc__iyh
                            782 ;;    Opcode for "ADC iyh" instruction
                            783 ;; 
                            784 .mdelete adc__iyh
                            785 .macro adc__iyh
                            786    .dw #0x8CFD  ;; Opcode for adc iyh
                            787 .endm
                            788 
                            789 ;; Macro: sbc__iyh
                            790 ;;    Opcode for "SBC iyh" instruction
                            791 ;; 
                            792 .mdelete sbc__iyh
                            793 .macro sbc__iyh
                            794    .dw #0x9CFD  ;; Opcode for sbc iyh
                            795 .endm
                            796 
                            797 ;; Macro: and__iyh
                            798 ;;    Opcode for "AND iyh" instruction
                            799 ;; 
                            800 .mdelete and__iyh
                            801 .macro and__iyh
                            802    .dw #0xA4FD  ;; Opcode for and iyh
                            803 .endm
                            804 
                            805 ;; Macro: or__iyh
                            806 ;;    Opcode for "OR iyh" instruction
                            807 ;; 
                            808 .mdelete or__iyh
                            809 .macro or__iyh
                            810    .dw #0xB4FD  ;; Opcode for or iyh
                            811 .endm
                            812 
                            813 ;; Macro: xor__iyh
                            814 ;;    Opcode for "XOR iyh" instruction
                            815 ;; 
                            816 .mdelete xor__iyh
                            817 .macro xor__iyh
                            818    .dw #0xACFD  ;; Opcode for xor iyh
                            819 .endm
                            820 
                            821 ;; Macro: cp__iyh
                            822 ;;    Opcode for "CP iyh" instruction
                            823 ;; 
                            824 .mdelete cp__iyh
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



                            825 .macro cp__iyh
                            826    .dw #0xBCFD  ;; Opcode for cp iyh
                            827 .endm
                            828 
                            829 ;; Macro: dec__iyh
                            830 ;;    Opcode for "DEC iyh" instruction
                            831 ;; 
                            832 .mdelete dec__iyh
                            833 .macro dec__iyh
                            834    .dw #0x25FD  ;; Opcode for dec iyh
                            835 .endm
                            836 
                            837 ;; Macro: inc__iyh
                            838 ;;    Opcode for "INC iyh" instruction
                            839 ;; 
                            840 .mdelete inc__iyh
                            841 .macro inc__iyh
                            842    .dw #0x24FD  ;; Opcode for inc iyh
                            843 .endm
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



                             24 
                             25 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             26 ;;
                             27 ;; Function: cpct_drawCharM0_inner_asm
                             28 ;;
                             29 ;;    Inner function used by <cpct_drawCharM0> and <cpct_drawStringM0> to actually
                             30 ;; draw the character. This function shall not be used directly unless you know
                             31 ;; exactly what it does.
                             32 ;;
                             33 ;; Input Parameters (3 Bytes):
                             34 ;;  (2B HL) video_memory - Video memory location where the character will be drawn
                             35 ;;  (1B A ) ascii        - Character to be drawn (ASCII code)
                             36 ;;
                             37 ;; Assembly call (Input parameters on registers):
                             38 ;;    > call cpct_drawCharM0_inner_asm
                             39 ;;
                             40 ;; Parameter Restrictions:
                             41 ;;  * *video_memory* could theoretically be any 16-bit memory location. It will work
                             42 ;; outside current screen memory boundaries, which is useful if you use any kind of
                             43 ;; double buffer. However, be careful where you use it, as it does no kind of check
                             44 ;; or clipping, and it could overwrite data if you select a wrong place to draw.
                             45 ;;  * *ascii* could be any 8-bit value, as 256 characters are available in ROM.
                             46 ;;
                             47 ;; Requirements and limitations:
                             48 ;;  * This function *assumes Lower ROM (0x0000-0x3FFF) is enabled* to read ROM character 
                             49 ;; definitions. Therefore, this code should be above 0x3FFF to work; otherwise, it would
                             50 ;; become shadowed by ROM and results would be undefined. You may, theoretically, use it
                             51 ;; without ROM enabled and using your own character set definitions in RAM (0x3800-0x3FFF)
                             52 ;;  * Screen is assumed to be standard mode 0 (160x200, 16 colours)
                             53 ;;  * When reading from ROM, *interrupts should be disabled* to prevent firmware from
                             54 ;; taking over and causing undefined behaviour. 
                             55 ;;  * To make this function *work from ROM*, put the 4 bytes of *dc_2pxtableM0* in RAM.
                             56 ;;
                             57 ;; Details:
                             58 ;;    This function reads a character from ROM and draws it at a given *video_memory* location.
                             59 ;; *video_memory* points to the upper-left corner of location where the character will be drawn. 
                             60 ;; As this function assumes screen is configured for Mode 0 (160x200, 16 colours), it means that 
                             61 ;; the character can only be drawn at even pixel columns (0, 2, 4, 8...), because each byte 
                             62 ;; contains 2 pixels in Mode 0. 
                             63 ;;
                             64 ;;    Character is drawn using 2 colours: foreground (FG) and background (BG). Both colours 
                             65 ;; *must be* configured previously by calling <cpct_setDrawCharM0>. You may call this function 
                             66 ;; once and then use the same colours for printing as long as you want. Every time you need 
                             67 ;; different colours, you need to call <cpct_setDrawCharM0> again. Default colours are FG=1, BG=0
                             68 ;; and will be used if <cpct_setDrawCharM0> has never been called previously.
                             69 ;;
                             70 ;;    This function is used by <cpct_drawCharM0> and <cpct_drawStringM0> as inner drawing loop.
                             71 ;;
                             72 ;; Destroyed Register values: 
                             73 ;;    AF, BC, DE, HL, IX
                             74 ;;
                             75 ;; Required memory:
                             76 ;;    100 bytes
                             77 ;;
                             78 ;; Time Measures:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



                             79 ;; (start code)
                             80 ;;   Case     | microSecs | CPU Cycles 
                             81 ;; -------------------------------------
                             82 ;;   Best     |    824    |    3300
                             83 ;;   Worst    |    832    |    3332
                             84 ;; -------------------------------------
                             85 ;; (end code)
                             86 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             87 
   2B9F                      88 _myDrawCharInner::
                             89    ;; Calculate the memory address where the 8 bytes defining the character appearance 
                             90    ;; ... start (IX = 0x3800 + 8*ASCII value). char0_ROM_address = 0x3800
   2B9F D6 20         [ 7]   91    sub   #32
   2BA1 07            [ 4]   92    rlca           ;; [1] | A = E = 8*ASCII. 3 RLCA leave A with this
   2BA2 07            [ 4]   93    rlca           ;; [1] |   |hgfedcba| => 3*RLCA => |edcba|hgf|         IXH         IXL
   2BA3 07            [ 4]   94    rlca           ;; [1] | Then we need to move it to IX like this => |00111hgf| |edcba000|
   2BA4 5F            [ 4]   95    ld    e, a     ;; [1] \ That will be the final memory address where the definition starts
   2BA5 E6 07         [ 7]   96    and   #0x07    ;; [2] Isolate latest 3 bits of a |00000hgf|
                             97    ;or    #0x38    ;; [2] Add the 3 ones in front, so that the address starts at 0x38xx => |00111hgf|
   0008                      98    ld__ixh_a      ;; [2] Save it to IXH = |00111hgf|
   2BA7 DD 67                 1    .dw #0x67DD  ;; Opcode for ld ixh, a
   2BA9 7B            [ 4]   99    ld    a, e     ;; [1] Restore A status after 3*RLCA => |edcba|hgf|
   2BAA E6 F8         [ 7]  100    and   #0xF8    ;; [2] Isolate first 5 bits => |edcba|000|
   000D                     101    ld__ixl_a      ;; [2] and save it to IXL = |edcba|000|
   2BAC DD 6F                 1    .dw #0x6FDD  ;; Opcode for ld ixl, a
                            102    ;; Now IX = |edcba|000||00111hgf| = 0x3800 + 8*ASCII
   2BAE 01 4C 00      [10]  103    ld    bc,   #0x4c
   2BB1 DD 09         [15]  104    add   ix,   bc
                            105 
   2BB3 01 06 2C      [10]  106    ld    bc, #dc_2pxtableM0    ;; [3] BC points to the 2 1-bit pixels to 2 4-bit pixels conversion table
                            107 
                            108    ;; Draw next line from the character to the screen
   2BB6                     109 nextline:
   2BB6 EB            [ 4]  110    ex    de, hl      ;; [1] Put Destination pointer into DE (it is in HL)
   2BB7 DD 7E 00      [19]  111    ld     a, (ix)    ;; [5] A = Next Character pixel line definition 
                            112                      ;; .... (8 bits defining 0 = background colour, 1 = foreground)
                            113    ;; Copy the 4 bytes that compose the complete pixel line
                            114    ;; repeating the code for each pair of pixels to maximize speed
                            115 .rept 4
                            116    ;; Convert next 2-bits into 1 byte with 2 pixels in screen pixel format
                            117    ;; and copy it to (DE) which is next screen location
                            118    ld    hl, #0      ;; [3] HL = 0
                            119    rlca              ;; [1] /    Put the 2 leftmost bits of A into the two 
                            120    rl    l           ;; [2] | ...rightmost bits of L. This is the combination for the
                            121    rlca              ;; [1] | ...next 2 pixels (BG-BG, BG-FG, FG-BG, FG-FG). We use it
                            122    rl    l           ;; [2] \ ...as index for the dc_2pxtableM0 which gets the actual pixel values.
                            123    add   hl, bc      ;; [3] HL = BC + L (2pxtableM0 + Index = HL Points to the converted pixel values)
                            124    ldi               ;; [5] Copy 2 pixels to the screen, incrementing DE at the same time
                            125    inc   bc          ;; [2] BC is decremented by LDI but we want it to keep pointing to the table, so we add 1 again
                            126 .endm
                              1    ;; Convert next 2-bits into 1 byte with 2 pixels in screen pixel format
                              2    ;; and copy it to (DE) which is next screen location
   2BBA 21 00 00      [10]    3    ld    hl, #0      ;; [3] HL = 0
   2BBD 07            [ 4]    4    rlca              ;; [1] /    Put the 2 leftmost bits of A into the two 
   2BBE CB 15         [ 8]    5    rl    l           ;; [2] | ...rightmost bits of L. This is the combination for the
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   2BC0 07            [ 4]    6    rlca              ;; [1] | ...next 2 pixels (BG-BG, BG-FG, FG-BG, FG-FG). We use it
   2BC1 CB 15         [ 8]    7    rl    l           ;; [2] \ ...as index for the dc_2pxtableM0 which gets the actual pixel values.
   2BC3 09            [11]    8    add   hl, bc      ;; [3] HL = BC + L (2pxtableM0 + Index = HL Points to the converted pixel values)
   2BC4 ED A0         [16]    9    ldi               ;; [5] Copy 2 pixels to the screen, incrementing DE at the same time
   2BC6 03            [ 6]   10    inc   bc          ;; [2] BC is decremented by LDI but we want it to keep pointing to the table, so we add 1 again
                              1    ;; Convert next 2-bits into 1 byte with 2 pixels in screen pixel format
                              2    ;; and copy it to (DE) which is next screen location
   2BC7 21 00 00      [10]    3    ld    hl, #0      ;; [3] HL = 0
   2BCA 07            [ 4]    4    rlca              ;; [1] /    Put the 2 leftmost bits of A into the two 
   2BCB CB 15         [ 8]    5    rl    l           ;; [2] | ...rightmost bits of L. This is the combination for the
   2BCD 07            [ 4]    6    rlca              ;; [1] | ...next 2 pixels (BG-BG, BG-FG, FG-BG, FG-FG). We use it
   2BCE CB 15         [ 8]    7    rl    l           ;; [2] \ ...as index for the dc_2pxtableM0 which gets the actual pixel values.
   2BD0 09            [11]    8    add   hl, bc      ;; [3] HL = BC + L (2pxtableM0 + Index = HL Points to the converted pixel values)
   2BD1 ED A0         [16]    9    ldi               ;; [5] Copy 2 pixels to the screen, incrementing DE at the same time
   2BD3 03            [ 6]   10    inc   bc          ;; [2] BC is decremented by LDI but we want it to keep pointing to the table, so we add 1 again
                              1    ;; Convert next 2-bits into 1 byte with 2 pixels in screen pixel format
                              2    ;; and copy it to (DE) which is next screen location
   2BD4 21 00 00      [10]    3    ld    hl, #0      ;; [3] HL = 0
   2BD7 07            [ 4]    4    rlca              ;; [1] /    Put the 2 leftmost bits of A into the two 
   2BD8 CB 15         [ 8]    5    rl    l           ;; [2] | ...rightmost bits of L. This is the combination for the
   2BDA 07            [ 4]    6    rlca              ;; [1] | ...next 2 pixels (BG-BG, BG-FG, FG-BG, FG-FG). We use it
   2BDB CB 15         [ 8]    7    rl    l           ;; [2] \ ...as index for the dc_2pxtableM0 which gets the actual pixel values.
   2BDD 09            [11]    8    add   hl, bc      ;; [3] HL = BC + L (2pxtableM0 + Index = HL Points to the converted pixel values)
   2BDE ED A0         [16]    9    ldi               ;; [5] Copy 2 pixels to the screen, incrementing DE at the same time
   2BE0 03            [ 6]   10    inc   bc          ;; [2] BC is decremented by LDI but we want it to keep pointing to the table, so we add 1 again
                              1    ;; Convert next 2-bits into 1 byte with 2 pixels in screen pixel format
                              2    ;; and copy it to (DE) which is next screen location
   2BE1 21 00 00      [10]    3    ld    hl, #0      ;; [3] HL = 0
   2BE4 07            [ 4]    4    rlca              ;; [1] /    Put the 2 leftmost bits of A into the two 
   2BE5 CB 15         [ 8]    5    rl    l           ;; [2] | ...rightmost bits of L. This is the combination for the
   2BE7 07            [ 4]    6    rlca              ;; [1] | ...next 2 pixels (BG-BG, BG-FG, FG-BG, FG-FG). We use it
   2BE8 CB 15         [ 8]    7    rl    l           ;; [2] \ ...as index for the dc_2pxtableM0 which gets the actual pixel values.
   2BEA 09            [11]    8    add   hl, bc      ;; [3] HL = BC + L (2pxtableM0 + Index = HL Points to the converted pixel values)
   2BEB ED A0         [16]    9    ldi               ;; [5] Copy 2 pixels to the screen, incrementing DE at the same time
   2BED 03            [ 6]   10    inc   bc          ;; [2] BC is decremented by LDI but we want it to keep pointing to the table, so we add 1 again
                            127 
   2BEE                     128 endpixelline:
                            129    ;; Move to next pixel-line definition of the character
   004F                     130    inc__ixl          ;; [2] Next pixel Line (characters are 8-byte-aligned in memory, 
   2BEE DD 2C                 1    .dw #0x2CDD  ;; Opcode for inc ixl
                            131                      ;; ... so we only need to increment IXL, as IXH will not change)
   0051                     132    ld__a_ixl         ;; [2] If next pixel line corresponds to a new character 
   2BF0 DD 7D                 1    .dw #0x7DDD  ;; Opcode for ld a, ixl
   2BF2 C6 1C         [ 7]  133    add   #28
                            134                      ;; .... (this is, we have finished drawing our character), ....
   2BF4 E6 07         [ 7]  135    and   #0x07       ;; [2] ... then L % 8 == 0, as it is 8-byte-aligned. 
   2BF6 C8            [11]  136    ret   z           ;; [2/4] If L % 8 == 0, we have finished drawing the character, else, proceed to next line
                            137 
                            138    ;; Prepare to copy next line 
                            139    ;;  -- Move DE pointer to the next pixel line on the video memory
                            140    ;; (We save new calculations on HL, because it will be exchanged with DE at the start of nextline: loop)
   2BF7 21 FC 07      [10]  141    ld    hl, #0x800-4      ;; [3] | Next pixel line is 0x800 bytes away in standard video modes
   2BFA 19            [11]  142    add   hl, de            ;; [3] | ..but DE has already being incremented 4 times. So add 0x800-4 to
                            143                            ;;       ..DE to make it point to the start of the next pixel line in video memory
                            144    ;; Check if new address has crossed character boundaries (every 8 pixel lines)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   2BFB 7C            [ 4]  145    ld     a, h             ;; [1] A = H (top 8 bits of video memory address)
   2BFC E6 38         [ 7]  146    and   #0x38             ;; [2] We check if we have crossed memory boundary (every 8 pixel lines)
   2BFE 20 B6         [12]  147    jr    nz, nextline      ;; [2/3]  by checking the 4 bits that identify present memory line. 
                            148                            ;; .... If 0, we have crossed boundaries
   2C00                     149 boundary_crossed:
   2C00 11 50 C0      [10]  150    ld    de, #0xC050       ;; [3] | HL = HL + 0xC050: Relocate DE pointer to the start of the next pixel line in video memory
   2C03 19            [11]  151    add   hl, de            ;; [3] \ (Remember that HL and DE will be exchanged at the start of nextline:)
   2C04 18 B0         [12]  152    jr    nextline          ;; [3] Jump to continue with next pixel line
                            153 
                            154 ;; Conversion table from 2 1-bit pixels to mode 0 2 4-bit pixels. Essentially, there are 4
                            155 ;; possible combinations with 2 pixels and 2 colours: (00, 01, 10, 11 == BG-BG, BG-FG, FG-BG, FG-FG)
                            156 ;; We reserve here 4 bytes that will be filled in by <cpct_setDrawCharM0>
                            157 ;;
   2C06 00 40 80 C0         158 dc_2pxtableM0:: .db 0x00, 0x40, 0x80, 0xC0   ;; Default colours BG=0, FG=1
