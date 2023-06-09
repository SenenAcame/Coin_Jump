;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module Animacion_player
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sp_player_6
	.globl _sp_player_5
	.globl _sp_player_4
	.globl _sp_player_3
	.globl _sp_player_2
	.globl _sp_player_1
	.globl _sp_player_0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
_sp_player_0:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
_sp_player_1:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x80	; 128
_sp_player_2:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
_sp_player_3:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x42	; 66	'B'
_sp_player_4:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x03	; 3
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x42	; 66	'B'
_sp_player_5:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
_sp_player_6:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x47	; 71	'G'
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
