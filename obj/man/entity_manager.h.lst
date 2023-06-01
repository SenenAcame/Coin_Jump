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
                     0004    55 e_vx     = 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                     0005    56 e_vy     = 5
                     0006    57 e_sp     = 6
                     0008    58 e_a      = 8
                     0009    59 e_va     = 9
                     000A    60 e_type   = 10
                     000B    61 sizeof_e = 11
