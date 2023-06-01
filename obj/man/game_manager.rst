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



                             27 .include "man/game_manager.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



                             28 .include "sys/animation_system.h.s"
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
                             25 ;;  Animaciones
                             26 .globl player_walking
                             27 .globl player_jumping
                             28 .globl spikes_anim
                             29 .globl spikes_up_anim
                             30 .globl spikes_rig_anim
                             31 .globl spikes_lef_anim
                             32 .globl coin_anim
                             33 ;.globl cannon_anim
                             34 ;.globl cannon_ball_anim
                             35 ;.globl laser_anim
                             36 
                             37 ;;  Funciones
                             38 .globl animationsys_getSprite
                             39 .globl animationsys_playerJump
                             40 .globl animationsys_playerWalk
                             41 .globl animationsys_setSprite
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



                             29 .include "sys/render_system.h.s"
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
                             26 .globl rendersys_init
                             27 .globl rendersys_update
                             28 .globl rendersys_tilemap
                             29 .globl cpct_setDrawCharM0_asm
                             30 .globl _myDrawStringM0
                             31 
                             32 ;;  Constantes
                     0014    33 width_map   = 20
                     1914    34 size_window = 0x1914
                     0010    35 size_pal    = 16
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



                             30 .include "sys/music_system.h.s"
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



                             31 
   2D28                      32 DefineEntity player_4_184,       4, 184, SP_PLAYER_0_W,   SP_PLAYER_0_H,   0, 0, #player_walking,  0, 0, 0
   0000                       1 player_4_184::
   2D28 04                    2    .db   4
   2D29 B8                    3    .db   184
   2D2A 04                    4    .db   SP_PLAYER_0_W
   2D2B 08                    5    .db   SP_PLAYER_0_H
   2D2C 00                    6    .db   0
   2D2D 00                    7    .db   0
   2D2E 20 27                 8    .dw   #player_walking
   2D30 00                    9    .db   0
   2D31 00                   10    .db   0
   2D32 00                   11    .db   0
   2D33                      33 DefineEntity player_4_32,        4,  32, SP_PLAYER_0_W,   SP_PLAYER_0_H,   0, 0, #player_walking,  0, 0, 0
   000B                       1 player_4_32::
   2D33 04                    2    .db   4
   2D34 20                    3    .db   32
   2D35 04                    4    .db   SP_PLAYER_0_W
   2D36 08                    5    .db   SP_PLAYER_0_H
   2D37 00                    6    .db   0
   2D38 00                    7    .db   0
   2D39 20 27                 8    .dw   #player_walking
   2D3B 00                    9    .db   0
   2D3C 00                   10    .db   0
   2D3D 00                   11    .db   0
                             34 ;DefineEntity player_4_24,        4,  24, SP_PLAYER_0_W,   SP_PLAYER_0_H,   0, 0, #player_walking,  0, 0, 0
                             35 
   2D3E                      36 DefineEntity spikes_7_186,       7, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   0016                       1 spikes_7_186::
   2D3E 07                    2    .db   7
   2D3F BA                    3    .db   186
   2D40 07                    4    .db   SP_SPIKES_W
   2D41 06                    5    .db   SP_SPIKES_H
   2D42 00                    6    .db   0
   2D43 00                    7    .db   0
   2D44 8C 27                 8    .dw   #spikes_anim
   2D46 00                    9    .db   0
   2D47 00                   10    .db   0
   2D48 01                   11    .db   1
                             37 ;DefineEntity spikes_9_186,       9, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   2D49                      38 DefineEntity spikes_14_186,     14, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   0021                       1 spikes_14_186::
   2D49 0E                    2    .db   14
   2D4A BA                    3    .db   186
   2D4B 07                    4    .db   SP_SPIKES_W
   2D4C 06                    5    .db   SP_SPIKES_H
   2D4D 00                    6    .db   0
   2D4E 00                    7    .db   0
   2D4F 8C 27                 8    .dw   #spikes_anim
   2D51 00                    9    .db   0
   2D52 00                   10    .db   0
   2D53 01                   11    .db   1
   2D54                      39 DefineEntity spikes_19_186,     19, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   002C                       1 spikes_19_186::
   2D54 13                    2    .db   19
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 27.
Hexadecimal [16-Bits]



   2D55 BA                    3    .db   186
   2D56 07                    4    .db   SP_SPIKES_W
   2D57 06                    5    .db   SP_SPIKES_H
   2D58 00                    6    .db   0
   2D59 00                    7    .db   0
   2D5A 8C 27                 8    .dw   #spikes_anim
   2D5C 00                    9    .db   0
   2D5D 00                   10    .db   0
   2D5E 01                   11    .db   1
                             40 ;DefineEntity spikes_29_186,     29, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   2D5F                      41 DefineEntity spikes_31_186,     31, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   0037                       1 spikes_31_186::
   2D5F 1F                    2    .db   31
   2D60 BA                    3    .db   186
   2D61 07                    4    .db   SP_SPIKES_W
   2D62 06                    5    .db   SP_SPIKES_H
   2D63 00                    6    .db   0
   2D64 00                    7    .db   0
   2D65 8C 27                 8    .dw   #spikes_anim
   2D67 00                    9    .db   0
   2D68 00                   10    .db   0
   2D69 01                   11    .db   1
   2D6A                      42 DefineEntity spikes_39_186,     39, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   0042                       1 spikes_39_186::
   2D6A 27                    2    .db   39
   2D6B BA                    3    .db   186
   2D6C 07                    4    .db   SP_SPIKES_W
   2D6D 06                    5    .db   SP_SPIKES_H
   2D6E 00                    6    .db   0
   2D6F 00                    7    .db   0
   2D70 8C 27                 8    .dw   #spikes_anim
   2D72 00                    9    .db   0
   2D73 00                   10    .db   0
   2D74 01                   11    .db   1
                             43 ;DefineEntity spikes_47_186,     47, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   2D75                      44 DefineEntity spikes_49_186,     49, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   004D                       1 spikes_49_186::
   2D75 31                    2    .db   49
   2D76 BA                    3    .db   186
   2D77 07                    4    .db   SP_SPIKES_W
   2D78 06                    5    .db   SP_SPIKES_H
   2D79 00                    6    .db   0
   2D7A 00                    7    .db   0
   2D7B 8C 27                 8    .dw   #spikes_anim
   2D7D 00                    9    .db   0
   2D7E 00                   10    .db   0
   2D7F 01                   11    .db   1
   2D80                      45 DefineEntity spikes_50_186,     50, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   0058                       1 spikes_50_186::
   2D80 32                    2    .db   50
   2D81 BA                    3    .db   186
   2D82 07                    4    .db   SP_SPIKES_W
   2D83 06                    5    .db   SP_SPIKES_H
   2D84 00                    6    .db   0
   2D85 00                    7    .db   0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 28.
Hexadecimal [16-Bits]



   2D86 8C 27                 8    .dw   #spikes_anim
   2D88 00                    9    .db   0
   2D89 00                   10    .db   0
   2D8A 01                   11    .db   1
   2D8B                      46 DefineEntity spikes_59_186,     59, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   0063                       1 spikes_59_186::
   2D8B 3B                    2    .db   59
   2D8C BA                    3    .db   186
   2D8D 07                    4    .db   SP_SPIKES_W
   2D8E 06                    5    .db   SP_SPIKES_H
   2D8F 00                    6    .db   0
   2D90 00                    7    .db   0
   2D91 8C 27                 8    .dw   #spikes_anim
   2D93 00                    9    .db   0
   2D94 00                   10    .db   0
   2D95 01                   11    .db   1
   2D96                      47 DefineEntity spikes_56_186,     56, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   006E                       1 spikes_56_186::
   2D96 38                    2    .db   56
   2D97 BA                    3    .db   186
   2D98 07                    4    .db   SP_SPIKES_W
   2D99 06                    5    .db   SP_SPIKES_H
   2D9A 00                    6    .db   0
   2D9B 00                    7    .db   0
   2D9C 8C 27                 8    .dw   #spikes_anim
   2D9E 00                    9    .db   0
   2D9F 00                   10    .db   0
   2DA0 01                   11    .db   1
   2DA1                      48 DefineEntity spikes_69_186,     69, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   0079                       1 spikes_69_186::
   2DA1 45                    2    .db   69
   2DA2 BA                    3    .db   186
   2DA3 07                    4    .db   SP_SPIKES_W
   2DA4 06                    5    .db   SP_SPIKES_H
   2DA5 00                    6    .db   0
   2DA6 00                    7    .db   0
   2DA7 8C 27                 8    .dw   #spikes_anim
   2DA9 00                    9    .db   0
   2DAA 00                   10    .db   0
   2DAB 01                   11    .db   1
   2DAC                      49 DefineEntity spikes_32_178,     32, 178, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   0084                       1 spikes_32_178::
   2DAC 20                    2    .db   32
   2DAD B2                    3    .db   178
   2DAE 07                    4    .db   SP_SPIKES_W
   2DAF 06                    5    .db   SP_SPIKES_H
   2DB0 00                    6    .db   0
   2DB1 00                    7    .db   0
   2DB2 8C 27                 8    .dw   #spikes_anim
   2DB4 00                    9    .db   0
   2DB5 00                   10    .db   0
   2DB6 01                   11    .db   1
   2DB7                      50 DefineEntity spikes_41_178,     41, 178, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   008F                       1 spikes_41_178::
   2DB7 29                    2    .db   41
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 29.
Hexadecimal [16-Bits]



   2DB8 B2                    3    .db   178
   2DB9 07                    4    .db   SP_SPIKES_W
   2DBA 06                    5    .db   SP_SPIKES_H
   2DBB 00                    6    .db   0
   2DBC 00                    7    .db   0
   2DBD 8C 27                 8    .dw   #spikes_anim
   2DBF 00                    9    .db   0
   2DC0 00                   10    .db   0
   2DC1 01                   11    .db   1
   2DC2                      51 DefineEntity spikes_12_170,     12, 170, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   009A                       1 spikes_12_170::
   2DC2 0C                    2    .db   12
   2DC3 AA                    3    .db   170
   2DC4 07                    4    .db   SP_SPIKES_W
   2DC5 06                    5    .db   SP_SPIKES_H
   2DC6 00                    6    .db   0
   2DC7 00                    7    .db   0
   2DC8 8C 27                 8    .dw   #spikes_anim
   2DCA 00                    9    .db   0
   2DCB 00                   10    .db   0
   2DCC 01                   11    .db   1
   2DCD                      52 DefineEntity spikes_20_170,     20, 170, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   00A5                       1 spikes_20_170::
   2DCD 14                    2    .db   20
   2DCE AA                    3    .db   170
   2DCF 07                    4    .db   SP_SPIKES_W
   2DD0 06                    5    .db   SP_SPIKES_H
   2DD1 00                    6    .db   0
   2DD2 00                    7    .db   0
   2DD3 8C 27                 8    .dw   #spikes_anim
   2DD5 00                    9    .db   0
   2DD6 00                   10    .db   0
   2DD7 01                   11    .db   1
   2DD8                      53 DefineEntity spikes_28_170,     28, 170, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   00B0                       1 spikes_28_170::
   2DD8 1C                    2    .db   28
   2DD9 AA                    3    .db   170
   2DDA 07                    4    .db   SP_SPIKES_W
   2DDB 06                    5    .db   SP_SPIKES_H
   2DDC 00                    6    .db   0
   2DDD 00                    7    .db   0
   2DDE 8C 27                 8    .dw   #spikes_anim
   2DE0 00                    9    .db   0
   2DE1 00                   10    .db   0
   2DE2 01                   11    .db   1
   2DE3                      54 DefineEntity spikes_12_130,     12, 130, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   00BB                       1 spikes_12_130::
   2DE3 0C                    2    .db   12
   2DE4 82                    3    .db   130
   2DE5 07                    4    .db   SP_SPIKES_W
   2DE6 06                    5    .db   SP_SPIKES_H
   2DE7 00                    6    .db   0
   2DE8 00                    7    .db   0
   2DE9 8C 27                 8    .dw   #spikes_anim
   2DEB 00                    9    .db   0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 30.
Hexadecimal [16-Bits]



   2DEC 00                   10    .db   0
   2DED 01                   11    .db   1
   2DEE                      55 DefineEntity spikes_61_130,     61, 130, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   00C6                       1 spikes_61_130::
   2DEE 3D                    2    .db   61
   2DEF 82                    3    .db   130
   2DF0 07                    4    .db   SP_SPIKES_W
   2DF1 06                    5    .db   SP_SPIKES_H
   2DF2 00                    6    .db   0
   2DF3 00                    7    .db   0
   2DF4 8C 27                 8    .dw   #spikes_anim
   2DF6 00                    9    .db   0
   2DF7 00                   10    .db   0
   2DF8 01                   11    .db   1
   2DF9                      56 DefineEntity spikes_36_122,     36, 122, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   00D1                       1 spikes_36_122::
   2DF9 24                    2    .db   36
   2DFA 7A                    3    .db   122
   2DFB 07                    4    .db   SP_SPIKES_W
   2DFC 06                    5    .db   SP_SPIKES_H
   2DFD 00                    6    .db   0
   2DFE 00                    7    .db   0
   2DFF 8C 27                 8    .dw   #spikes_anim
   2E01 00                    9    .db   0
   2E02 00                   10    .db   0
   2E03 01                   11    .db   1
   2E04                      57 DefineEntity spikes_25_90,      25,  90, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   00DC                       1 spikes_25_90::
   2E04 19                    2    .db   25
   2E05 5A                    3    .db   90
   2E06 07                    4    .db   SP_SPIKES_W
   2E07 06                    5    .db   SP_SPIKES_H
   2E08 00                    6    .db   0
   2E09 00                    7    .db   0
   2E0A 8C 27                 8    .dw   #spikes_anim
   2E0C 00                    9    .db   0
   2E0D 00                   10    .db   0
   2E0E 01                   11    .db   1
   2E0F                      58 DefineEntity spikes_47_90,      47,  90, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   00E7                       1 spikes_47_90::
   2E0F 2F                    2    .db   47
   2E10 5A                    3    .db   90
   2E11 07                    4    .db   SP_SPIKES_W
   2E12 06                    5    .db   SP_SPIKES_H
   2E13 00                    6    .db   0
   2E14 00                    7    .db   0
   2E15 8C 27                 8    .dw   #spikes_anim
   2E17 00                    9    .db   0
   2E18 00                   10    .db   0
   2E19 01                   11    .db   1
   2E1A                      59 DefineEntity spikes_36_50,       36, 50, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   00F2                       1 spikes_36_50::
   2E1A 24                    2    .db   36
   2E1B 32                    3    .db   50
   2E1C 07                    4    .db   SP_SPIKES_W
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 31.
Hexadecimal [16-Bits]



   2E1D 06                    5    .db   SP_SPIKES_H
   2E1E 00                    6    .db   0
   2E1F 00                    7    .db   0
   2E20 8C 27                 8    .dw   #spikes_anim
   2E22 00                    9    .db   0
   2E23 00                   10    .db   0
   2E24 01                   11    .db   1
   2E25                      60 DefineEntity spikes_16_42,      16,  42, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
   00FD                       1 spikes_16_42::
   2E25 10                    2    .db   16
   2E26 2A                    3    .db   42
   2E27 07                    4    .db   SP_SPIKES_W
   2E28 06                    5    .db   SP_SPIKES_H
   2E29 00                    6    .db   0
   2E2A 00                    7    .db   0
   2E2B 8C 27                 8    .dw   #spikes_anim
   2E2D 00                    9    .db   0
   2E2E 00                   10    .db   0
   2E2F 01                   11    .db   1
                             61 
                             62 ;DefineEntity spikes_up_41_178,  41, 178, SP_SPIKES_UP_W,  SP_SPIKES_UP_H,  0, 0, #spikes_up_anim,  0, 0, 1
   2E30                      63 DefineEntity spikes_up_37_144,  37, 144, SP_SPIKES_UP_W,  SP_SPIKES_UP_H,  0, 0, #spikes_up_anim,  0, 0, 1
   0108                       1 spikes_up_37_144::
   2E30 25                    2    .db   37
   2E31 90                    3    .db   144
   2E32 07                    4    .db   SP_SPIKES_UP_W
   2E33 06                    5    .db   SP_SPIKES_UP_H
   2E34 00                    6    .db   0
   2E35 00                    7    .db   0
   2E36 92 27                 8    .dw   #spikes_up_anim
   2E38 00                    9    .db   0
   2E39 00                   10    .db   0
   2E3A 01                   11    .db   1
   2E3B                      64 DefineEntity spikes_up_37_72,   37,  72, SP_SPIKES_UP_W,  SP_SPIKES_UP_H,  0, 0, #spikes_up_anim,  0, 0, 1
   0113                       1 spikes_up_37_72::
   2E3B 25                    2    .db   37
   2E3C 48                    3    .db   72
   2E3D 07                    4    .db   SP_SPIKES_UP_W
   2E3E 06                    5    .db   SP_SPIKES_UP_H
   2E3F 00                    6    .db   0
   2E40 00                    7    .db   0
   2E41 92 27                 8    .dw   #spikes_up_anim
   2E43 00                    9    .db   0
   2E44 00                   10    .db   0
   2E45 01                   11    .db   1
                             65 
   2E46                      66 DefineEntity spikes_rig_21_140, 21, 140, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
   011E                       1 spikes_rig_21_140::
   2E46 15                    2    .db   21
   2E47 8C                    3    .db   140
   2E48 03                    4    .db   SP_SPIKES_RIG_W
   2E49 0E                    5    .db   SP_SPIKES_RIG_H
   2E4A 00                    6    .db   0
   2E4B 00                    7    .db   0
   2E4C 98 27                 8    .dw   #spikes_rig_anim
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 32.
Hexadecimal [16-Bits]



   2E4E 00                    9    .db   0
   2E4F 00                   10    .db   0
   2E50 01                   11    .db   1
   2E51                      67 DefineEntity spikes_rig_33_130, 33, 130, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
   0129                       1 spikes_rig_33_130::
   2E51 21                    2    .db   33
   2E52 82                    3    .db   130
   2E53 03                    4    .db   SP_SPIKES_RIG_W
   2E54 0E                    5    .db   SP_SPIKES_RIG_H
   2E55 00                    6    .db   0
   2E56 00                    7    .db   0
   2E57 98 27                 8    .dw   #spikes_rig_anim
   2E59 00                    9    .db   0
   2E5A 00                   10    .db   0
   2E5B 01                   11    .db   1
                             68 
   2E5C                      69 DefineEntity spikes_rig_13_113, 13, 113, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
   0134                       1 spikes_rig_13_113::
   2E5C 0D                    2    .db   13
   2E5D 71                    3    .db   113
   2E5E 03                    4    .db   SP_SPIKES_RIG_W
   2E5F 0E                    5    .db   SP_SPIKES_RIG_H
   2E60 00                    6    .db   0
   2E61 00                    7    .db   0
   2E62 98 27                 8    .dw   #spikes_rig_anim
   2E64 00                    9    .db   0
   2E65 00                   10    .db   0
   2E66 01                   11    .db   1
   2E67                      70 DefineEntity spikes_rig_21_102, 21, 102, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
   013F                       1 spikes_rig_21_102::
   2E67 15                    2    .db   21
   2E68 66                    3    .db   102
   2E69 03                    4    .db   SP_SPIKES_RIG_W
   2E6A 0E                    5    .db   SP_SPIKES_RIG_H
   2E6B 00                    6    .db   0
   2E6C 00                    7    .db   0
   2E6D 98 27                 8    .dw   #spikes_rig_anim
   2E6F 00                    9    .db   0
   2E70 00                   10    .db   0
   2E71 01                   11    .db   1
   2E72                      71 DefineEntity spikes_rig_33_58,  33,  58, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
   014A                       1 spikes_rig_33_58::
   2E72 21                    2    .db   33
   2E73 3A                    3    .db   58
   2E74 03                    4    .db   SP_SPIKES_RIG_W
   2E75 0E                    5    .db   SP_SPIKES_RIG_H
   2E76 00                    6    .db   0
   2E77 00                    7    .db   0
   2E78 98 27                 8    .dw   #spikes_rig_anim
   2E7A 00                    9    .db   0
   2E7B 00                   10    .db   0
   2E7C 01                   11    .db   1
   2E7D                      72 DefineEntity spikes_rig_21_52,  21,  52, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
   0155                       1 spikes_rig_21_52::
   2E7D 15                    2    .db   21
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 33.
Hexadecimal [16-Bits]



   2E7E 34                    3    .db   52
   2E7F 03                    4    .db   SP_SPIKES_RIG_W
   2E80 0E                    5    .db   SP_SPIKES_RIG_H
   2E81 00                    6    .db   0
   2E82 00                    7    .db   0
   2E83 98 27                 8    .dw   #spikes_rig_anim
   2E85 00                    9    .db   0
   2E86 00                   10    .db   0
   2E87 01                   11    .db   1
   2E88                      73 DefineEntity spikes_rig_13_33,  13,  33, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
   0160                       1 spikes_rig_13_33::
   2E88 0D                    2    .db   13
   2E89 21                    3    .db   33
   2E8A 03                    4    .db   SP_SPIKES_RIG_W
   2E8B 0E                    5    .db   SP_SPIKES_RIG_H
   2E8C 00                    6    .db   0
   2E8D 00                    7    .db   0
   2E8E 98 27                 8    .dw   #spikes_rig_anim
   2E90 00                    9    .db   0
   2E91 00                   10    .db   0
   2E92 01                   11    .db   1
   2E93                      74 DefineEntity spikes_rig_37_27,  37,  27, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
   016B                       1 spikes_rig_37_27::
   2E93 25                    2    .db   37
   2E94 1B                    3    .db   27
   2E95 03                    4    .db   SP_SPIKES_RIG_W
   2E96 0E                    5    .db   SP_SPIKES_RIG_H
   2E97 00                    6    .db   0
   2E98 00                    7    .db   0
   2E99 98 27                 8    .dw   #spikes_rig_anim
   2E9B 00                    9    .db   0
   2E9C 00                   10    .db   0
   2E9D 01                   11    .db   1
                             75 ;DefineEntity spikes_rig_37_13,  37,  13, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
   2E9E                      76 DefineEntity spikes_rig_21_9,   21,   9, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
   0176                       1 spikes_rig_21_9::
   2E9E 15                    2    .db   21
   2E9F 09                    3    .db   9
   2EA0 03                    4    .db   SP_SPIKES_RIG_W
   2EA1 0E                    5    .db   SP_SPIKES_RIG_H
   2EA2 00                    6    .db   0
   2EA3 00                    7    .db   0
   2EA4 98 27                 8    .dw   #spikes_rig_anim
   2EA6 00                    9    .db   0
   2EA7 00                   10    .db   0
   2EA8 01                   11    .db   1
                             77 
                             78 ;DefineEntity spikes_lef_12_154, 12, 154, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
   2EA9                      79 DefineEntity spikes_lef_12_153, 12, 153, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
   0181                       1 spikes_lef_12_153::
   2EA9 0C                    2    .db   12
   2EAA 99                    3    .db   153
   2EAB 03                    4    .db   SP_SPIKES_LEF_W
   2EAC 0E                    5    .db   SP_SPIKES_LEF_H
   2EAD 00                    6    .db   0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 34.
Hexadecimal [16-Bits]



   2EAE 00                    7    .db   0
   2EAF 9E 27                 8    .dw   #spikes_lef_anim
   2EB1 00                    9    .db   0
   2EB2 00                   10    .db   0
   2EB3 01                   11    .db   1
   2EB4                      80 DefineEntity spikes_lef_12_138, 12, 138, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
   018C                       1 spikes_lef_12_138::
   2EB4 0C                    2    .db   12
   2EB5 8A                    3    .db   138
   2EB6 03                    4    .db   SP_SPIKES_LEF_W
   2EB7 0E                    5    .db   SP_SPIKES_LEF_H
   2EB8 00                    6    .db   0
   2EB9 00                    7    .db   0
   2EBA 9E 27                 8    .dw   #spikes_lef_anim
   2EBC 00                    9    .db   0
   2EBD 00                   10    .db   0
   2EBE 01                   11    .db   1
   2EBF                      81 DefineEntity spikes_lef_44_128, 44, 128, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
   0197                       1 spikes_lef_44_128::
   2EBF 2C                    2    .db   44
   2EC0 80                    3    .db   128
   2EC1 03                    4    .db   SP_SPIKES_LEF_W
   2EC2 0E                    5    .db   SP_SPIKES_LEF_H
   2EC3 00                    6    .db   0
   2EC4 00                    7    .db   0
   2EC5 9E 27                 8    .dw   #spikes_lef_anim
   2EC7 00                    9    .db   0
   2EC8 00                   10    .db   0
   2EC9 01                   11    .db   1
   2ECA                      82 DefineEntity spikes_lef_12_90,  12,  90, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
   01A2                       1 spikes_lef_12_90::
   2ECA 0C                    2    .db   12
   2ECB 5A                    3    .db   90
   2ECC 03                    4    .db   SP_SPIKES_LEF_W
   2ECD 0E                    5    .db   SP_SPIKES_LEF_H
   2ECE 00                    6    .db   0
   2ECF 00                    7    .db   0
   2ED0 9E 27                 8    .dw   #spikes_lef_anim
   2ED2 00                    9    .db   0
   2ED3 00                   10    .db   0
   2ED4 01                   11    .db   1
   2ED5                      83 DefineEntity spikes_lef_12_73,  12,  73, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
   01AD                       1 spikes_lef_12_73::
   2ED5 0C                    2    .db   12
   2ED6 49                    3    .db   73
   2ED7 03                    4    .db   SP_SPIKES_LEF_W
   2ED8 0E                    5    .db   SP_SPIKES_LEF_H
   2ED9 00                    6    .db   0
   2EDA 00                    7    .db   0
   2EDB 9E 27                 8    .dw   #spikes_lef_anim
   2EDD 00                    9    .db   0
   2EDE 00                   10    .db   0
   2EDF 01                   11    .db   1
   2EE0                      84 DefineEntity spikes_lef_44_56,  44,  56, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
   01B8                       1 spikes_lef_44_56::
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 35.
Hexadecimal [16-Bits]



   2EE0 2C                    2    .db   44
   2EE1 38                    3    .db   56
   2EE2 03                    4    .db   SP_SPIKES_LEF_W
   2EE3 0E                    5    .db   SP_SPIKES_LEF_H
   2EE4 00                    6    .db   0
   2EE5 00                    7    .db   0
   2EE6 9E 27                 8    .dw   #spikes_lef_anim
   2EE8 00                    9    .db   0
   2EE9 00                   10    .db   0
   2EEA 01                   11    .db   1
   2EEB                      85 DefineEntity spikes_lef_12_42,  12,  42, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
   01C3                       1 spikes_lef_12_42::
   2EEB 0C                    2    .db   12
   2EEC 2A                    3    .db   42
   2EED 03                    4    .db   SP_SPIKES_LEF_W
   2EEE 0E                    5    .db   SP_SPIKES_LEF_H
   2EEF 00                    6    .db   0
   2EF0 00                    7    .db   0
   2EF1 9E 27                 8    .dw   #spikes_lef_anim
   2EF3 00                    9    .db   0
   2EF4 00                   10    .db   0
   2EF5 01                   11    .db   1
                             86 
   2EF6                      87 DefineEntity coin_70_180,       70, 180, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
   01CE                       1 coin_70_180::
   2EF6 46                    2    .db   70
   2EF7 B4                    3    .db   180
   2EF8 05                    4    .db   SP_COIN_0_W
   2EF9 0A                    5    .db   SP_COIN_0_H
   2EFA 00                    6    .db   0
   2EFB 00                    7    .db   0
   2EFC A4 27                 8    .dw   #coin_anim
   2EFE 00                    9    .db   0
   2EFF 00                   10    .db   0
   2F00 02                   11    .db   2
   2F01                      88 DefineEntity coin_70_170,       70, 170, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
   01D9                       1 coin_70_170::
   2F01 46                    2    .db   70
   2F02 AA                    3    .db   170
   2F03 05                    4    .db   SP_COIN_0_W
   2F04 0A                    5    .db   SP_COIN_0_H
   2F05 00                    6    .db   0
   2F06 00                    7    .db   0
   2F07 A4 27                 8    .dw   #coin_anim
   2F09 00                    9    .db   0
   2F0A 00                   10    .db   0
   2F0B 02                   11    .db   2
   2F0C                      89 DefineEntity coin_68_156,       68, 156, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
   01E4                       1 coin_68_156::
   2F0C 44                    2    .db   68
   2F0D 9C                    3    .db   156
   2F0E 05                    4    .db   SP_COIN_0_W
   2F0F 0A                    5    .db   SP_COIN_0_H
   2F10 00                    6    .db   0
   2F11 00                    7    .db   0
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 36.
Hexadecimal [16-Bits]



   2F12 A4 27                 8    .dw   #coin_anim
   2F14 00                    9    .db   0
   2F15 00                   10    .db   0
   2F16 02                   11    .db   2
   2F17                      90 DefineEntity coin_67_68,        67,  68, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
   01EF                       1 coin_67_68::
   2F17 43                    2    .db   67
   2F18 44                    3    .db   68
   2F19 05                    4    .db   SP_COIN_0_W
   2F1A 0A                    5    .db   SP_COIN_0_H
   2F1B 00                    6    .db   0
   2F1C 00                    7    .db   0
   2F1D A4 27                 8    .dw   #coin_anim
   2F1F 00                    9    .db   0
   2F20 00                   10    .db   0
   2F21 02                   11    .db   2
   2F22                      91 DefineEntity coin_16_60,        16,  60, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
   01FA                       1 coin_16_60::
   2F22 10                    2    .db   16
   2F23 3C                    3    .db   60
   2F24 05                    4    .db   SP_COIN_0_W
   2F25 0A                    5    .db   SP_COIN_0_H
   2F26 00                    6    .db   0
   2F27 00                    7    .db   0
   2F28 A4 27                 8    .dw   #coin_anim
   2F2A 00                    9    .db   0
   2F2B 00                   10    .db   0
   2F2C 02                   11    .db   2
   2F2D                      92 DefineEntity coin_4_51,          4,  51, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
   0205                       1 coin_4_51::
   2F2D 04                    2    .db   4
   2F2E 33                    3    .db   51
   2F2F 05                    4    .db   SP_COIN_0_W
   2F30 0A                    5    .db   SP_COIN_0_H
   2F31 00                    6    .db   0
   2F32 00                    7    .db   0
   2F33 A4 27                 8    .dw   #coin_anim
   2F35 00                    9    .db   0
   2F36 00                   10    .db   0
   2F37 02                   11    .db   2
   2F38                      93 DefineEntity coin_44_27,        44,  27, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
   0210                       1 coin_44_27::
   2F38 2C                    2    .db   44
   2F39 1B                    3    .db   27
   2F3A 05                    4    .db   SP_COIN_0_W
   2F3B 0A                    5    .db   SP_COIN_0_H
   2F3C 00                    6    .db   0
   2F3D 00                    7    .db   0
   2F3E A4 27                 8    .dw   #coin_anim
   2F40 00                    9    .db   0
   2F41 00                   10    .db   0
   2F42 02                   11    .db   2
                             94 
   2F43                      95 _ents_lvl0:
   2F43 28 2D                96     .dw player_4_184
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 37.
Hexadecimal [16-Bits]



   2F45 F6 2E                97     .dw coin_70_180
                             98 
   2F47                      99 _ents_lvl1:
   2F47 28 2D               100     .dw player_4_184;
   2F49 F6 2E               101     .dw coin_70_180
   2F4B 75 2D               102     .dw spikes_49_186
                            103 
   2F4D                     104 _ents_lvl2:
   2F4D 28 2D               105     .dw player_4_184
   2F4F F6 2E               106     .dw coin_70_180
   2F51 F9 2D               107     .dw spikes_36_122
   2F53 30 2E               108     .dw spikes_up_37_144
   2F55 51 2E               109     .dw spikes_rig_33_130
   2F57 BF 2E               110     .dw spikes_lef_44_128
                            111 
   2F59                     112 _ents_lvl3:
   2F59 28 2D               113     .dw player_4_184
   2F5B 22 2F               114     .dw coin_16_60
   2F5D F9 2D               115     .dw spikes_36_122
   2F5F 1A 2E               116     .dw spikes_36_50
   2F61 3B 2E               117     .dw spikes_up_37_72
   2F63 30 2E               118     .dw spikes_up_37_144
   2F65 51 2E               119     .dw spikes_rig_33_130
   2F67 72 2E               120     .dw spikes_rig_33_58
   2F69 BF 2E               121     .dw spikes_lef_44_128
   2F6B E0 2E               122     .dw spikes_lef_44_56
                            123 
   2F6D                     124 _ents_lvl_MT_Studios_UA:
   2F6D 28 2D               125     .dw player_4_184;
   2F6F 17 2F               126     .dw coin_67_68
   2F71 75 2D               127     .dw spikes_49_186
   2F73 8B 2D               128     .dw spikes_59_186
   2F75 EE 2D               129     .dw spikes_61_130
   2F77 E3 2D               130     .dw spikes_12_130
                            131 
                            132 ;_ents_lvl0_Ianixaa:
                            133 ;    .dw player_4_184;
                            134 ;    .dw coin_68_156
                            135 ;    .dw spikes_69_186
                            136 ;    .dw spikes_59_186
                            137 ;    .dw spikes_49_186
                            138 ;    .dw spikes_39_186
                            139 ;    .dw spikes_29_186
                            140 ;    .dw spikes_19_186
                            141 ;    .dw spikes_9_186
                            142 
   2F79                     143 _ents_lvl1_Ianixaa:
   2F79 28 2D               144     .dw player_4_184;
   2F7B F6 2E               145     .dw coin_70_180
   2F7D C2 2D               146     .dw spikes_12_170
   2F7F D8 2D               147     .dw spikes_28_170
   2F81 B7 2D               148     .dw spikes_41_178
   2F83 8B 2D               149     .dw spikes_59_186
                            150 
   2F85                     151 _ents_lvl_Spicyboat_Studios:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 38.
Hexadecimal [16-Bits]



   2F85 28 2D               152     .dw player_4_184
   2F87 38 2F               153     .dw coin_44_27
   2F89 A9 2E               154     .dw spikes_lef_12_153
   2F8B 5C 2E               155     .dw spikes_rig_13_113
   2F8D D5 2E               156     .dw spikes_lef_12_73
   2F8F 88 2E               157     .dw spikes_rig_13_33
   2F91 93 2E               158     .dw spikes_rig_37_27
   2F93 5F 2D               159     .dw spikes_31_186
   2F95 80 2D               160     .dw spikes_50_186
   2F97 8B 2D               161     .dw spikes_59_186
                            162 
   2F99                     163 _ents_lvl_rnd_project22:
   2F99 33 2D               164     .dw player_4_32
   2F9B 2D 2F               165     .dw coin_4_51
   2F9D 3E 2D               166     .dw spikes_7_186
   2F9F 54 2D               167     .dw spikes_19_186
   2FA1 8B 2D               168     .dw spikes_59_186
   2FA3 A1 2D               169     .dw spikes_69_186
   2FA5 AC 2D               170     .dw spikes_32_178
   2FA7 B7 2D               171     .dw spikes_41_178
   2FA9 04 2E               172     .dw spikes_25_90
   2FAB 0F 2E               173     .dw spikes_47_90
   2FAD 25 2E               174     .dw spikes_16_42
                            175     
   2FAF                     176 _ents_lvl_Tomateixon:
   2FAF 28 2D               177     .dw player_4_184
   2FB1 F6 2E               178     .dw coin_70_180
   2FB3 CD 2D               179     .dw spikes_20_170
   2FB5 6A 2D               180     .dw spikes_39_186
   2FB7 75 2D               181     .dw spikes_49_186
   2FB9 96 2D               182     .dw spikes_56_186
                            183 
   2FBB                     184 _ents_last_lvl:
   2FBB 33 2D               185     .dw player_4_32
   2FBD 01 2F               186     .dw coin_70_170
   2FBF 49 2D               187     .dw spikes_14_186
   2FC1 EB 2E               188     .dw spikes_lef_12_42
   2FC3 9E 2E               189     .dw spikes_rig_21_9
   2FC5 7D 2E               190     .dw spikes_rig_21_52
   2FC7 67 2E               191     .dw spikes_rig_21_102
   2FC9 46 2E               192     .dw spikes_rig_21_140
   2FCB CA 2E               193     .dw spikes_lef_12_90
   2FCD B4 2E               194     .dw spikes_lef_12_138
                            195 
   2FCF                     196 DefineLevel lvl0,                 #_intro,                   2, _ents_lvl0
   02A7                       1 lvl0::
   2FCF 11 25                 2    .dw  #_intro
   2FD1 02                    3    .db  2
   2FD2 43 2F                 4    .dw  _ents_lvl0
   2FD4                     197 DefineLevel lvl1,                 #_level1,                  2, _ents_lvl0
   02AC                       1 lvl1::
   2FD4 29 21                 2    .dw  #_level1
   2FD6 02                    3    .db  2
   2FD7 43 2F                 4    .dw  _ents_lvl0
   2FD9                     198 DefineLevel lvl2,                 #_level1,                  3, _ents_lvl1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 39.
Hexadecimal [16-Bits]



   02B1                       1 lvl2::
   2FD9 29 21                 2    .dw  #_level1
   2FDB 03                    3    .db  3
   2FDC 47 2F                 4    .dw  _ents_lvl1
   2FDE                     199 DefineLevel lvl3,                 #_level2,                  6, _ents_lvl2
   02B6                       1 lvl3::
   2FDE 35 1F                 2    .dw  #_level2
   2FE0 06                    3    .db  6
   2FE1 4D 2F                 4    .dw  _ents_lvl2
   2FE3                     200 DefineLevel lvl4,                 #_level3,                 10, _ents_lvl3
   02BB                       1 lvl4::
   2FE3 41 1D                 2    .dw  #_level3
   2FE5 0A                    3    .db  10
   2FE6 59 2F                 4    .dw  _ents_lvl3
   2FE8                     201 DefineLevel lvl_MT_Studios_UA,    #_level_MT_Studios_UA,     6, _ents_lvl_MT_Studios_UA
   02C0                       1 lvl_MT_Studios_UA::
   2FE8 4D 1B                 2    .dw  #_level_MT_Studios_UA
   2FEA 06                    3    .db  6
   2FEB 6D 2F                 4    .dw  _ents_lvl_MT_Studios_UA
                            202 ;DefineLevel lvl0_Ianixaa,         #_level0_Ianixaa,          9, _ents_lvl0_Ianixaa
   2FED                     203 DefineLevel lvl1_Ianixaa,         #_level1_Ianixaa,          6, _ents_lvl1_Ianixaa
   02C5                       1 lvl1_Ianixaa::
   2FED 65 17                 2    .dw  #_level1_Ianixaa
   2FEF 06                    3    .db  6
   2FF0 79 2F                 4    .dw  _ents_lvl1_Ianixaa
   2FF2                     204 DefineLevel lvl_Tomateixon,       #_level_Tomateixon,        6, _ents_lvl_Tomateixon
   02CA                       1 lvl_Tomateixon::
   2FF2 89 11                 2    .dw  #_level_Tomateixon
   2FF4 06                    3    .db  6
   2FF5 AF 2F                 4    .dw  _ents_lvl_Tomateixon
   2FF7                     205 DefineLevel lvl_Spicyboat_Studio, #_level_Spicyboat_Studio, 10, _ents_lvl_Spicyboat_Studios
   02CF                       1 lvl_Spicyboat_Studio::
   2FF7 71 15                 2    .dw  #_level_Spicyboat_Studio
   2FF9 0A                    3    .db  10
   2FFA 85 2F                 4    .dw  _ents_lvl_Spicyboat_Studios
   2FFC                     206 DefineLevel lvl_rnd_project22,    #_level_rnd_project22,    11, _ents_lvl_rnd_project22
   02D4                       1 lvl_rnd_project22::
   2FFC 7D 13                 2    .dw  #_level_rnd_project22
   2FFE 0B                    3    .db  11
   2FFF 99 2F                 4    .dw  _ents_lvl_rnd_project22
   3001                     207 DefineLevel last_lvl,             #_end,                    10, _ents_last_lvl
   02D9                       1 last_lvl::
   3001 95 0F                 2    .dw  #_end
   3003 0A                    3    .db  10
   3004 BB 2F                 4    .dw  _ents_last_lvl
                            208 
   3006                     209 _actual_level:              ;;  Posicion de memoria del nivel actual
   3006 0A 30               210     .dw _levels
                            211 
   3008                     212 _last_level:                ;;  Ultimo nivel del juego
   3008 01 30               213     .dw last_lvl
                            214 
   300A                     215 _levels:                    ;;  Array de niveles del juego
   300A CF 2F               216     .dw lvl0
   300C D4 2F               217     .dw lvl1
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 40.
Hexadecimal [16-Bits]



   300E D9 2F               218     .dw lvl2
   3010 DE 2F               219     .dw lvl3
   3012 E3 2F               220     .dw lvl4
   3014 E8 2F               221     .dw lvl_MT_Studios_UA
   3016 ED 2F               222     .dw lvl1_Ianixaa
   3018 F2 2F               223     .dw lvl_Tomateixon
   301A F7 2F               224     .dw lvl_Spicyboat_Studio
   301C FC 2F               225     .dw lvl_rnd_project22
   301E 01 30               226     .dw last_lvl
                            227 
   3020                     228 _string_MTStudios:
   3020 40 4D 54 5F 53 54   229     .asciz "@MT_STUDIOS_UA"
        55 44 49 4F 53 5F
        55 41 00
                            230 
   302F                     231 _string_Ianixaa:
   302F 40 49 41 4E 49 58   232     .asciz "@IANIXAA"
        41 41 00
                            233 
   3038                     234 _string_SpicyboatStudios:
   3038 40 53 50 49 43 59   235     .asciz "@SPICYBOATSTUDIO"
        42 4F 41 54 53 54
        55 44 49 4F 00
                            236 
   3049                     237 _string_rnd_project22:
   3049 40 52 4E 44 5F 50   238     .asciz "@RND_PROJECT22"
        52 4F 4A 45 43 54
        32 32 00
                            239 
   3058                     240 _string_tomateixon:
   3058 40 54 4F 4D 41 54   241     .asciz "@TOMATEIXON"
        45 49 58 4F 4E 00
                            242 
   3064                     243 _string_default:
   3064 00                  244     .asciz ""
                            245 
   3065                     246 _string_intro:
   3065 20 20 20 20 20 20   247     .asciz "        Q = UP      O = LEFT   P = RIGHT"
        20 20 51 20 3D 20
        55 50 20 20 20 20
        20 20 4F 20 3D 20
        4C 45 46 54 20 20
        20 50 20 3D 20 52
        49 47 48 54 00
                            248 
   308E                     249 gameman_init::
   308E CD F6 2A      [17]  250     call  rendersys_init             ;; Inicializar sistema de render
   3091 CD 57 31      [17]  251     call  gameman_set_entities       ;; Crea las primeras entidades
   3094 CD 7D 2A      [17]  252     call  musicsys_init              ;; Inicializar sonido
   3097 C9            [10]  253 ret
                            254 
   3098                     255 gameman_check_end::
   3098 CD DA 30      [17]  256     call gameman_get_actual_level
   309B 2A 08 30      [16]  257     ld      hl,     (_last_level)       ;;  HL = Ultimo nivel del juego
   309E 7D            [ 4]  258     ld      a,      l                   ;;  A = Byte bajo del ultimo nivel del juego
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 41.
Hexadecimal [16-Bits]



   309F BB            [ 4]  259     cp      e                           ;;  Compara con E
   30A0 28 04         [12]  260     jr      z,      restart_game        ;;  Si es el mismo (A-E=0), estoy en el ultimo nivel
   30A2 CD AA 30      [17]  261     call    gameman_next_level          ;;  Si no, paso al siguiente nivel
   30A5 C9            [10]  262     ret
   30A6                     263     restart_game:
   30A6 CD BA 30      [17]  264     call    gameman_restart_game        ;;  Vuelvo a empezar desde el primer nivel
   30A9 C9            [10]  265 ret
                            266 
   30AA                     267 gameman_next_level:
   30AA DD 2A 06 30   [20]  268     ld      ix,     (_actual_level)     ;;  IX = Puntero al nivel actual
   30AE DD 23         [10]  269     inc     ix                          ;;  /
   30B0 DD 23         [10]  270     inc     ix                          ;;  \ Incrementa IX 2 veces
   30B2 DD 22 06 30   [20]  271     ld      (_actual_level),    ix      ;;  Actualiza al nivel siguiente
   30B6 CD D0 30      [17]  272     call    gameman_load_level          ;;  Carga el nivel de IX
   30B9 C9            [10]  273 ret
                            274 
   30BA                     275 gameman_restart_game:
   30BA 21 0A 30      [10]  276     ld      hl,     #_levels            ;;  HL = Direccion del array de niveles (primer nivel)
   30BD 22 06 30      [16]  277     ld      (_actual_level),    hl      ;;  Actualizo _actual_level con el primer nivel
   30C0 CD C8 30      [17]  278     call    gameman_IX_load_level       ;;  Guardo en IX el nivel actual y lo cargo
   30C3 C9            [10]  279 ret
                            280 
   30C4                     281 gameman_restart_level::
   30C4 CD C8 30      [17]  282     call    gameman_IX_load_level       ;;  Guardo en IX el nivel actual y lo cargo
   30C7 C9            [10]  283 ret
                            284 
   30C8                     285 gameman_IX_load_level:
   30C8 DD 2A 06 30   [20]  286     ld      ix,     (_actual_level)     ;;  IX = Puntero al nivel actual
   30CC CD D0 30      [17]  287     call    gameman_load_level          ;;  Carga el nivel de IX
   30CF C9            [10]  288 ret
                            289 
                            290 ;;  Input
                            291 ;;  IX = Puntero al nivel que cargar
   30D0                     292 gameman_load_level:
   30D0 CD 1D 2D      [17]  293     call    entityman_destroy_entities  ;;  Destruye todas las entidades
   30D3 CD 67 2B      [17]  294     call    rendersys_tilemap           ;;  Carga el siguiente mapa
   30D6 CD 57 31      [17]  295     call    gameman_set_entities        ;;  Crea las entidades del siguiente nivel
   30D9 C9            [10]  296 ret
                            297 
   30DA                     298 gameman_get_actual_level:
   30DA 2A 06 30      [16]  299     ld      hl,     (_actual_level)     ;;  HL = Puntero al nivel actual
   30DD 5E            [ 7]  300     ld      e,      (hl)                ;;  E = Byte bajo del nivel
   30DE 23            [ 6]  301     inc     hl                          ;;  Incremento HL
   30DF 56            [ 7]  302     ld      d,      (hl)                ;;  D = Byte alto del nivel
   30E0 C9            [10]  303 ret
                            304 
   30E1                     305 gameman_get_map::
   30E1 CD DA 30      [17]  306     call    gameman_get_actual_level    ;;  DE = Nivel actual (2 primeros bytes puntero a mapa del nivel)
   30E4 EB            [ 4]  307     ex      de,     hl                  ;;  HL = Nivel actual
   30E5 5E            [ 7]  308     ld      e,      (hl)                ;;  E = Byte bajo del mapa
   30E6 23            [ 6]  309     inc     hl                          ;;  Incremento HL
   30E7 56            [ 7]  310     ld      d,      (hl)                ;;  D = Byte alto del mapa
   30E8 C9            [10]  311 ret
                            312 
   30E9                     313 gameman_get_string::
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 42.
Hexadecimal [16-Bits]



   30E9 CD DA 30      [17]  314     call    gameman_get_actual_level
   30EC C3 00 31      [10]  315     jp      comprueba_MTStudios
   30EF                     316     return_string:
   30EF 21 00 C0      [10]  317     ld  hl,         #0xC000
   30F2 FD 21 64 30   [14]  318     ld  iy,         #_string_default
   30F6 C9            [10]  319 ret
                            320 
   30F7                     321 procedimiento_comprueba:
   30F7 21 0A 30      [10]  322     ld      hl,     #_levels
   30FA 06 00         [ 7]  323     ld      b,      #0
   30FC 09            [11]  324     add     hl,     bc
   30FD 7E            [ 7]  325     ld      a,      (hl)
   30FE BB            [ 4]  326     cp      e
   30FF C9            [10]  327 ret
                            328 
   3100                     329 comprueba_MTStudios:
   3100 0E 0A         [ 7]  330     ld      c,      #lvl_MTStudios_bytes
   3102 CD F7 30      [17]  331     call    procedimiento_comprueba
   3105 CA 43 31      [10]  332     jp      z,      MTStudios_map
                            333 
   3108                     334 comprueba_Ianixaa:
   3108 0E 0C         [ 7]  335     ld      c,      #lvl1_Ianixaa_bytes
   310A CD F7 30      [17]  336     call    procedimiento_comprueba
   310D CA 39 31      [10]  337     jp      z,      Ianixaa_map
                            338 
   3110                     339 comprueba_Tomateixon:
   3110 0E 0E         [ 7]  340     ld      c,      #lvl_Tomateixon_bytes
   3112 CD F7 30      [17]  341     call    procedimiento_comprueba
   3115 CA 3E 31      [10]  342     jp      z,      Tomateixon_map
                            343 
   3118                     344 comprueba_SpicyboatStudios:
   3118 0E 10         [ 7]  345     ld      c,      #lvl_Spicyboat_Studios_bytes
   311A CD F7 30      [17]  346     call    procedimiento_comprueba
   311D CA 48 31      [10]  347     jp      z,      SpicyboatStudios_map
                            348     
   3120                     349 comprueba_RndProject22:
   3120 0E 12         [ 7]  350     ld      c,      #lvl_rnd_project22_bytes
   3122 CD F7 30      [17]  351     call    procedimiento_comprueba
   3125 CA 4D 31      [10]  352     jp      z,      RndProject22_map
   3128 C3 EF 30      [10]  353     jp      return_string
                            354 
   312B                     355 comprueba_intro::
   312B CD DA 30      [17]  356     call    gameman_get_actual_level
   312E 21 0A 30      [10]  357     ld      hl,     #_levels
   3131 7E            [ 7]  358     ld      a,      (hl)
   3132 BB            [ 4]  359     cp      e
   3133 CA 52 31      [10]  360     jp      z,      intro_map
   3136 C3 EF 30      [10]  361     jp      return_string
                            362 
   3139                     363 Ianixaa_map:
   3139 FD 21 2F 30   [14]  364     ld  iy,         #_string_Ianixaa
   313D C9            [10]  365 ret
                            366 
   313E                     367 Tomateixon_map:
   313E FD 21 58 30   [14]  368     ld  iy,         #_string_tomateixon
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 43.
Hexadecimal [16-Bits]



   3142 C9            [10]  369 ret
                            370 
   3143                     371 MTStudios_map:
   3143 FD 21 20 30   [14]  372     ld  iy,         #_string_MTStudios
   3147 C9            [10]  373 ret
                            374 
   3148                     375 SpicyboatStudios_map:
   3148 FD 21 38 30   [14]  376     ld  iy,         #_string_SpicyboatStudios
   314C C9            [10]  377 ret
                            378 
   314D                     379 RndProject22_map:
   314D FD 21 49 30   [14]  380     ld  iy,         #_string_rnd_project22
   3151 C9            [10]  381 ret
                            382 
   3152                     383 intro_map:
   3152 FD 21 65 30   [14]  384     ld  iy,         #_string_intro
   3156 C9            [10]  385 ret
                            386 
   3157                     387 gameman_set_entities::
   3157 CD DA 30      [17]  388     call    gameman_get_actual_level    ;;  DE = Nivel actual
   315A EB            [ 4]  389     ex      de,     hl                  ;;  HL = Nivel actual
   315B 01 02 00      [10]  390     ld      bc,     #l_num              ;;  BC = 2 (posicion de _num_ents)
   315E 09            [11]  391     add     hl,     bc                  ;;  Sumo posiciones a HL
   315F 7E            [ 7]  392     ld      a,      (hl)                ;;  A = Numero de entidades
   3160 23            [ 6]  393     inc     hl                          ;;  Incrementa HL
   3161 5E            [ 7]  394     ld      e,      (hl)                ;;  E = Byte bajo lista de entidades
   3162 23            [ 6]  395     inc     hl                          ;;  Incrementa HL
   3163 56            [ 7]  396     ld      d,      (hl)                ;;  D = Byte alto lista de entidades
   3164 CD F5 2C      [17]  397     call    entityman_create_mulitple   ;;  Crea las entidades de la lista
   3167 C9            [10]  398 ret
