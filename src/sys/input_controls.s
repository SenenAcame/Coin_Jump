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
.include "man/entity_manager.h.s"
.include "man/game_manager.h.s"
.include "sys/animation_system.h.s"
.include "sys/input_controls.h.s"
.include "sys/render_system.h.s"
.include "sys/music_system.h.s"

jumptable:
    .db     #-8, #-7
    .db     #-6, #-6, #-5, #-5
    .db     #-4, #-4, #-3, #-3
    .db     #-2, #-2, #-1, #-1
    .db      #0,  #0,  #0,  #0
    .db     #200

;;  Input
;;  IX: puntero a la entidad
inpunt_keyboard::
    call  entityman_getEntityArray_IX
    ld      e_vx(ix),  #0
    ld      e_vy(ix),  #0

    call  cpct_scanKeyboard_asm
    call  cpct_isAnyKeyPressed_asm
    jr    z,   kb_end 
    
    Q_pressed:
        ld      a,  e_a(ix)
        or      a
        jr      nz, O_pressed
        ld    hl,   #Key_Q
        call  cpct_isKeyPressed_asm
        jr    nz, Q_key 

    Joy_fire_press:
        ld      a,  e_a(ix)
        or      a
        jr      nz, O_pressed
        ld      hl,   #Joy0_Fire1
        call    cpct_isKeyPressed_asm
        jr      nz, Q_key 
        jr      O_pressed

    Q_key:
        call    musicsys_jump
        call    animationsys_playerJump         ;;  Cambia la animacion a saltar
        call    jumpcontrol
        

    O_pressed:
        ld    hl,   #Key_O
        call  cpct_isKeyPressed_asm
        jr    nz, O_key

    Joy_left_press:
        ld    hl,   #Joy0_Left
        call  cpct_isKeyPressed_asm
        jr    nz, O_key

    P_pressed:
        ld    hl,   #Key_P
        call  cpct_isKeyPressed_asm
        jr    nz, P_key
;        jr    kb_end 

    Joy_right_press:
        ld    hl,   #Joy0_Right
        call  cpct_isKeyPressed_asm
        jr    nz, P_key
;        jr    kb_end 
       
    E_pressed:                          ;;  /
        ld    hl,   #Key_E              ;;  |
        call  cpct_isKeyPressed_asm     ;;  |   Codigo de prueba
        jr    nz, E_key                 ;;  |   Avisar antes de modificar
        jr    kb_end                    ;;  |
                                        ;;  |
;    R_pressed:                          ;;  |
;        ld    hl,   #Key_R              ;;  |
;        call  cpct_isKeyPressed_asm     ;;  |   Codigo de prueba
;        jr    nz, R_key                 ;;  |   Avisar antes de modificar
;        jr    kb_end                    ;;  \

    O_key:
        ld    a,        #border_left
        cp    e_x(ix)
        jp    z,        kb_end
        ld    e_vx(ix),  #move_left
        jr    kb_end

    P_key:
        ld    a,        #border_right
        cp    e_x(ix)
        jp    z,        kb_end
        ld    e_vx(ix),  #move_right
        jr    kb_end

    E_key:                              ;;  /   Codigo de prueba
        call  gameman_check_end         ;;  |   Avisar antes de modificar
                                        ;;  |
;    R_key:                              ;;  |   Codigo de prueba
;        call gameman_restart_level      ;;  \   Avisar antes de modificar

    kb_end:
        ld      a,      e_a(ix)         ;;  Si esta saltando, sigue haciendo el salto
        cp      #2
        jp      z,      jumping
    ret

jumpcontrol:
    ld      a,      e_a(ix) 
    or      a   
    ret     nz                      ;;  Si es 0 esta en el suelo
    ld      a,          #2
    ld      e_a(ix),     a
    jumping:
        ld      a,              e_va(ix)
        ld      c,              a
        ld      b,              #0
        ld      hl,             #jumptable
        add     hl,             bc    
        ld      a,              (hl)
        cp      #200
        jp      z,              end_jump

        ld      e_vy(ix),       a
        ld      a,              e_va(ix)
        inc     a
        ld      e_va(ix),  a
    ret
    end_jump:
        call    animationsys_playerWalk     ;;  Cambia la animacion a caminar
        ld      a,          #1
        ld      e_a(ix),     a
        ld      a,          #0
        ld      e_va(ix),     a
    ret