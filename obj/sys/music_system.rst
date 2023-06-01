ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                              2 ;;    Coin Jump: a videogame developed for Amstrad CPC 464.                            ;;
                              3 ;;    Copyright (C) 2022  Senén Martínez Acame & Sergio Tortajada Santonja             ;;
                              4 ;;                                                                                     ;;
                              5 ;;    This program is free software: you can redistribute it and/or modify             ;;
                              6 ;;    it under the terms of the GNU General Public License as published by             ;;
                              7 ;;    the Free Software Foundation, either version 3 of the License, or                ;;
                              8 ;;    (at your option) any later version.                                              ;;
                              9 ;;                                                                                     ;;
                             10 ;;    This program is distributed in the hope that it will be useful,                  ;;
                             11 ;;    but WITHOUT ANY WARRANTY; without even the implied warranty of                   ;;
                             12 ;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                    ;;
                             13 ;;    GNU General Public License for more details.                                     ;;
                             14 ;;                                                                                     ;;
                             15 ;;    You should have received a copy of the GNU General Public License                ;;
                             16 ;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.            ;;
                             17 ;;                                                                                     ;;
                             18 ;;    Coin Jump  Copyright (C) 2022  Senén Martínez Acame & Sergio Tortajada Santonja  ;;
                             19 ;;                                                                                     ;;
                             20 ;;    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.       ;;
                             21 ;;    This is free software, and you are welcome to redistribute it                    ;;
                             22 ;;    under certain conditions; type `show c' for details.                             ;;
                             23 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             24 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                             25 .include "sys/music_system.h.s"
                              1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                              2 ;;    Coin Jump: a videogame developed for Amstrad CPC 464.                            ;;
                              3 ;;    Copyright (C) 2022  Senén Martínez Acame & Sergio Tortajada Santonja             ;;
                              4 ;;                                                                                     ;;
                              5 ;;    This program is free software: you can redistribute it and/or modify             ;;
                              6 ;;    it under the terms of the GNU General Public License as published by             ;;
                              7 ;;    the Free Software Foundation, either version 3 of the License, or                ;;
                              8 ;;    (at your option) any later version.                                              ;;
                              9 ;;                                                                                     ;;
                             10 ;;    This program is distributed in the hope that it will be useful,                  ;;
                             11 ;;    but WITHOUT ANY WARRANTY; without even the implied warranty of                   ;;
                             12 ;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                    ;;
                             13 ;;    GNU General Public License for more details.                                     ;;
                             14 ;;                                                                                     ;;
                             15 ;;    You should have received a copy of the GNU General Public License                ;;
                             16 ;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.            ;;
                             17 ;;                                                                                     ;;
                             18 ;;    Coin Jump  Copyright (C) 2022  Senén Martínez Acame & Sergio Tortajada Santonja  ;;
                             19 ;;                                                                                     ;;
                             20 ;;    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.       ;;
                             21 ;;    This is free software, and you are welcome to redistribute it                    ;;
                             22 ;;    under certain conditions; type `show c' for details.                             ;;
                             23 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             24 
                             25 ;;  Includes
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                             26 .include "assets/music/Musica.h.s"
                              1 ;;;;
                              2 ;;;; File generated by cpct_aks2c CPCtelera script
                              3 ;;;; Souce file of this conversion: assets/music/Musica.aks
                              4 ;;;; Generation time: sáb 28 ene 2023 11:49:59 CET
                              5 ;;;;
                              6 
                              7 ;;;; Song 'musica' metadata constants
                     0250     8 musica_address = 0x0250
                     0095     9 musica_size    = 149
                     02E4    10 musica_end     = 0x2e4
                             11 
                             12 ;;;; Song 'musica' declaration
                             13 .globl _musica
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



                             27 .include "assets/music/Instrument.h.s"
                              1 ;;;;
                              2 ;;;; File generated by cpct_aks2c CPCtelera script
                              3 ;;;; Souce file of this conversion: assets/music/Instrument.aks
                              4 ;;;; Generation time: sáb 28 ene 2023 11:49:57 CET
                              5 ;;;;
                              6 
                              7 ;;;; Song 'instrument' metadata constants
                     02E5     8 instrument_address = 0x02E5
                     004E     9 instrument_size    = 78
                     0332    10 instrument_end     = 0x332
                             11 
                             12 ;;;; Song 'instrument' declaration
                             13 .globl _instrument
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                             28 .include "cpctelera_functions.h.s"
                              1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                              2 ;;    Coin Jump: a videogame developed for Amstrad CPC 464.                            ;;
                              3 ;;    Copyright (C) 2022  Senén Martínez Acame & Sergio Tortajada Santonja             ;;
                              4 ;;                                                                                     ;;
                              5 ;;    This program is free software: you can redistribute it and/or modify             ;;
                              6 ;;    it under the terms of the GNU General Public License as published by             ;;
                              7 ;;    the Free Software Foundation, either version 3 of the License, or                ;;
                              8 ;;    (at your option) any later version.                                              ;;
                              9 ;;                                                                                     ;;
                             10 ;;    This program is distributed in the hope that it will be useful,                  ;;
                             11 ;;    but WITHOUT ANY WARRANTY; without even the implied warranty of                   ;;
                             12 ;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                    ;;
                             13 ;;    GNU General Public License for more details.                                     ;;
                             14 ;;                                                                                     ;;
                             15 ;;    You should have received a copy of the GNU General Public License                ;;
                             16 ;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.            ;;
                             17 ;;                                                                                     ;;
                             18 ;;    Coin Jump  Copyright (C) 2022  Senén Martínez Acame & Sergio Tortajada Santonja  ;;
                             19 ;;                                                                                     ;;
                             20 ;;    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.       ;;
                             21 ;;    This is free software, and you are welcome to redistribute it                    ;;
                             22 ;;    under certain conditions; type `show c' for details.                             ;;
                             23 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             24 
                             25 ;;  Funciones
                             26 .globl cpct_disableFirmware_asm
                             27 .globl cpct_getScreenPtr_asm
                             28 .globl cpct_drawSolidBox_asm
                             29 .globl cpct_waitVSYNC_asm
                             30 .globl cpct_scanKeyboard_asm
                             31 .globl cpct_isAnyKeyPressed_asm
                             32 .globl cpct_isKeyPressed_asm
                             33 .globl cpct_etm_setDrawTilemap4x8_ag_asm
                             34 .globl cpct_etm_drawTilemap4x8_ag_asm
                             35 .globl cpct_setVideoMode_asm
                             36 .globl cpct_setPalette_asm
                             37 .globl cpct_drawSprite_asm
                             38 .globl cpct_akp_musicInit_asm
                             39 .globl cpct_akp_musicPlay_asm
                             40 .globl cpct_akp_SFXInit_asm
                             41 .globl cpct_akp_SFXPlay_asm
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



                             29 
                             30 ;;  Funciones
                             31 .globl musicsys_init
                             32 .globl musicsys_update
                             33 .globl musicsys_jump
                             34 .globl musicsys_death
                             35 .globl musicsys_coin
                             36 
                             37 ;;  Constantes
                     0001    38 rig_channel  = 001
                     0064    39 left_channel = 100
                     0028    40 tone_jump  = 40
                     003C    41 tone_coin  = 60
                     0014    42 tone_death = 20
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



                             26 
   2A7D                      27 musicsys_init::
   2A7D 11 50 02      [10]   28     ld    de,       #_musica
   2A80 CD 9D 38      [17]   29     call  cpct_akp_musicInit_asm
   2A83 11 E5 02      [10]   30     ld    de,       #_instrument
   2A86 CD 29 39      [17]   31     call cpct_akp_SFXInit_asm
   2A89 C9            [10]   32 ret
                             33 
   2A8A                      34 musicsys_update::
   2A8A CD 93 31      [17]   35     call  cpct_akp_musicPlay_asm
   2A8D C9            [10]   36 ret
                             37 
   2A8E                      38 musicsys_jump::
   2A8E 1E 28         [ 7]   39     ld  e,  #tone_jump
   2A90 CD C2 2A      [17]   40     call    musicsys_rigPlay
                             41 
   2A93 1E 28         [ 7]   42     ld  e,  #tone_jump
   2A95 CD BC 2A      [17]   43     call    musicsys_lefPlay
   2A98 C9            [10]   44 ret
                             45 
   2A99                      46 musicsys_death::
   2A99 1E 14         [ 7]   47     ld  e,  #tone_death
   2A9B CD C2 2A      [17]   48     call    musicsys_rigPlay
                             49 
   2A9E 1E 14         [ 7]   50     ld  e,  #tone_death
   2AA0 CD BC 2A      [17]   51     call    musicsys_lefPlay
   2AA3 C9            [10]   52 ret
                             53 
   2AA4                      54 musicsys_coin::
   2AA4 1E 3C         [ 7]   55     ld  e,  #tone_coin
   2AA6 CD C2 2A      [17]   56     call    musicsys_rigPlay
                             57 
   2AA9 1E 3C         [ 7]   58     ld  e,  #tone_coin
   2AAB CD BC 2A      [17]   59     call    musicsys_lefPlay
   2AAE C9            [10]   60 ret
                             61 
   2AAF                      62 musicsys_play:
   2AAF 2E 01         [ 7]   63     ld  l,  #1
   2AB1 26 0F         [ 7]   64     ld  h,  #15
   2AB3 16 02         [ 7]   65     ld  d,  #2
   2AB5 06 00         [ 7]   66     ld  b,  #0
   2AB7 48            [ 4]   67     ld  c,  b
   2AB8 CD 4F 39      [17]   68     call    cpct_akp_SFXPlay_asm
   2ABB C9            [10]   69 ret
                             70 
   2ABC                      71 musicsys_lefPlay:
   2ABC 3E 64         [ 7]   72     ld  a,  #left_channel
   2ABE CD AF 2A      [17]   73     call    musicsys_play
   2AC1 C9            [10]   74 ret
                             75 
   2AC2                      76 musicsys_rigPlay:
   2AC2 3E 01         [ 7]   77     ld  a,  #rig_channel
   2AC4 CD AF 2A      [17]   78     call    musicsys_play
   2AC7 C9            [10]   79 ret
