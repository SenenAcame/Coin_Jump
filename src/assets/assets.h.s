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

;;  Includes
.include "assets/maps/intro.h.s"
.include "assets/maps/mapa_00.h.s"
.include "assets/maps/mapa_01.h.s"
.include "assets/maps/mapa_02.h.s"
.include "assets/maps/mapa_03.h.s"
.include "assets/maps/mapa_@MT_Studios_UA.h.s"
.include "assets/maps/mapa0_@Ianixaa.h.s"
.include "assets/maps/mapa1_@Ianixaa.h.s"
.include "assets/maps/mapa_@Spicyboat_Studio.h.s"
.include "assets/maps/mapa_@rnd_project22.h.s"
.include "assets/maps/mapa_@Tomateixon.h.s"
.include "assets/maps/fin.h.s"

;;  Direcciones globales
.globl _tiles_00
.globl _global_pal
.globl _sp_player_0
.globl _sp_player_1
.globl _sp_player_2
.globl _sp_player_3
.globl _sp_player_4
.globl _sp_player_5
.globl _sp_player_6
.globl _sp_spikes
.globl _sp_spikes_up
.globl _sp_spikes_rig
.globl _sp_spikes_lef
.globl _sp_coin_0
.globl _sp_coin_1
.globl _sp_coin_2
.globl _sp_coin_3
;.globl _sp_cannon_0
;.globl _sp_cannon_1
;.globl _sp_cannon_2
;.globl _sp_cannon_ball
;.globl _sp_laser_0
;.globl _sp_laser_1

;;  Constantes
SP_PLAYER_0_W = 4
SP_PLAYER_0_H = 8
SP_SPIKES_W = 7
SP_SPIKES_H = 6
SP_SPIKES_UP_W = 7
SP_SPIKES_UP_H = 6
SP_SPIKES_RIG_W = 3
SP_SPIKES_RIG_H = 14
SP_SPIKES_LEF_W = 3
SP_SPIKES_LEF_H = 14
SP_COIN_0_W = 5
SP_COIN_0_H = 10
;SP_CANNON_0_W = 4
;SP_CANNON_0_H = 6
;SP_CANNON_BALL_W = 2
;SP_CANNON_BALL_H = 4
;SP_LASER_0_W = 4
;SP_LASER_0_H = 6