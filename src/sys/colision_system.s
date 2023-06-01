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
.include "sys/colision_system.h.s"
.include "sys/music_system.h.s"
.include "assets/assets.h.s"
.include "man/game_manager.h.s"

;colision_init::
;ret

;;  Input
;;  IX: Posicion de la primera entidad
;;  A:  Numero de entidades a dibujar
colision_update::
   call  entityman_getIX_A
   ld    hl,      #colision_character
   call  entityman_forall

ret

final_real:
   pop      af                      ;; Recojo de la pila el numero de entidades
   pop      hl
   ret

;;Posicion mapa=  #mapa_actual + Posicion X/4 + Posicion Y/8*20
colision_character:
   ld    a,    e_type(ix)
   or    a
   jp    nz,   colision_entity_left
   ld    a,    e_x(ix)              ;;Posicion X
   call  calcula_pos
   ld    a,    (hl)
   or    a
   jp    nz,   colisiona
   ld    a,    e_x(ix)              ;;Posicion X
   add   a,   #3
   call  calcula_pos
   ld    a,    (hl)
   or    a
   jp    nz,   colisiona
   ld    a,    e_x(ix)              ;;Posicion X
   call  calcula_pos
   ld    bc,   #-20
   add   hl,   bc
   ld    a,    (hl)
   or    a
   jp    nz,   colisiona
   ld    a,    e_x(ix)              ;;Posicion X
   add   a,   #3
   call  calcula_pos
   ld    bc,   #-20
   add   hl,   bc
   ld    a,    (hl)
   or    a
   jp    nz,   colisiona
   colision_y:
   ld    a,    e_a(ix)
   or    a
   jp    z,    suelo
   cp    #1
   jp    z,    aire
   jp    salto
   final:
   pop      af                      ;; Recojo de la pila el numero de entidades
   pop      hl                      ;; Recojo en HL la direccion de la etiqueta
   jp       (hl)                    ;; Salto de vuelta a la etiqueta

colisiona:
   ld    a,          e_x(ix)
   sub   e_vx(ix)
   ld    e_x(ix),    a
   ld    e_vx(ix),   #0
   jp    colision_y

suelo:
   ld    bc,      #20
   add   hl,      bc
   ld    a,       (hl)
   or    a
   jp    nz,      final
   ld    bc,      #-1
   add   hl,      bc
   ld    a,       (hl)
   or    a
   jp    nz,      final
   ld    e_a(ix),    #1
   jp    final

aire:
   ld    a,    e_x(ix)              ;;Posicion X
   add   a,   #3
   call  calcula_pos
   ld    a,    (hl)
   or    a
   jp    z,    comprueba_izq
   ld    e_a(ix), #0
   ld    a,          e_y(ix)
   dec   a
   ld    e_y(ix),    a
   
   jp    aire

comprueba_izq:
   ld    a,    e_x(ix)              ;;Posicion X
   call  calcula_pos
   ld    a,    (hl)
   or    a
   jp    z,    final
   ld    e_a(ix), #0
   ld    a,          e_y(ix)
   dec   a
   ld    e_y(ix),    a
   
   jp    comprueba_izq

salto:
   ld    a,    e_x(ix)              ;;Posicion X
   call  calcula_pos
   ld    bc,   #-20
   add   hl,   bc
   ld    a,    (hl)
   or    a
   jp    z,    comprueba_der
   ld    a,          e_y(ix)
   inc   a
   ld    e_y(ix),    a
   ld    e_va(ix), #15
   
   jp    salto

comprueba_der:
   ld    a,    e_x(ix)              ;;Posicion X
   add   #3
   call  calcula_pos
   ld    bc,   #-20
   add   hl,   bc
   ld    a,    (hl)
   or    a
   jp    z,    final
   ld    a,          e_y(ix)
   inc   a
   ld    e_y(ix),    a
   ld    e_va(ix), #15
   
   jp    comprueba_der

calcula_pos::
   sra   a                          ;;Posicion X/2
   sra   a                          ;;Posicion X/4
   ld    c,    a
   ld    b,    #0
   ld    a,    e_y(ix)              ;;Posicion Y
   add   #7
   srl   a                          ;;Posicion Y/2
   srl   a                          ;;Posicion Y/4
   srl   a                          ;;Posicion Y/8
   ld    l,    a
   ld    h,    b
   add   hl,   hl                   ;;Posicion Y/8*2
   add   hl,   hl                   ;;Posicion Y/8*4
   ld    e,    l
   ld    d,    h
   add   hl,   hl                   ;;Posicion Y/8*8
   add   hl,   hl                   ;;Posicion Y/8*16
   add   hl,   de                   ;;Posicion Y/8*20
   add   hl,   bc                   ;;Posicion Y/8*20 + Posicion X/4
;   ex    de,   hl
   push  hl
   call  gameman_get_map
   pop   hl
;   ld    hl,   #_level0             ;;#mapa_actual
   add   hl,   de                   ;;#mapa_actual + Posicion Y/8*20 + Posicion X/4
   ret

colision_entity_left:
   push  ix
   call  entityman_getEntityArray_IX
   ld    a,    e_x(ix)                 ;;Posicion x del personaje
   add   e_w(ix)                       ;;Posicion x del personaje + ancho
   dec   a
   pop   ix
   sub   e_x(ix)                       ;;Posicion x del personaje + ancho - posicion x entidad
   jp    c,    final
   inc   a
   sub   e_w(ix)                       ;;Posicion x del personaje + ancho - (posicion x entidad + ancho entidad)
   jp    c,    colision_entity_up
   jp    colision_entity_rigth

colision_entity_rigth:
   ld    a,    e_x(ix)                 ;;Posicion x de la entidad
   add   e_w(ix)                       ;;Posicion x de la entidad + ancho
   dec   a
   push  ix 
   call  entityman_getEntityArray_IX
   ld    b,    e_x(ix)                 ;;Posicion x del personaje
   pop   ix
   sub   b                             ;;Posicion x de la entidad + ancho - posicion x personaje
   jp    c,    final
   jp    colision_entity_up

colision_entity_up:
   push  ix
   call  entityman_getEntityArray_IX
   ld    a,    e_y(ix)                 ;;Posicion y del personaje
   add   e_h(ix)                       ;;Posicion y del personaje + alto
   dec   a
   pop   ix
   sub   e_y(ix)                       ;;Posicion y del personaje + alto - posicion y entidad
   jp    c,    final
   inc   a
   sub   e_h(ix)                       ;;Posicion y del personaje + alto - (posicion y entidad + alto entidad)
   jp    c,    colision_entity
   jp    colision_entity_down

colision_entity_down:
   ld    a,    e_y(ix)                 ;;Posicion y de la entidad
   add   e_h(ix)                       ;;Posicion y de la entidad + alto
   dec   a
   push  ix 
   call  entityman_getEntityArray_IX
   ld    b,    e_y(ix)                 ;;Posicion y del personaje
   pop   ix
   sub   b
   jp    c,    final
   jp    colision_entity

colision_entity:
   ld    a,    e_type(ix)
   cp    #1
   jp    z,    muere
   call  musicsys_coin
   call  gameman_check_end

   jp    final_real

muere:
   call  musicsys_death
   call  gameman_restart_level

   jp    final_real