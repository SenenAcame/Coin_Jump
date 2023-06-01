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



                             25 .include "man/entity_manager.h.s"
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
                             26 .globl entityman_getEntityArray_IX
                             27 .globl entityman_getNumEntities_A
                             28 .globl entityman_getIX_A
                             29 .globl entityman_forall
                             30 .globl post_func
                             31 .globl entityman_create_mulitple
                             32 .globl entityman_destroy_entities
                             33 
                             34 ;;  Macros
                             35 .macro DefineEntity _name _x, _y, _w, _h, _vx, _vy, _sp, _a, _va, _type
                             36 _name::
                             37    .db   _x
                             38    .db   _y
                             39    .db   _w
                             40    .db   _h
                             41    .db   _vx
                             42    .db   _vy
                             43    .dw   _sp
                             44    .db   _a
                             45    .db   _va
                             46    .db   _type
                             47 .endm
                             48 
                             49 ;;  Constantes
                     000F    50 max_entities = 15
                     0000    51 e_x      = 0
                     0001    52 e_y      = 1
                     0002    53 e_w      = 2
                     0003    54 e_h      = 3
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                     0004    55 e_vx     = 4
                     0005    56 e_vy     = 5
                     0006    57 e_sp     = 6
                     0008    58 e_a      = 8
                     0009    59 e_va     = 9
                     000A    60 e_type   = 10
                     000B    61 sizeof_e = 11
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



                             26 .include "sys/colision_system.h.s"
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
                             26 ;.globl colision_init
                             27 .globl colision_update
                             28 .globl _level1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                             27 .include "sys/music_system.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



                             28 .include "assets/assets.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



                             26 .include "assets/maps/intro.h.s"
                              1 ;;
                              2 ;; File assets/maps/intro.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:13 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _intro_W = 20
                     0019    12 _intro_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _intro
                     01F4    18 _intro_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



                             27 .include "assets/maps/mapa_00.h.s"
                              1 ;;
                              2 ;; File assets/maps/mapa_00.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:13 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _level0_W = 20
                     0019    12 _level0_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _level0
                     01F4    18 _level0_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



                             28 .include "assets/maps/mapa_01.h.s"
                              1 ;;
                              2 ;; File assets/maps/mapa_01.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:13 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _level1_W = 20
                     0019    12 _level1_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _level1
                     01F4    18 _level1_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



                             29 .include "assets/maps/mapa_02.h.s"
                              1 ;;
                              2 ;; File assets/maps/mapa_02.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:12 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _level2_W = 20
                     0019    12 _level2_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _level2
                     01F4    18 _level2_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



                             30 .include "assets/maps/mapa_03.h.s"
                              1 ;;
                              2 ;; File assets/maps/mapa_03.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:12 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _level3_W = 20
                     0019    12 _level3_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _level3
                     01F4    18 _level3_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



                             31 .include "assets/maps/mapa_@MT_Studios_UA.h.s"
                              1 ;;
                              2 ;; File assets/maps/mapa_@MT_Studios_UA.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:12 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _level_MT_Studios_UA_W = 20
                     0019    12 _level_MT_Studios_UA_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _level_MT_Studios_UA
                     01F4    18 _level_MT_Studios_UA_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



                             32 .include "assets/maps/mapa0_@Ianixaa.h.s"
                              1 ;;
                              2 ;; File assets/maps/mapa0_@Ianixaa.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:11 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _level0_Ianixaa_W = 20
                     0019    12 _level0_Ianixaa_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _level0_Ianixaa
                     01F4    18 _level0_Ianixaa_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



                             33 .include "assets/maps/mapa1_@Ianixaa.h.s"
                              1 ;;
                              2 ;; File assets/maps/mapa1_@Ianixaa.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:11 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _level1_Ianixaa_W = 20
                     0019    12 _level1_Ianixaa_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _level1_Ianixaa
                     01F4    18 _level1_Ianixaa_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



                             34 .include "assets/maps/mapa_@Spicyboat_Studio.h.s"
                              1 ;;
                              2 ;; File assets/maps/mapa_@Spicyboat_Studio.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:11 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _level_Spicyboat_Studio_W = 20
                     0019    12 _level_Spicyboat_Studio_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _level_Spicyboat_Studio
                     01F4    18 _level_Spicyboat_Studio_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



                             35 .include "assets/maps/mapa_@rnd_project22.h.s"
                              1 ;;
                              2 ;; File assets/maps/mapa_@rnd_project22.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:10 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _level_rnd_project22_W = 20
                     0019    12 _level_rnd_project22_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _level_rnd_project22
                     01F4    18 _level_rnd_project22_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



                             36 .include "assets/maps/mapa_@Tomateixon.h.s"
                              1 ;;
                              2 ;; File assets/maps/mapa_@Tomateixon.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:09 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _level_Tomateixon_W = 20
                     0019    12 _level_Tomateixon_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _level_Tomateixon
                     01F4    18 _level_Tomateixon_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



                             37 .include "assets/maps/fin.h.s"
                              1 ;;
                              2 ;; File assets/maps/fin.tmx converted to csv using cpct_tmx2data [Sat Jan 28 11:50:09 2023]
                              3 ;;   * Visible Layers:  1
                              4 ;;   * Layer Width:     20
                              5 ;;   * Layer Height:    25
                              6 ;;   * Bits per tile:   8
                              7 ;;   * Layer Bytes:     500 (20 x 25 items, 8 bits per item)
                              8 ;;   * Total Bytes:     500 (500 x 1, bytes per layer times layers)
                              9 ;;
                             10 ;;#### Width and height constants ####
                     0014    11 _end_W = 20
                     0019    12 _end_H = 25
                             13 
                             14 ;;#### Converted layer tilemaps ####
                             15 ;;   Visible layers: 1
                             16 ;;
                             17 .globl _end
                     01F4    18 _end_SIZE = 500
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



                             38 
                             39 ;;  Direcciones globales
                             40 .globl _tiles_00
                             41 .globl _global_pal
                             42 .globl _sp_player_0
                             43 .globl _sp_player_1
                             44 .globl _sp_player_2
                             45 .globl _sp_player_3
                             46 .globl _sp_player_4
                             47 .globl _sp_player_5
                             48 .globl _sp_player_6
                             49 .globl _sp_spikes
                             50 .globl _sp_spikes_up
                             51 .globl _sp_spikes_rig
                             52 .globl _sp_spikes_lef
                             53 .globl _sp_coin_0
                             54 .globl _sp_coin_1
                             55 .globl _sp_coin_2
                             56 .globl _sp_coin_3
                             57 ;.globl _sp_cannon_0
                             58 ;.globl _sp_cannon_1
                             59 ;.globl _sp_cannon_2
                             60 ;.globl _sp_cannon_ball
                             61 ;.globl _sp_laser_0
                             62 ;.globl _sp_laser_1
                             63 
                             64 ;;  Constantes
                     0004    65 SP_PLAYER_0_W = 4
                     0008    66 SP_PLAYER_0_H = 8
                     0007    67 SP_SPIKES_W = 7
                     0006    68 SP_SPIKES_H = 6
                     0007    69 SP_SPIKES_UP_W = 7
                     0006    70 SP_SPIKES_UP_H = 6
                     0003    71 SP_SPIKES_RIG_W = 3
                     000E    72 SP_SPIKES_RIG_H = 14
                     0003    73 SP_SPIKES_LEF_W = 3
                     000E    74 SP_SPIKES_LEF_H = 14
                     0005    75 SP_COIN_0_W = 5
                     000A    76 SP_COIN_0_H = 10
                             77 ;SP_CANNON_0_W = 4
                             78 ;SP_CANNON_0_H = 6
                             79 ;SP_CANNON_BALL_W = 2
                             80 ;SP_CANNON_BALL_H = 4
                             81 ;SP_LASER_0_W = 4
                             82 ;SP_LASER_0_H = 6
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



                             29 .include "man/game_manager.h.s"
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
                             25 ;; Funciones
                             26 .globl gameman_init
                             27 .globl gameman_check_end
                             28 .globl gameman_restart_level
                             29 .globl gameman_get_map
                             30 .globl gameman_get_string
                             31 .globl gameman_set_entities
                             32 .globl comprueba_intro
                             33 
                             34 ;; Macros
                             35 .macro DefineLevel _name_lvl _map, _num_ents, _ents
                             36 _name_lvl::
                             37    .dw  _map
                             38    .db  _num_ents
                             39    .dw  _ents
                             40 .endm
                             41 
                             42 ;; Constantes
                     0005    43 lvl_size = 5
                     0000    44 l_map = 0
                     0002    45 l_num = 2
                     0003    46 l_ents = 3
                             47 
                     000A    48 lvl_MTStudios_bytes = 10
                     000C    49 lvl1_Ianixaa_bytes = 12
                     000E    50 lvl_Tomateixon_bytes = 14
                     0010    51 lvl_Spicyboat_Studios_bytes = 16
                     0012    52 lvl_rnd_project22_bytes = 18
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



                             30 
                             31 ;colision_init::
                             32 ;ret
                             33 
                             34 ;;  Input
                             35 ;;  IX: Posicion de la primera entidad
                             36 ;;  A:  Numero de entidades a dibujar
   280B                      37 colision_update::
   280B CD C6 2C      [17]   38    call  entityman_getIX_A
   280E 21 18 28      [10]   39    ld    hl,      #colision_character
   2811 CD 0B 2D      [17]   40    call  entityman_forall
                             41 
   2814 C9            [10]   42 ret
                             43 
   2815                      44 final_real:
   2815 F1            [10]   45    pop      af                      ;; Recojo de la pila el numero de entidades
   2816 E1            [10]   46    pop      hl
   2817 C9            [10]   47    ret
                             48 
                             49 ;;Posicion mapa=  #mapa_actual + Posicion X/4 + Posicion Y/8*20
   2818                      50 colision_character:
   2818 DD 7E 0A      [19]   51    ld    a,    e_type(ix)
   281B B7            [ 4]   52    or    a
   281C C2 25 29      [10]   53    jp    nz,   colision_entity_left
   281F DD 7E 00      [19]   54    ld    a,    e_x(ix)              ;;Posicion X
   2822 CD 02 29      [17]   55    call  calcula_pos
   2825 7E            [ 7]   56    ld    a,    (hl)
   2826 B7            [ 4]   57    or    a
   2827 C2 69 28      [10]   58    jp    nz,   colisiona
   282A DD 7E 00      [19]   59    ld    a,    e_x(ix)              ;;Posicion X
   282D C6 03         [ 7]   60    add   a,   #3
   282F CD 02 29      [17]   61    call  calcula_pos
   2832 7E            [ 7]   62    ld    a,    (hl)
   2833 B7            [ 4]   63    or    a
   2834 C2 69 28      [10]   64    jp    nz,   colisiona
   2837 DD 7E 00      [19]   65    ld    a,    e_x(ix)              ;;Posicion X
   283A CD 02 29      [17]   66    call  calcula_pos
   283D 01 EC FF      [10]   67    ld    bc,   #-20
   2840 09            [11]   68    add   hl,   bc
   2841 7E            [ 7]   69    ld    a,    (hl)
   2842 B7            [ 4]   70    or    a
   2843 C2 69 28      [10]   71    jp    nz,   colisiona
   2846 DD 7E 00      [19]   72    ld    a,    e_x(ix)              ;;Posicion X
   2849 C6 03         [ 7]   73    add   a,   #3
   284B CD 02 29      [17]   74    call  calcula_pos
   284E 01 EC FF      [10]   75    ld    bc,   #-20
   2851 09            [11]   76    add   hl,   bc
   2852 7E            [ 7]   77    ld    a,    (hl)
   2853 B7            [ 4]   78    or    a
   2854 C2 69 28      [10]   79    jp    nz,   colisiona
   2857                      80    colision_y:
   2857 DD 7E 08      [19]   81    ld    a,    e_a(ix)
   285A B7            [ 4]   82    or    a
   285B CA 79 28      [10]   83    jp    z,    suelo
   285E FE 01         [ 7]   84    cp    #1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



   2860 CA 92 28      [10]   85    jp    z,    aire
   2863 C3 C6 28      [10]   86    jp    salto
   2866                      87    final:
   2866 F1            [10]   88    pop      af                      ;; Recojo de la pila el numero de entidades
   2867 E1            [10]   89    pop      hl                      ;; Recojo en HL la direccion de la etiqueta
   2868 E9            [ 4]   90    jp       (hl)                    ;; Salto de vuelta a la etiqueta
                             91 
   2869                      92 colisiona:
   2869 DD 7E 00      [19]   93    ld    a,          e_x(ix)
   286C DD 96 04      [19]   94    sub   e_vx(ix)
   286F DD 77 00      [19]   95    ld    e_x(ix),    a
   2872 DD 36 04 00   [19]   96    ld    e_vx(ix),   #0
   2876 C3 57 28      [10]   97    jp    colision_y
                             98 
   2879                      99 suelo:
   2879 01 14 00      [10]  100    ld    bc,      #20
   287C 09            [11]  101    add   hl,      bc
   287D 7E            [ 7]  102    ld    a,       (hl)
   287E B7            [ 4]  103    or    a
   287F C2 66 28      [10]  104    jp    nz,      final
   2882 01 FF FF      [10]  105    ld    bc,      #-1
   2885 09            [11]  106    add   hl,      bc
   2886 7E            [ 7]  107    ld    a,       (hl)
   2887 B7            [ 4]  108    or    a
   2888 C2 66 28      [10]  109    jp    nz,      final
   288B DD 36 08 01   [19]  110    ld    e_a(ix),    #1
   288F C3 66 28      [10]  111    jp    final
                            112 
   2892                     113 aire:
   2892 DD 7E 00      [19]  114    ld    a,    e_x(ix)              ;;Posicion X
   2895 C6 03         [ 7]  115    add   a,   #3
   2897 CD 02 29      [17]  116    call  calcula_pos
   289A 7E            [ 7]  117    ld    a,    (hl)
   289B B7            [ 4]  118    or    a
   289C CA AD 28      [10]  119    jp    z,    comprueba_izq
   289F DD 36 08 00   [19]  120    ld    e_a(ix), #0
   28A3 DD 7E 01      [19]  121    ld    a,          e_y(ix)
   28A6 3D            [ 4]  122    dec   a
   28A7 DD 77 01      [19]  123    ld    e_y(ix),    a
                            124    
   28AA C3 92 28      [10]  125    jp    aire
                            126 
   28AD                     127 comprueba_izq:
   28AD DD 7E 00      [19]  128    ld    a,    e_x(ix)              ;;Posicion X
   28B0 CD 02 29      [17]  129    call  calcula_pos
   28B3 7E            [ 7]  130    ld    a,    (hl)
   28B4 B7            [ 4]  131    or    a
   28B5 CA 66 28      [10]  132    jp    z,    final
   28B8 DD 36 08 00   [19]  133    ld    e_a(ix), #0
   28BC DD 7E 01      [19]  134    ld    a,          e_y(ix)
   28BF 3D            [ 4]  135    dec   a
   28C0 DD 77 01      [19]  136    ld    e_y(ix),    a
                            137    
   28C3 C3 AD 28      [10]  138    jp    comprueba_izq
                            139 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 27.
Hexadecimal [16-Bits]



   28C6                     140 salto:
   28C6 DD 7E 00      [19]  141    ld    a,    e_x(ix)              ;;Posicion X
   28C9 CD 02 29      [17]  142    call  calcula_pos
   28CC 01 EC FF      [10]  143    ld    bc,   #-20
   28CF 09            [11]  144    add   hl,   bc
   28D0 7E            [ 7]  145    ld    a,    (hl)
   28D1 B7            [ 4]  146    or    a
   28D2 CA E3 28      [10]  147    jp    z,    comprueba_der
   28D5 DD 7E 01      [19]  148    ld    a,          e_y(ix)
   28D8 3C            [ 4]  149    inc   a
   28D9 DD 77 01      [19]  150    ld    e_y(ix),    a
   28DC DD 36 09 0F   [19]  151    ld    e_va(ix), #15
                            152    
   28E0 C3 C6 28      [10]  153    jp    salto
                            154 
   28E3                     155 comprueba_der:
   28E3 DD 7E 00      [19]  156    ld    a,    e_x(ix)              ;;Posicion X
   28E6 C6 03         [ 7]  157    add   #3
   28E8 CD 02 29      [17]  158    call  calcula_pos
   28EB 01 EC FF      [10]  159    ld    bc,   #-20
   28EE 09            [11]  160    add   hl,   bc
   28EF 7E            [ 7]  161    ld    a,    (hl)
   28F0 B7            [ 4]  162    or    a
   28F1 CA 66 28      [10]  163    jp    z,    final
   28F4 DD 7E 01      [19]  164    ld    a,          e_y(ix)
   28F7 3C            [ 4]  165    inc   a
   28F8 DD 77 01      [19]  166    ld    e_y(ix),    a
   28FB DD 36 09 0F   [19]  167    ld    e_va(ix), #15
                            168    
   28FF C3 E3 28      [10]  169    jp    comprueba_der
                            170 
   2902                     171 calcula_pos::
   2902 CB 2F         [ 8]  172    sra   a                          ;;Posicion X/2
   2904 CB 2F         [ 8]  173    sra   a                          ;;Posicion X/4
   2906 4F            [ 4]  174    ld    c,    a
   2907 06 00         [ 7]  175    ld    b,    #0
   2909 DD 7E 01      [19]  176    ld    a,    e_y(ix)              ;;Posicion Y
   290C C6 07         [ 7]  177    add   #7
   290E CB 3F         [ 8]  178    srl   a                          ;;Posicion Y/2
   2910 CB 3F         [ 8]  179    srl   a                          ;;Posicion Y/4
   2912 CB 3F         [ 8]  180    srl   a                          ;;Posicion Y/8
   2914 6F            [ 4]  181    ld    l,    a
   2915 60            [ 4]  182    ld    h,    b
   2916 29            [11]  183    add   hl,   hl                   ;;Posicion Y/8*2
   2917 29            [11]  184    add   hl,   hl                   ;;Posicion Y/8*4
   2918 5D            [ 4]  185    ld    e,    l
   2919 54            [ 4]  186    ld    d,    h
   291A 29            [11]  187    add   hl,   hl                   ;;Posicion Y/8*8
   291B 29            [11]  188    add   hl,   hl                   ;;Posicion Y/8*16
   291C 19            [11]  189    add   hl,   de                   ;;Posicion Y/8*20
   291D 09            [11]  190    add   hl,   bc                   ;;Posicion Y/8*20 + Posicion X/4
                            191 ;   ex    de,   hl
   291E E5            [11]  192    push  hl
   291F CD E1 30      [17]  193    call  gameman_get_map
   2922 E1            [10]  194    pop   hl
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 28.
Hexadecimal [16-Bits]



                            195 ;   ld    hl,   #_level0             ;;#mapa_actual
   2923 19            [11]  196    add   hl,   de                   ;;#mapa_actual + Posicion Y/8*20 + Posicion X/4
   2924 C9            [10]  197    ret
                            198 
   2925                     199 colision_entity_left:
   2925 DD E5         [15]  200    push  ix
   2927 CD CD 2C      [17]  201    call  entityman_getEntityArray_IX
   292A DD 7E 00      [19]  202    ld    a,    e_x(ix)                 ;;Posicion x del personaje
   292D DD 86 02      [19]  203    add   e_w(ix)                       ;;Posicion x del personaje + ancho
   2930 3D            [ 4]  204    dec   a
   2931 DD E1         [14]  205    pop   ix
   2933 DD 96 00      [19]  206    sub   e_x(ix)                       ;;Posicion x del personaje + ancho - posicion x entidad
   2936 DA 66 28      [10]  207    jp    c,    final
   2939 3C            [ 4]  208    inc   a
   293A DD 96 02      [19]  209    sub   e_w(ix)                       ;;Posicion x del personaje + ancho - (posicion x entidad + ancho entidad)
   293D DA 5B 29      [10]  210    jp    c,    colision_entity_up
   2940 C3 43 29      [10]  211    jp    colision_entity_rigth
                            212 
   2943                     213 colision_entity_rigth:
   2943 DD 7E 00      [19]  214    ld    a,    e_x(ix)                 ;;Posicion x de la entidad
   2946 DD 86 02      [19]  215    add   e_w(ix)                       ;;Posicion x de la entidad + ancho
   2949 3D            [ 4]  216    dec   a
   294A DD E5         [15]  217    push  ix 
   294C CD CD 2C      [17]  218    call  entityman_getEntityArray_IX
   294F DD 46 00      [19]  219    ld    b,    e_x(ix)                 ;;Posicion x del personaje
   2952 DD E1         [14]  220    pop   ix
   2954 90            [ 4]  221    sub   b                             ;;Posicion x de la entidad + ancho - posicion x personaje
   2955 DA 66 28      [10]  222    jp    c,    final
   2958 C3 5B 29      [10]  223    jp    colision_entity_up
                            224 
   295B                     225 colision_entity_up:
   295B DD E5         [15]  226    push  ix
   295D CD CD 2C      [17]  227    call  entityman_getEntityArray_IX
   2960 DD 7E 01      [19]  228    ld    a,    e_y(ix)                 ;;Posicion y del personaje
   2963 DD 86 03      [19]  229    add   e_h(ix)                       ;;Posicion y del personaje + alto
   2966 3D            [ 4]  230    dec   a
   2967 DD E1         [14]  231    pop   ix
   2969 DD 96 01      [19]  232    sub   e_y(ix)                       ;;Posicion y del personaje + alto - posicion y entidad
   296C DA 66 28      [10]  233    jp    c,    final
   296F 3C            [ 4]  234    inc   a
   2970 DD 96 03      [19]  235    sub   e_h(ix)                       ;;Posicion y del personaje + alto - (posicion y entidad + alto entidad)
   2973 DA 91 29      [10]  236    jp    c,    colision_entity
   2976 C3 79 29      [10]  237    jp    colision_entity_down
                            238 
   2979                     239 colision_entity_down:
   2979 DD 7E 01      [19]  240    ld    a,    e_y(ix)                 ;;Posicion y de la entidad
   297C DD 86 03      [19]  241    add   e_h(ix)                       ;;Posicion y de la entidad + alto
   297F 3D            [ 4]  242    dec   a
   2980 DD E5         [15]  243    push  ix 
   2982 CD CD 2C      [17]  244    call  entityman_getEntityArray_IX
   2985 DD 46 01      [19]  245    ld    b,    e_y(ix)                 ;;Posicion y del personaje
   2988 DD E1         [14]  246    pop   ix
   298A 90            [ 4]  247    sub   b
   298B DA 66 28      [10]  248    jp    c,    final
   298E C3 91 29      [10]  249    jp    colision_entity
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 29.
Hexadecimal [16-Bits]



                            250 
   2991                     251 colision_entity:
   2991 DD 7E 0A      [19]  252    ld    a,    e_type(ix)
   2994 FE 01         [ 7]  253    cp    #1
   2996 CA A2 29      [10]  254    jp    z,    muere
   2999 CD A4 2A      [17]  255    call  musicsys_coin
   299C CD 98 30      [17]  256    call  gameman_check_end
                            257 
   299F C3 15 28      [10]  258    jp    final_real
                            259 
   29A2                     260 muere:
   29A2 CD 99 2A      [17]  261    call  musicsys_death
   29A5 CD C4 30      [17]  262    call  gameman_restart_level
                            263 
   29A8 C3 15 28      [10]  264    jp    final_real
