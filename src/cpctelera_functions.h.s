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
.globl cpct_disableFirmware_asm
.globl cpct_getScreenPtr_asm
.globl cpct_drawSolidBox_asm
.globl cpct_waitVSYNC_asm
.globl cpct_scanKeyboard_asm
.globl cpct_isAnyKeyPressed_asm
.globl cpct_isKeyPressed_asm
.globl cpct_etm_setDrawTilemap4x8_ag_asm
.globl cpct_etm_drawTilemap4x8_ag_asm
.globl cpct_setVideoMode_asm
.globl cpct_setPalette_asm
.globl cpct_drawSprite_asm
.globl cpct_akp_musicInit_asm
.globl cpct_akp_musicPlay_asm
.globl cpct_akp_SFXInit_asm
.globl cpct_akp_SFXPlay_asm