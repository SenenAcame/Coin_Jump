;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;    Coin Jump: a videogame developed for Amstrad CPC 464.                            ;;
;;    Copyright (C) 2022  Senén Martínez Acame & Sergio Tortajada Santonja             ;;
;;                                                                                     ;;
;;    This program is free software: you can redistribute it and/or modify             ;;
;;    it under the terms of the GNU General Public License as published by             ;;
;;    the Free Software Foundation, either version 3 of the License, or                ;;
;;    (at your option) any later version.                                              ;;
;;                                                                                     ;;
;;    This program is distributed in the hope that it will be useful,                  ;;
;;    but WITHOUT ANY WARRANTY; without even the implied warranty of                   ;;
;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                    ;;
;;    GNU General Public License for more details.                                     ;;
;;                                                                                     ;;
;;    You should have received a copy of the GNU General Public License                ;;
;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.            ;;
;;                                                                                     ;;
;;    Coin Jump  Copyright (C) 2022  Senén Martínez Acame & Sergio Tortajada Santonja  ;;
;;                                                                                     ;;
;;    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.       ;;
;;    This is free software, and you are welcome to redistribute it                    ;;
;;    under certain conditions; type `show c' for details.                             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;  Funciones
.globl entityman_getEntityArray_IX
.globl entityman_getNumEntities_A
.globl entityman_getIX_A
.globl entityman_forall
.globl post_func
.globl entityman_create_mulitple
.globl entityman_destroy_entities

;;  Macros
.macro DefineEntity _name _x, _y, _w, _h, _vx, _vy, _sp, _a, _va, _type
_name::
   .db   _x
   .db   _y
   .db   _w
   .db   _h
   .db   _vx
   .db   _vy
   .dw   _sp
   .db   _a
   .db   _va
   .db   _type
.endm

;;  Constantes
max_entities = 15
e_x      = 0
e_y      = 1
e_w      = 2
e_h      = 3
e_vx     = 4
e_vy     = 5
e_sp     = 6
e_a      = 8
e_va     = 9
e_type   = 10
sizeof_e = 11