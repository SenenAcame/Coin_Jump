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



                             26 
   2C1E 00                   27 _num_entities::  .db 0                          ;;  .db = reservar 1 byte
   2C1F 21 2C                28 _last_elem_ptr:: .dw _entity_array              ;;  .dw = reservar 2 bytes
   2C21                      29 _entity_array::  .ds max_entities * sizeof_e    ;;  .ds = reservar una cantidad de 0
                             30 
   2CC6                      31 entityman_getIX_A::
   2CC6 CD CD 2C      [17]   32     call    entityman_getEntityArray_IX
   2CC9 CD D2 2C      [17]   33     call    entityman_getNumEntities_A
   2CCC C9            [10]   34 ret
                             35 
   2CCD                      36 entityman_getEntityArray_IX::           ;;  Funcion get que carga en IX _entity_array
   2CCD DD 21 21 2C   [14]   37     ld      ix,     #_entity_array      ;;
   2CD1 C9            [10]   38 ret                                     ;;
                             39 
   2CD2                      40 entityman_getNumEntities_A::            ;;  Funcion get que carga en A _num_entities
   2CD2 3A 1E 2C      [13]   41     ld      a,      (_num_entities)     ;;
   2CD5 C9            [10]   42 ret                                     ;;
                             43 
                             44 ;;  Input
                             45 ;;  HL: Posicion con la informacion de la entidad a crear
                             46 ;;  DE: Posicion donde la entidad se va a crear
   2CD6                      47 entityman_create:
   2CD6 01 0B 00      [10]   48     ld      bc,     #sizeof_e           ;;  Tamaño de la entidad (BC) desde donde
   2CD9 ED B0         [21]   49     ldir                                ;;  se va a copiar (HL), a donde se va crear (DE)
   2CDB C9            [10]   50 ret
                             51 
   2CDC                      52 enityman_update_num_ents_and_ptr:
   2CDC 3A 1E 2C      [13]   53     ld      a,      (_num_entities)     ;;  Coge el valor que almacena _num_entities
   2CDF 3C            [ 4]   54     inc     a                           ;;  Lo incrementa
   2CE0 32 1E 2C      [13]   55     ld      (_num_entities),    a       ;;  Lo actualiza
                             56 
   2CE3 2A 1F 2C      [16]   57     ld      hl,     (_last_elem_ptr)    ;;  Con el puntero al ultimo elemento (HL)
   2CE6 01 0B 00      [10]   58     ld      bc,     #sizeof_e           ;;  y el tamaño de la entidad (BC), lo sumas
   2CE9 09            [11]   59     add     hl,     bc                  ;;  y guardas la posicion donde se creara
   2CEA 22 1F 2C      [16]   60     ld      (_last_elem_ptr),   hl      ;;  la siguiente entidad
   2CED C9            [10]   61 ret
                             62 
   2CEE                      63 entityman_create_and_update:
   2CEE CD D6 2C      [17]   64     call    entityman_create                    ;;  Crea la entidad
   2CF1 CD DC 2C      [17]   65     call    enityman_update_num_ents_and_ptr    ;;  Actualiza numero de entidades y puntero al ultimo elemento
   2CF4 C9            [10]   66 ret
                             67 
                             68 ;;  Input
                             69 ;;  A = Numero de entidades
                             70 ;;  DE = Lista de entidades a crear
   2CF5                      71 entityman_create_mulitple::
   2CF5                      72     create_loop:
   2CF5 F5            [11]   73         push    af                              ;;  Guardo numero de entidades en la pila
   2CF6 EB            [ 4]   74         ex      de,     hl                      ;;  HL = Lista de entidades
   2CF7 5E            [ 7]   75         ld      e,      (hl)                    ;;  E = Byte bajo de la entidad
   2CF8 23            [ 6]   76         inc     hl                              ;;  Incrementa HL
   2CF9 56            [ 7]   77         ld      d,      (hl)                    ;;  D = Byte alto de la enitdad
   2CFA 23            [ 6]   78         inc     hl                              ;;  Incrementa HL
   2CFB EB            [ 4]   79         ex      de,     hl                      ;;  HL = Entidad
   2CFC D5            [11]   80         push    de                              ;;  Guardo lista de entidades en la pila
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



   2CFD ED 5B 1F 2C   [20]   81         ld      de,     (_last_elem_ptr)        ;;  DE = Ultima posicion de array de entidades
   2D01 CD EE 2C      [17]   82         call    entityman_create_and_update     ;;  Crea la entidad y actualiza array de entidades
   2D04 D1            [10]   83         pop     de                              ;;  Recupero lista de entidades de la pila
   2D05 F1            [10]   84         pop     af                              ;;  Recupero numero de entidades de la pila
   2D06 3D            [ 4]   85         dec     a                               ;;  Decremento A
   2D07 B7            [ 4]   86         or      a                               ;;  A==0 cuando A=0
   2D08 20 EB         [12]   87     jr      nz,     create_loop                 ;;  Si numero de entidades no es 0, repite el bucle
   2D0A C9            [10]   88 ret
                             89 
                             90 ;;  Input
                             91 ;;  IX: Posicion de la primera entidad
                             92 ;;  A:  Numero de entidades
                             93 ;;  HL: Posicion de memoria de la funcion a realizar
   2D0B                      94 entityman_forall::
   2D0B                      95     entity_loop:
   2D0B E5            [11]   96         push    hl                      ;;  Guardo la direccion de la funcion
   2D0C 01 12 2D      [10]   97         ld      bc,     #post_func      ;;  Cargo en BC la direccion de la etiqueta a la que volver
   2D0F C5            [11]   98         push    bc                      ;;  La guardo en la pila
   2D10 F5            [11]   99         push    af                      ;;  Guardo en la pila el numero de entidades
   2D11 E9            [ 4]  100         jp      (hl)                    ;;  Salto a la funcion que realiza la entidad
   2D12                     101         post_func:                      ;;  Etiqueta global para volver desde la funcion
   2D12 E1            [10]  102         pop     hl                      ;;  Recojo la direccion de la funcion
   2D13 3D            [ 4]  103         dec     a                       ;;  Decremento
   2D14 C8            [11]  104         ret     z                       ;;  Si a=0, termina la funcion. Si no:
   2D15 01 0B 00      [10]  105         ld      bc,     #sizeof_e       ;;  Cargo en BC el tamaño de entidad
   2D18 DD 09         [15]  106         add     ix,     bc              ;;  Se lo sumo a IX para apuntar a la siguiente entidad
   2D1A 18 EF         [12]  107     jr      entity_loop                 ;;  Vuelvo al loop
   2D1C C9            [10]  108 ret
                            109 
   2D1D                     110 entityman_destroy_entities::
   2D1D AF            [ 4]  111     xor     a                           ;;  A = 0
   2D1E 32 1E 2C      [13]  112     ld      (_num_entities),    a       ;;  Actualizo numero de entidades a 0
   2D21 21 21 2C      [10]  113     ld      hl,     #_entity_array      ;;  HL = puntero al array de entidades
   2D24 22 1F 2C      [16]  114     ld      (_last_elem_ptr),   hl      ;;  Actualizo el puntero de la ultima
   2D27 C9            [10]  115 ret                                     ;;  entidad  a la primera posicion del array
