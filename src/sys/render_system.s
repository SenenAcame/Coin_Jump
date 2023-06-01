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

.include "cpctelera.h.s"
.include "cpctelera_functions.h.s"
.include "assets/assets.h.s"
.include "man/entity_manager.h.s"
.include "man/game_manager.h.s"
.include "sys/animation_system.h.s"
.include "sys/render_system.h.s"

rendersys_init::
    call    cpct_disableFirmware_asm        ;;  Desactiva el Firmware
    ld      c,      #0                      ;;  C = 0
    call    cpct_setVideoMode_asm           ;;  Establece el modo de video 0
    ld      hl,     #_global_pal            ;;  HL = paleta de colores
    ld      de,     #size_pal               ;;  DE = tamaño de la paleta
    call    cpct_setPalette_asm             ;;  Establece la paleta de colores
    cpctm_setBorder_asm HW_WHITE            ;;  Borde de pantalla gris
    call    rendersys_tilemap               ;;  Pinta mapa en pantalla
ret

rendersys_one_entity:
    call    rendersys_erase             ;;  Borrar la posicion anterio
    ld      c,      e_x(ix)             ;;  X
    ld      b,      e_y(ix)             ;;  Y
    call    rendersys_initScrPos        ;;  Posicion de pantalla en bytes (en HL)
    ex      de,     hl                  ;;  Posicion de pantalla en bytes (en DE)
    push    de                          ;;  Guardar posicion de pantalla en la pila

    call    animationsys_getSprite      ;;  Sprite actual (DE)
    call    animationsys_setSprite      ;;  Siguiente sprite (e_sp)
   
    ex      de,     hl                  ;;  Sprite actual (HL)
    pop     de                          ;;  Recoger posicion de pantalla (DE)

    ld      c,      e_w(ix)             ;;  Ancho
    ld      b,      e_h(ix)             ;;  Alto
    call    cpct_drawSprite_asm         ;;  Pinta el sprite en pantalla
    
    pop     af                          ;;  Recojo de la pila el numero de entidades
    pop     hl                          ;;  Recojo en HL la direccion de la etiqueta
    jp      (hl)                        ;;  Salto a la etiqueta

rendersys_update::
    call    entityman_getIX_A               ;;  Establece los registros IX y A
    ld      hl,     #rendersys_one_entity   ;;  Guardo en HL la direccion de la funcion
    call    entityman_forall                ;;  Llamo a entityman_forall
ret

;;  Input
;;  IX: Posicion de la entidad
rendersys_erase:
    ld      a,      e_x(ix)                 ;;  Guarda en A la posicion x (x)
    ld      c,      e_vx(ix)                ;;  Guarda en C la velocidad x (vx)
    sub     c                               ;;  Resta C a A (x-vx)
    ld      c,      a                       ;;  Guarda en C la nueva posicion x
    ld      a,      e_y(ix)                 ;;  Guarda en A la posicion y (y)
    ld      b,      e_vy(ix)                ;;  Guarda en B la velocidad y (vy)
    sub     b                               ;;  Resta B a A (y-vy)
    ld      b,      a                       ;;  Guarda en B la nueva posicion y
    call    rendersys_initScrPos            ;;  Obtiene la posicion de memoria de video de las posiciones x e y
    xor     a                               ;;  Igualamos A a 0
    call    rendersys_paintBox              ;;  Pintamos un cuadrado con el color de fondo (A)
ret

;;  Input
;;  A: color
rendersys_paintBox:
    ex      de,     hl                  ;;  Intercambio de valores
    ld      c,      e_w(ix)             ;;  Ancho
    ld      b,      e_h(ix)             ;;  Alto
    call    cpct_drawSolidBox_asm       ;;  Pinta un cuadrado con el color A
ret

rendersys_initScrPos:
    ld      de,     #CPCT_VMEM_START_ASM    ;;  Guarda en DE el principio de la pantalla     
    call    cpct_getScreenPtr_asm           ;;  Posicion de pantalla en bytes (en HL)
ret

rendersys_tilemap::
    ld      hl,     #_tiles_00                  ;;  Guarda el principio del arrray de tiles
    ld      de,     #width_map                  ;;  Ancho del mapa en tiles completo
    ld      bc,     #size_window                ;;  Alto y ancho en tiles de la ventana que muestra el mapa
    call    cpct_etm_setDrawTilemap4x8_ag_asm   ;;  Setea la configuracion de la ventana

    call    gameman_get_map                     ;;  Esquina superior izquierda desde la que empezara a dibujar
    ld      hl,     #CPCT_VMEM_START_ASM        ;;  Inicio de la posicion de momria de video (no puede ser cualquiera)                  
    call    cpct_etm_drawTilemap4x8_ag_asm      ;;  Dibujado del mapa


    ld      hl,     #0x010A
    call    cpct_setDrawCharM0_asm

    call    gameman_get_string
    ld      hl,     #0xC000
    call    _myDrawStringM0
    call    rendersys_drawStringIntro
ret

;HL -> Posicion
;IY -> String
rendersys_drawStringIntro::
    ld      hl,     #0x050A
    call    cpct_setDrawCharM0_asm
    call    comprueba_intro
    ld      hl,     #0xC3C0
    call    _myDrawStringM0
ret