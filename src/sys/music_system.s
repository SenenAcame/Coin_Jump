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

.include "sys/music_system.h.s"

musicsys_init::
    ld    de,       #_musica
    call  cpct_akp_musicInit_asm
    ld    de,       #_instrument
    call cpct_akp_SFXInit_asm
ret

musicsys_update::
    call  cpct_akp_musicPlay_asm
ret

musicsys_jump::
    ld  e,  #tone_jump
    call    musicsys_rigPlay

    ld  e,  #tone_jump
    call    musicsys_lefPlay
ret

musicsys_death::
    ld  e,  #tone_death
    call    musicsys_rigPlay

    ld  e,  #tone_death
    call    musicsys_lefPlay
ret

musicsys_coin::
    ld  e,  #tone_coin
    call    musicsys_rigPlay

    ld  e,  #tone_coin
    call    musicsys_lefPlay
ret

musicsys_play:
    ld  l,  #1
    ld  h,  #15
    ld  d,  #2
    ld  b,  #0
    ld  c,  b
    call    cpct_akp_SFXPlay_asm
ret

musicsys_lefPlay:
    ld  a,  #left_channel
    call    musicsys_play
ret

musicsys_rigPlay:
    ld  a,  #rig_channel
    call    musicsys_play
ret