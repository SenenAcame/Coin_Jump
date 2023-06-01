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
                             25 ;;  Includes
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
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
