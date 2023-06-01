;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module Animacion_moneda
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sp_coin_3
	.globl _sp_coin_2
	.globl _sp_coin_1
	.globl _sp_coin_0
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
_sp_coin_0:
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xfc	; 252
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x4b	; 75	'K'
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0xad	; 173
	.db #0xc3	; 195
	.db #0x87	; 135
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0xad	; 173
	.db #0x4b	; 75	'K'
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xfc	; 252
	.db #0xa8	; 168
	.db #0x00	; 0
_sp_coin_1:
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xfc	; 252
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe9	; 233
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xc3	; 195
	.db #0x87	; 135
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x54	; 84	'T'
	.db #0x4b	; 75	'K'
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0xfc	; 252
	.db #0xa8	; 168
	.db #0x00	; 0
_sp_coin_2:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe9	; 233
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xad	; 173
	.db #0x0f	; 15
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
_sp_coin_3:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x0f	; 15
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
