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
.include "man/game_manager.h.s"
.include "sys/animation_system.h.s"
.include "sys/render_system.h.s"
.include "sys/music_system.h.s"

DefineEntity player_4_184,       4, 184, SP_PLAYER_0_W,   SP_PLAYER_0_H,   0, 0, #player_walking,  0, 0, 0
DefineEntity player_4_32,        4,  32, SP_PLAYER_0_W,   SP_PLAYER_0_H,   0, 0, #player_walking,  0, 0, 0
;DefineEntity player_4_24,        4,  24, SP_PLAYER_0_W,   SP_PLAYER_0_H,   0, 0, #player_walking,  0, 0, 0

DefineEntity spikes_7_186,       7, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
;DefineEntity spikes_9_186,       9, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_14_186,     14, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_19_186,     19, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
;DefineEntity spikes_29_186,     29, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_31_186,     31, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_39_186,     39, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
;DefineEntity spikes_47_186,     47, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_49_186,     49, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_50_186,     50, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_59_186,     59, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_56_186,     56, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_69_186,     69, 186, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_32_178,     32, 178, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_41_178,     41, 178, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_12_170,     12, 170, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_20_170,     20, 170, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_28_170,     28, 170, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_12_130,     12, 130, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_61_130,     61, 130, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_36_122,     36, 122, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_25_90,      25,  90, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_47_90,      47,  90, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_36_50,       36, 50, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1
DefineEntity spikes_16_42,      16,  42, SP_SPIKES_W,     SP_SPIKES_H,     0, 0, #spikes_anim,     0, 0, 1

;DefineEntity spikes_up_41_178,  41, 178, SP_SPIKES_UP_W,  SP_SPIKES_UP_H,  0, 0, #spikes_up_anim,  0, 0, 1
DefineEntity spikes_up_37_144,  37, 144, SP_SPIKES_UP_W,  SP_SPIKES_UP_H,  0, 0, #spikes_up_anim,  0, 0, 1
DefineEntity spikes_up_37_72,   37,  72, SP_SPIKES_UP_W,  SP_SPIKES_UP_H,  0, 0, #spikes_up_anim,  0, 0, 1

DefineEntity spikes_rig_21_140, 21, 140, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
DefineEntity spikes_rig_33_130, 33, 130, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1

DefineEntity spikes_rig_13_113, 13, 113, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
DefineEntity spikes_rig_21_102, 21, 102, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
DefineEntity spikes_rig_33_58,  33,  58, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
DefineEntity spikes_rig_21_52,  21,  52, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
DefineEntity spikes_rig_13_33,  13,  33, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
DefineEntity spikes_rig_37_27,  37,  27, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
;DefineEntity spikes_rig_37_13,  37,  13, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1
DefineEntity spikes_rig_21_9,   21,   9, SP_SPIKES_RIG_W, SP_SPIKES_RIG_H, 0, 0, #spikes_rig_anim, 0, 0, 1

;DefineEntity spikes_lef_12_154, 12, 154, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
DefineEntity spikes_lef_12_153, 12, 153, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
DefineEntity spikes_lef_12_138, 12, 138, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
DefineEntity spikes_lef_44_128, 44, 128, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
DefineEntity spikes_lef_12_90,  12,  90, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
DefineEntity spikes_lef_12_73,  12,  73, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
DefineEntity spikes_lef_44_56,  44,  56, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1
DefineEntity spikes_lef_12_42,  12,  42, SP_SPIKES_LEF_W, SP_SPIKES_LEF_H, 0, 0, #spikes_lef_anim, 0, 0, 1

DefineEntity coin_70_180,       70, 180, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
DefineEntity coin_70_170,       70, 170, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
DefineEntity coin_68_156,       68, 156, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
DefineEntity coin_67_68,        67,  68, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
DefineEntity coin_16_60,        16,  60, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
DefineEntity coin_4_51,          4,  51, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2
DefineEntity coin_44_27,        44,  27, SP_COIN_0_W,     SP_COIN_0_H,     0, 0, #coin_anim,       0, 0, 2

_ents_lvl0:
    .dw player_4_184
    .dw coin_70_180

_ents_lvl1:
    .dw player_4_184;
    .dw coin_70_180
    .dw spikes_49_186

_ents_lvl2:
    .dw player_4_184
    .dw coin_70_180
    .dw spikes_36_122
    .dw spikes_up_37_144
    .dw spikes_rig_33_130
    .dw spikes_lef_44_128

_ents_lvl3:
    .dw player_4_184
    .dw coin_16_60
    .dw spikes_36_122
    .dw spikes_36_50
    .dw spikes_up_37_72
    .dw spikes_up_37_144
    .dw spikes_rig_33_130
    .dw spikes_rig_33_58
    .dw spikes_lef_44_128
    .dw spikes_lef_44_56

_ents_lvl_MT_Studios_UA:
    .dw player_4_184;
    .dw coin_67_68
    .dw spikes_49_186
    .dw spikes_59_186
    .dw spikes_61_130
    .dw spikes_12_130

;_ents_lvl0_Ianixaa:
;    .dw player_4_184;
;    .dw coin_68_156
;    .dw spikes_69_186
;    .dw spikes_59_186
;    .dw spikes_49_186
;    .dw spikes_39_186
;    .dw spikes_29_186
;    .dw spikes_19_186
;    .dw spikes_9_186

_ents_lvl1_Ianixaa:
    .dw player_4_184;
    .dw coin_70_180
    .dw spikes_12_170
    .dw spikes_28_170
    .dw spikes_41_178
    .dw spikes_59_186

_ents_lvl_Spicyboat_Studios:
    .dw player_4_184
    .dw coin_44_27
    .dw spikes_lef_12_153
    .dw spikes_rig_13_113
    .dw spikes_lef_12_73
    .dw spikes_rig_13_33
    .dw spikes_rig_37_27
    .dw spikes_31_186
    .dw spikes_50_186
    .dw spikes_59_186

_ents_lvl_rnd_project22:
    .dw player_4_32
    .dw coin_4_51
    .dw spikes_7_186
    .dw spikes_19_186
    .dw spikes_59_186
    .dw spikes_69_186
    .dw spikes_32_178
    .dw spikes_41_178
    .dw spikes_25_90
    .dw spikes_47_90
    .dw spikes_16_42
    
_ents_lvl_Tomateixon:
    .dw player_4_184
    .dw coin_70_180
    .dw spikes_20_170
    .dw spikes_39_186
    .dw spikes_49_186
    .dw spikes_56_186

_ents_last_lvl:
    .dw player_4_32
    .dw coin_70_170
    .dw spikes_14_186
    .dw spikes_lef_12_42
    .dw spikes_rig_21_9
    .dw spikes_rig_21_52
    .dw spikes_rig_21_102
    .dw spikes_rig_21_140
    .dw spikes_lef_12_90
    .dw spikes_lef_12_138

DefineLevel lvl0,                 #_intro,                   2, _ents_lvl0
DefineLevel lvl1,                 #_level1,                  2, _ents_lvl0
DefineLevel lvl2,                 #_level1,                  3, _ents_lvl1
DefineLevel lvl3,                 #_level2,                  6, _ents_lvl2
DefineLevel lvl4,                 #_level3,                 10, _ents_lvl3
DefineLevel lvl_MT_Studios_UA,    #_level_MT_Studios_UA,     6, _ents_lvl_MT_Studios_UA
;DefineLevel lvl0_Ianixaa,         #_level0_Ianixaa,          9, _ents_lvl0_Ianixaa
DefineLevel lvl1_Ianixaa,         #_level1_Ianixaa,          6, _ents_lvl1_Ianixaa
DefineLevel lvl_Tomateixon,       #_level_Tomateixon,        6, _ents_lvl_Tomateixon
DefineLevel lvl_Spicyboat_Studio, #_level_Spicyboat_Studio, 10, _ents_lvl_Spicyboat_Studios
DefineLevel lvl_rnd_project22,    #_level_rnd_project22,    11, _ents_lvl_rnd_project22
DefineLevel last_lvl,             #_end,                    10, _ents_last_lvl

_actual_level:              ;;  Posicion de memoria del nivel actual
    .dw _levels

_last_level:                ;;  Ultimo nivel del juego
    .dw last_lvl

_levels:                    ;;  Array de niveles del juego
    .dw lvl0
    .dw lvl1
    .dw lvl2
    .dw lvl3
    .dw lvl4
    .dw lvl_MT_Studios_UA
    .dw lvl1_Ianixaa
    .dw lvl_Tomateixon
    .dw lvl_Spicyboat_Studio
    .dw lvl_rnd_project22
    .dw last_lvl

_string_MTStudios:
    .asciz "@MT_STUDIOS_UA"

_string_Ianixaa:
    .asciz "@IANIXAA"

_string_SpicyboatStudios:
    .asciz "@SPICYBOATSTUDIO"

_string_rnd_project22:
    .asciz "@RND_PROJECT22"

_string_tomateixon:
    .asciz "@TOMATEIXON"

_string_default:
    .asciz ""

_string_intro:
    .asciz "        Q = UP      O = LEFT   P = RIGHT"

gameman_init::
    call  rendersys_init             ;; Inicializar sistema de render
    call  gameman_set_entities       ;; Crea las primeras entidades
    call  musicsys_init              ;; Inicializar sonido
ret

gameman_check_end::
    call gameman_get_actual_level
    ld      hl,     (_last_level)       ;;  HL = Ultimo nivel del juego
    ld      a,      l                   ;;  A = Byte bajo del ultimo nivel del juego
    cp      e                           ;;  Compara con E
    jr      z,      restart_game        ;;  Si es el mismo (A-E=0), estoy en el ultimo nivel
    call    gameman_next_level          ;;  Si no, paso al siguiente nivel
    ret
    restart_game:
    call    gameman_restart_game        ;;  Vuelvo a empezar desde el primer nivel
ret

gameman_next_level:
    ld      ix,     (_actual_level)     ;;  IX = Puntero al nivel actual
    inc     ix                          ;;  /
    inc     ix                          ;;  \ Incrementa IX 2 veces
    ld      (_actual_level),    ix      ;;  Actualiza al nivel siguiente
    call    gameman_load_level          ;;  Carga el nivel de IX
ret

gameman_restart_game:
    ld      hl,     #_levels            ;;  HL = Direccion del array de niveles (primer nivel)
    ld      (_actual_level),    hl      ;;  Actualizo _actual_level con el primer nivel
    call    gameman_IX_load_level       ;;  Guardo en IX el nivel actual y lo cargo
ret

gameman_restart_level::
    call    gameman_IX_load_level       ;;  Guardo en IX el nivel actual y lo cargo
ret

gameman_IX_load_level:
    ld      ix,     (_actual_level)     ;;  IX = Puntero al nivel actual
    call    gameman_load_level          ;;  Carga el nivel de IX
ret

;;  Input
;;  IX = Puntero al nivel que cargar
gameman_load_level:
    call    entityman_destroy_entities  ;;  Destruye todas las entidades
    call    rendersys_tilemap           ;;  Carga el siguiente mapa
    call    gameman_set_entities        ;;  Crea las entidades del siguiente nivel
ret

gameman_get_actual_level:
    ld      hl,     (_actual_level)     ;;  HL = Puntero al nivel actual
    ld      e,      (hl)                ;;  E = Byte bajo del nivel
    inc     hl                          ;;  Incremento HL
    ld      d,      (hl)                ;;  D = Byte alto del nivel
ret

gameman_get_map::
    call    gameman_get_actual_level    ;;  DE = Nivel actual (2 primeros bytes puntero a mapa del nivel)
    ex      de,     hl                  ;;  HL = Nivel actual
    ld      e,      (hl)                ;;  E = Byte bajo del mapa
    inc     hl                          ;;  Incremento HL
    ld      d,      (hl)                ;;  D = Byte alto del mapa
ret

gameman_get_string::
    call    gameman_get_actual_level
    jp      comprueba_MTStudios
    return_string:
    ld  hl,         #0xC000
    ld  iy,         #_string_default
ret

procedimiento_comprueba:
    ld      hl,     #_levels
    ld      b,      #0
    add     hl,     bc
    ld      a,      (hl)
    cp      e
ret

comprueba_MTStudios:
    ld      c,      #lvl_MTStudios_bytes
    call    procedimiento_comprueba
    jp      z,      MTStudios_map

comprueba_Ianixaa:
    ld      c,      #lvl1_Ianixaa_bytes
    call    procedimiento_comprueba
    jp      z,      Ianixaa_map

comprueba_Tomateixon:
    ld      c,      #lvl_Tomateixon_bytes
    call    procedimiento_comprueba
    jp      z,      Tomateixon_map

comprueba_SpicyboatStudios:
    ld      c,      #lvl_Spicyboat_Studios_bytes
    call    procedimiento_comprueba
    jp      z,      SpicyboatStudios_map
    
comprueba_RndProject22:
    ld      c,      #lvl_rnd_project22_bytes
    call    procedimiento_comprueba
    jp      z,      RndProject22_map
    jp      return_string

comprueba_intro::
    call    gameman_get_actual_level
    ld      hl,     #_levels
    ld      a,      (hl)
    cp      e
    jp      z,      intro_map
    jp      return_string

Ianixaa_map:
    ld  iy,         #_string_Ianixaa
ret

Tomateixon_map:
    ld  iy,         #_string_tomateixon
ret

MTStudios_map:
    ld  iy,         #_string_MTStudios
ret

SpicyboatStudios_map:
    ld  iy,         #_string_SpicyboatStudios
ret

RndProject22_map:
    ld  iy,         #_string_rnd_project22
ret

intro_map:
    ld  iy,         #_string_intro
ret

gameman_set_entities::
    call    gameman_get_actual_level    ;;  DE = Nivel actual
    ex      de,     hl                  ;;  HL = Nivel actual
    ld      bc,     #l_num              ;;  BC = 2 (posicion de _num_ents)
    add     hl,     bc                  ;;  Sumo posiciones a HL
    ld      a,      (hl)                ;;  A = Numero de entidades
    inc     hl                          ;;  Incrementa HL
    ld      e,      (hl)                ;;  E = Byte bajo lista de entidades
    inc     hl                          ;;  Incrementa HL
    ld      d,      (hl)                ;;  D = Byte alto lista de entidades
    call    entityman_create_mulitple   ;;  Crea las entidades de la lista
ret