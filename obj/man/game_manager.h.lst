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
