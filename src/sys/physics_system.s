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

.include "man/entity_manager.h.s"
.include "sys/physics_system.h.s"

;physicsys_init::
;ret

physicsys_one_entity:
   ld       a,      e_x(ix)         ;; X
   add      e_vx(ix)                ;; Suma vX a X 
   ld       e_x(ix),    a           ;; Guarda la suma en la posicion 0(ix) (byte X)
   ld    a,       e_a(ix)
   cp    #1
   jp    z,       gravity
   vertical_move:
   ld    a,       e_vy(ix)
   add   e_y(ix)
   ld    e_y(ix), a

   pop      af                      ;; Recojo de la pila el numero de entidades
   pop      hl                      ;; Recojo en HL la direccion de la etiqueta
   jp       (hl)                    ;; Salto de vuelta a la etiqueta

;;  Input
;;  IX: Posicion de la primera entidad
;;  A:  Numero de entidades a dibujar
physicsys_update::
   call  entityman_getIX_A
   ld    hl,      #physicsys_one_entity
   call  entityman_forall
ret

gravity:
   ld    e_vy(ix),   #5
   jp    vertical_move
