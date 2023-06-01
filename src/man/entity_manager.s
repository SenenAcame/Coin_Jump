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

_num_entities::  .db 0                          ;;  .db = reservar 1 byte
_last_elem_ptr:: .dw _entity_array              ;;  .dw = reservar 2 bytes
_entity_array::  .ds max_entities * sizeof_e    ;;  .ds = reservar una cantidad de 0

entityman_getIX_A::
    call    entityman_getEntityArray_IX
    call    entityman_getNumEntities_A
ret

entityman_getEntityArray_IX::           ;;  Funcion get que carga en IX _entity_array
    ld      ix,     #_entity_array      ;;
ret                                     ;;

entityman_getNumEntities_A::            ;;  Funcion get que carga en A _num_entities
    ld      a,      (_num_entities)     ;;
ret                                     ;;

;;  Input
;;  HL: Posicion con la informacion de la entidad a crear
;;  DE: Posicion donde la entidad se va a crear
entityman_create:
    ld      bc,     #sizeof_e           ;;  Tamaño de la entidad (BC) desde donde
    ldir                                ;;  se va a copiar (HL), a donde se va crear (DE)
ret

enityman_update_num_ents_and_ptr:
    ld      a,      (_num_entities)     ;;  Coge el valor que almacena _num_entities
    inc     a                           ;;  Lo incrementa
    ld      (_num_entities),    a       ;;  Lo actualiza

    ld      hl,     (_last_elem_ptr)    ;;  Con el puntero al ultimo elemento (HL)
    ld      bc,     #sizeof_e           ;;  y el tamaño de la entidad (BC), lo sumas
    add     hl,     bc                  ;;  y guardas la posicion donde se creara
    ld      (_last_elem_ptr),   hl      ;;  la siguiente entidad
ret

entityman_create_and_update:
    call    entityman_create                    ;;  Crea la entidad
    call    enityman_update_num_ents_and_ptr    ;;  Actualiza numero de entidades y puntero al ultimo elemento
ret

;;  Input
;;  A = Numero de entidades
;;  DE = Lista de entidades a crear
entityman_create_mulitple::
    create_loop:
        push    af                              ;;  Guardo numero de entidades en la pila
        ex      de,     hl                      ;;  HL = Lista de entidades
        ld      e,      (hl)                    ;;  E = Byte bajo de la entidad
        inc     hl                              ;;  Incrementa HL
        ld      d,      (hl)                    ;;  D = Byte alto de la enitdad
        inc     hl                              ;;  Incrementa HL
        ex      de,     hl                      ;;  HL = Entidad
        push    de                              ;;  Guardo lista de entidades en la pila
        ld      de,     (_last_elem_ptr)        ;;  DE = Ultima posicion de array de entidades
        call    entityman_create_and_update     ;;  Crea la entidad y actualiza array de entidades
        pop     de                              ;;  Recupero lista de entidades de la pila
        pop     af                              ;;  Recupero numero de entidades de la pila
        dec     a                               ;;  Decremento A
        or      a                               ;;  A==0 cuando A=0
    jr      nz,     create_loop                 ;;  Si numero de entidades no es 0, repite el bucle
ret

;;  Input
;;  IX: Posicion de la primera entidad
;;  A:  Numero de entidades
;;  HL: Posicion de memoria de la funcion a realizar
entityman_forall::
    entity_loop:
        push    hl                      ;;  Guardo la direccion de la funcion
        ld      bc,     #post_func      ;;  Cargo en BC la direccion de la etiqueta a la que volver
        push    bc                      ;;  La guardo en la pila
        push    af                      ;;  Guardo en la pila el numero de entidades
        jp      (hl)                    ;;  Salto a la funcion que realiza la entidad
        post_func:                      ;;  Etiqueta global para volver desde la funcion
        pop     hl                      ;;  Recojo la direccion de la funcion
        dec     a                       ;;  Decremento
        ret     z                       ;;  Si a=0, termina la funcion. Si no:
        ld      bc,     #sizeof_e       ;;  Cargo en BC el tamaño de entidad
        add     ix,     bc              ;;  Se lo sumo a IX para apuntar a la siguiente entidad
    jr      entity_loop                 ;;  Vuelvo al loop
ret

entityman_destroy_entities::
    xor     a                           ;;  A = 0
    ld      (_num_entities),    a       ;;  Actualizo numero de entidades a 0
    ld      hl,     #_entity_array      ;;  HL = puntero al array de entidades
    ld      (_last_elem_ptr),   hl      ;;  Actualizo el puntero de la ultima
ret                                     ;;  entidad  a la primera posicion del array