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

.include "assets/assets.h.s"
.include "man/entity_manager.h.s"

player_walking::
    .dw _sp_player_0
    .dw _sp_player_0
    .dw _sp_player_0
    .dw _sp_player_1
    .dw _sp_player_1
    .dw _sp_player_1
    .dw _sp_player_2
    .dw _sp_player_2
    .dw _sp_player_2
    .dw _sp_player_1
    .dw _sp_player_1
    .dw _sp_player_1
    .dw _sp_player_0
    .dw _sp_player_0
    .dw _sp_player_0
    .dw _sp_player_3
    .dw _sp_player_3
    .dw _sp_player_3
    .dw _sp_player_4
    .dw _sp_player_4
    .dw _sp_player_4
    .dw _sp_player_3
    .dw _sp_player_3
    .dw _sp_player_3
    .dw 0x0000
    .dw player_walking

player_jumping::
    .dw _sp_player_0
    .dw _sp_player_0
    .dw _sp_player_5
    .dw _sp_player_5
    .dw _sp_player_5
    .dw _sp_player_5
    .dw _sp_player_5
    .dw _sp_player_5
    .dw _sp_player_5
    .dw _sp_player_5
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw _sp_player_6
    .dw 0x0000
    .dw player_jumping

spikes_anim::
    .dw _sp_spikes
    .dw 0x0000
    .dw spikes_anim

spikes_up_anim::
    .dw _sp_spikes_up
    .dw 0x0000
    .dw spikes_up_anim

spikes_rig_anim::
    .dw _sp_spikes_rig
    .dw 0x0000
    .dw spikes_rig_anim

spikes_lef_anim::
    .dw _sp_spikes_lef
    .dw 0x0000
    .dw spikes_lef_anim

coin_anim::
    .dw _sp_coin_0
    .dw _sp_coin_0
    .dw _sp_coin_1
    .dw _sp_coin_1
    .dw _sp_coin_2
    .dw _sp_coin_2
    .dw _sp_coin_3
    .dw _sp_coin_3
    .dw _sp_coin_2
    .dw _sp_coin_2
    .dw _sp_coin_1
    .dw _sp_coin_1
    .dw 0x0000
    .dw coin_anim

;cannon_anim::
;    .dw _sp_cannon_0
;    .dw _sp_cannon_0
;    .dw _sp_cannon_1
;    .dw _sp_cannon_1
;    .dw _sp_cannon_2
;    .dw _sp_cannon_2
;    .dw 0x0000
;    .dw cannon_anim
;
;cannon_ball_anim::
;    .dw _sp_cannon_ball
;    .dw 0x0000
;    .dw cannon_ball_anim
;
;laser_anim::
;    .dw _sp_laser_0
;    .dw _sp_laser_0
;    .dw _sp_laser_0
;    .dw _sp_laser_1
;    .dw _sp_laser_1
;    .dw _sp_laser_1
;    .dw 0x0000
;    .dw laser_anim
;
animationsys_getSprite::
    ld      l,      e_sp(ix)        ;;  Puntero a la animacion (byte bajo)
    inc     ix                      ;;  Incrementar IX
    ld      h,      e_sp(ix)        ;;  Puntero a la animacion (byte alto)
    dec     ix                      ;;  Decrementar IX

    ld      e,      (hl)            ;;  Sprite (byte bajo)
    inc     hl                      ;;  Incrementar HL
    ld      d,      (hl)            ;;  Sprite (byte alto)
    inc     hl                      ;;  Incrementar HL
ret

animationsys_playerJump::
    ld      hl,         #player_jumping     ;;  Animacion de saltar (HL)
    call    animationsys_changeAnimation    ;;  Cambia la animacion del player
ret

animationsys_playerWalk::
    ld      hl,         #player_walking     ;;  Animacion de caminar (HL)
    call    animationsys_changeAnimation    ;;  Cambia la animacion del player
ret

animationsys_changeAnimation:
    call    entityman_getEntityArray_IX     ;;  Obtiene array de entidades
    ld      e_sp(ix),   l                   ;;  Byte bajo de animacion
    inc     ix                              ;;  Incrementa IX
    ld      e_sp(ix),   h                   ;;  Byte alto animacion
    dec     ix                              ;;  Decrementa IX
ret

;;  Input
;;  DE = Posicion del sprite
animationsys_setSprite::
    ld      a,d                     ;;  Guardo D en A
    or      a                       ;;  Comparo si A==0
    jr      z,      reset           ;;  Si lo es, resetea la animacion (DE==00 00)

    ld      e_sp(ix),   l           ;;  Si no, guarda byte bajo del siguiente sprite
    inc     ix                      ;;  Incremento IX
    ld      e_sp(ix),   h           ;;  Guarda byte alto del siguiente sprite
    dec     ix                      ;;  Decremento IX
ret

reset:
    ld      b,          (hl)        ;;  Byte bajo de puntero a animacion a B
    ld      e_sp(ix),   b           ;;  Para guardarlo en e_sp(IX)
    inc     hl                      ;;  Incremento HL
    inc     ix                      ;;  Incremento IX
    ld      c,          (hl)        ;;  Byte alto de puntero a animacion a C
    ld      e_sp(ix),   c           ;;  Para guardarlo en e_sp(IX)
    dec     ix                      ;;  Decremento IX
    call    animationsys_getSprite  ;;  Obtengo el sprite actual
ret