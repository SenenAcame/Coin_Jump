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



                             25 .include "assets/assets.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



                             26 .include "man/entity_manager.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



                     0004    55 e_vx     = 4
                     0005    56 e_vy     = 5
                     0006    57 e_sp     = 6
                     0008    58 e_a      = 8
                     0009    59 e_va     = 9
                     000A    60 e_type   = 10
                     000B    61 sizeof_e = 11
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



                             27 
   2720                      28 player_walking::
   2720 A5 0E                29     .dw _sp_player_0
   2722 A5 0E                30     .dw _sp_player_0
   2724 A5 0E                31     .dw _sp_player_0
   2726 C5 0E                32     .dw _sp_player_1
   2728 C5 0E                33     .dw _sp_player_1
   272A C5 0E                34     .dw _sp_player_1
   272C E5 0E                35     .dw _sp_player_2
   272E E5 0E                36     .dw _sp_player_2
   2730 E5 0E                37     .dw _sp_player_2
   2732 C5 0E                38     .dw _sp_player_1
   2734 C5 0E                39     .dw _sp_player_1
   2736 C5 0E                40     .dw _sp_player_1
   2738 A5 0E                41     .dw _sp_player_0
   273A A5 0E                42     .dw _sp_player_0
   273C A5 0E                43     .dw _sp_player_0
   273E 05 0F                44     .dw _sp_player_3
   2740 05 0F                45     .dw _sp_player_3
   2742 05 0F                46     .dw _sp_player_3
   2744 25 0F                47     .dw _sp_player_4
   2746 25 0F                48     .dw _sp_player_4
   2748 25 0F                49     .dw _sp_player_4
   274A 05 0F                50     .dw _sp_player_3
   274C 05 0F                51     .dw _sp_player_3
   274E 05 0F                52     .dw _sp_player_3
   2750 00 00                53     .dw 0x0000
   2752 20 27                54     .dw player_walking
                             55 
   2754                      56 player_jumping::
   2754 A5 0E                57     .dw _sp_player_0
   2756 A5 0E                58     .dw _sp_player_0
   2758 45 0F                59     .dw _sp_player_5
   275A 45 0F                60     .dw _sp_player_5
   275C 45 0F                61     .dw _sp_player_5
   275E 45 0F                62     .dw _sp_player_5
   2760 45 0F                63     .dw _sp_player_5
   2762 45 0F                64     .dw _sp_player_5
   2764 45 0F                65     .dw _sp_player_5
   2766 45 0F                66     .dw _sp_player_5
   2768 65 0F                67     .dw _sp_player_6
   276A 65 0F                68     .dw _sp_player_6
   276C 65 0F                69     .dw _sp_player_6
   276E 65 0F                70     .dw _sp_player_6
   2770 65 0F                71     .dw _sp_player_6
   2772 65 0F                72     .dw _sp_player_6
   2774 65 0F                73     .dw _sp_player_6
   2776 65 0F                74     .dw _sp_player_6
   2778 65 0F                75     .dw _sp_player_6
   277A 65 0F                76     .dw _sp_player_6
   277C 65 0F                77     .dw _sp_player_6
   277E 65 0F                78     .dw _sp_player_6
   2780 65 0F                79     .dw _sp_player_6
   2782 65 0F                80     .dw _sp_player_6
   2784 65 0F                81     .dw _sp_player_6
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



   2786 65 0F                82     .dw _sp_player_6
   2788 00 00                83     .dw 0x0000
   278A 54 27                84     .dw player_jumping
                             85 
   278C                      86 spikes_anim::
   278C 7B 0E                87     .dw _sp_spikes
   278E 00 00                88     .dw 0x0000
   2790 8C 27                89     .dw spikes_anim
                             90 
   2792                      91 spikes_up_anim::
   2792 51 0E                92     .dw _sp_spikes_up
   2794 00 00                93     .dw 0x0000
   2796 92 27                94     .dw spikes_up_anim
                             95 
   2798                      96 spikes_rig_anim::
   2798 27 0E                97     .dw _sp_spikes_rig
   279A 00 00                98     .dw 0x0000
   279C 98 27                99     .dw spikes_rig_anim
                            100 
   279E                     101 spikes_lef_anim::
   279E FD 0D               102     .dw _sp_spikes_lef
   27A0 00 00               103     .dw 0x0000
   27A2 9E 27               104     .dw spikes_lef_anim
                            105 
   27A4                     106 coin_anim::
   27A4 35 0D               107     .dw _sp_coin_0
   27A6 35 0D               108     .dw _sp_coin_0
   27A8 67 0D               109     .dw _sp_coin_1
   27AA 67 0D               110     .dw _sp_coin_1
   27AC 99 0D               111     .dw _sp_coin_2
   27AE 99 0D               112     .dw _sp_coin_2
   27B0 CB 0D               113     .dw _sp_coin_3
   27B2 CB 0D               114     .dw _sp_coin_3
   27B4 99 0D               115     .dw _sp_coin_2
   27B6 99 0D               116     .dw _sp_coin_2
   27B8 67 0D               117     .dw _sp_coin_1
   27BA 67 0D               118     .dw _sp_coin_1
   27BC 00 00               119     .dw 0x0000
   27BE A4 27               120     .dw coin_anim
                            121 
                            122 ;cannon_anim::
                            123 ;    .dw _sp_cannon_0
                            124 ;    .dw _sp_cannon_0
                            125 ;    .dw _sp_cannon_1
                            126 ;    .dw _sp_cannon_1
                            127 ;    .dw _sp_cannon_2
                            128 ;    .dw _sp_cannon_2
                            129 ;    .dw 0x0000
                            130 ;    .dw cannon_anim
                            131 ;
                            132 ;cannon_ball_anim::
                            133 ;    .dw _sp_cannon_ball
                            134 ;    .dw 0x0000
                            135 ;    .dw cannon_ball_anim
                            136 ;
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



                            137 ;laser_anim::
                            138 ;    .dw _sp_laser_0
                            139 ;    .dw _sp_laser_0
                            140 ;    .dw _sp_laser_0
                            141 ;    .dw _sp_laser_1
                            142 ;    .dw _sp_laser_1
                            143 ;    .dw _sp_laser_1
                            144 ;    .dw 0x0000
                            145 ;    .dw laser_anim
                            146 ;
   27C0                     147 animationsys_getSprite::
   27C0 DD 6E 06      [19]  148     ld      l,      e_sp(ix)        ;;  Puntero a la animacion (byte bajo)
   27C3 DD 23         [10]  149     inc     ix                      ;;  Incrementar IX
   27C5 DD 66 06      [19]  150     ld      h,      e_sp(ix)        ;;  Puntero a la animacion (byte alto)
   27C8 DD 2B         [10]  151     dec     ix                      ;;  Decrementar IX
                            152 
   27CA 5E            [ 7]  153     ld      e,      (hl)            ;;  Sprite (byte bajo)
   27CB 23            [ 6]  154     inc     hl                      ;;  Incrementar HL
   27CC 56            [ 7]  155     ld      d,      (hl)            ;;  Sprite (byte alto)
   27CD 23            [ 6]  156     inc     hl                      ;;  Incrementar HL
   27CE C9            [10]  157 ret
                            158 
   27CF                     159 animationsys_playerJump::
   27CF 21 54 27      [10]  160     ld      hl,         #player_jumping     ;;  Animacion de saltar (HL)
   27D2 CD DD 27      [17]  161     call    animationsys_changeAnimation    ;;  Cambia la animacion del player
   27D5 C9            [10]  162 ret
                            163 
   27D6                     164 animationsys_playerWalk::
   27D6 21 20 27      [10]  165     ld      hl,         #player_walking     ;;  Animacion de caminar (HL)
   27D9 CD DD 27      [17]  166     call    animationsys_changeAnimation    ;;  Cambia la animacion del player
   27DC C9            [10]  167 ret
                            168 
   27DD                     169 animationsys_changeAnimation:
   27DD CD CD 2C      [17]  170     call    entityman_getEntityArray_IX     ;;  Obtiene array de entidades
   27E0 DD 75 06      [19]  171     ld      e_sp(ix),   l                   ;;  Byte bajo de animacion
   27E3 DD 23         [10]  172     inc     ix                              ;;  Incrementa IX
   27E5 DD 74 06      [19]  173     ld      e_sp(ix),   h                   ;;  Byte alto animacion
   27E8 DD 2B         [10]  174     dec     ix                              ;;  Decrementa IX
   27EA C9            [10]  175 ret
                            176 
                            177 ;;  Input
                            178 ;;  DE = Posicion del sprite
   27EB                     179 animationsys_setSprite::
   27EB 7A            [ 4]  180     ld      a,d                     ;;  Guardo D en A
   27EC B7            [ 4]  181     or      a                       ;;  Comparo si A==0
   27ED 28 0B         [12]  182     jr      z,      reset           ;;  Si lo es, resetea la animacion (DE==00 00)
                            183 
   27EF DD 75 06      [19]  184     ld      e_sp(ix),   l           ;;  Si no, guarda byte bajo del siguiente sprite
   27F2 DD 23         [10]  185     inc     ix                      ;;  Incremento IX
   27F4 DD 74 06      [19]  186     ld      e_sp(ix),   h           ;;  Guarda byte alto del siguiente sprite
   27F7 DD 2B         [10]  187     dec     ix                      ;;  Decremento IX
   27F9 C9            [10]  188 ret
                            189 
   27FA                     190 reset:
   27FA 46            [ 7]  191     ld      b,          (hl)        ;;  Byte bajo de puntero a animacion a B
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   27FB DD 70 06      [19]  192     ld      e_sp(ix),   b           ;;  Para guardarlo en e_sp(IX)
   27FE 23            [ 6]  193     inc     hl                      ;;  Incremento HL
   27FF DD 23         [10]  194     inc     ix                      ;;  Incremento IX
   2801 4E            [ 7]  195     ld      c,          (hl)        ;;  Byte alto de puntero a animacion a C
   2802 DD 71 06      [19]  196     ld      e_sp(ix),   c           ;;  Para guardarlo en e_sp(IX)
   2805 DD 2B         [10]  197     dec     ix                      ;;  Decremento IX
   2807 CD C0 27      [17]  198     call    animationsys_getSprite  ;;  Obtengo el sprite actual
   280A C9            [10]  199 ret
