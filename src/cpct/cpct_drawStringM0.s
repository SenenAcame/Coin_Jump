;;-----------------------------LICENSE NOTICE------------------------------------
;;  This file is part of CPCtelera: An Amstrad CPC Game Engine 
;;  Copyright (C) 2018 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
;;
;;  This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU Lesser General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.
;;
;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU Lesser General Public License for more details.
;;
;;  You should have received a copy of the GNU Lesser General Public License
;;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;-------------------------------------------------------------------------------
.module cpct_strings

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Function: cpct_drawStringM0
;;
;;    Draws a null-terminated string with ROM characters to video memory or 
;; to a hardware backbuffer in Mode 0 (160x200, 16 colours).
;;
;; C Definition:
;;    void <cpct_drawStringM0> ( void* *string*, void* *video_memory*) __z88dk_callee
;;
;; Input Parameters (4 Bytes):
;;  (2B IY) string       - Pointer to the null terminated string being drawn
;;  (2B HL) video_memory - Video memory location where the string will be drawn
;;
;; Assembly call (Input parameters on registers):
;;    > call cpct_drawStringM0_asm
;;
;; Parameter Restrictions:
;;  * *string* must be a null terminated string. It could contain any 8-bit value as 
;; characters except 0, which will signal the end of the string. Be careful to provide
;; strings with a 0 (null) at the end of the string. Otherwise, unexpected results may
;; happen (Typically, rubbish characters printed on screen and, occasionally, memory 
;; overwrite and even hangs or crashes).
;;  * *video_memory* could theoretically be any 16-bit memory location. It will work
;; outside current screen memory boundaries, which is useful if you use any kind of
;; double buffer. However, be careful where you use it, as it does no kind of check
;; or clipping, and it could overwrite data if you select a wrong place to draw.
;;
;; Requirements and limitations:
;;  * *Do not put this function's code below 0x4000 in memory*. In order to read
;; characters from ROM, this function enables Lower ROM (which is located 0x0000-0x3FFF),
;; so CPU would read code from ROM instead of RAM in first bank, effectively shadowing
;; this piece of code. This would lead to undefined results (typically program would
;; hang or crash).
;;  * This routine does not check for boundaries. If you draw too long strings or out 
;; of the screen, unpredictable results will happen.
;;  * Screen must be configured in Mode 0 (160x200 px, 16 colours)
;;  * This function *disables interrupts* during main loop (character printing), and
;; re-enables them at the end.
;;  * This function *will not work from ROM*, as it uses self-modifying code.
;;
;; Details:
;;    This function receives a null-terminated string and draws it to the screen in 
;; Mode 0 (160x200, 16 colours). To do so, it repeatedly calls <cpct_drawCharM0_inner_asm>,
;; for every character to be drawn. As foreground and background colours it uses the
;; ones previously set up by the latest call to <cpct_setDrawCharM0>.
;;
;;   *video_memory* parameter points to the byte where the string will be
;; drawn. The first pixel of that byte will be the upper-left corner of the string.
;; As this function uses a byte-pointer to refer to the upper-left corner of the 
;; string, it can only draw string on even-pixel columns (0, 2, 4, 6...), as 
;; every byte contains 2 pixels in Mode 0.
;;
;;    Usage of this function is quite straight-forward, as you can see in the 
;; following example,
;; (start code)
;;    // Just print some strings for testing
;;    void main () {
;;       u8* pvmem;  // Pointer to video memory
;;
;;       // Set video mode 0
;;       cpct_disableFirmware();
;;       cpct_setVideoMode(0);
;;
;;       // Draw some testing strings with curious colours, more or less centered
;;       pvmem = cpctm_screenPtr(CPCT_VMEM_START, 16, 88);  // Calculate video memory address
;;       cpct_setDrawCharM0(3, 5);                          // Red over black
;;       cpct_drawStringM0("Hello there!", pvmem);          // Draw the string
;;
;;       pvmem = cpctm_screenPtr(CPCT_VMEM_START, 20, 108); // Calculate new video memory address
;;       cpct_setDrawCharM0(1, 9);                          // Bright yellow over yellow
;;       cpct_drawStringM0("Great man!",   pvmem);          // Draw the string
;;
;;       // And loop forever
;;       while(1);
;;    }
;; (end code)
;;
;; Destroyed Register values: 
;;    C bindings  - AF, BC, DE, HL
;;  ASM bindings  - AF, BC, DE, HL, IX, IY
;;
;; Required memory: 
;;    C bindings  - 58 (+100 cpct_drawCharM0_inner_asm = 158 bytes)
;;  ASM bindings  - 38 (+100 cpct_drawCharM0_inner_asm = 138 bytes)
;;
;; Time Measures:
;; (start code)
;;   Case     | microSecs (us) | CPU Cycles
;; ----------------------------------------------
;;   Best     |    74 + 854*L  |  296 + 3416*L  
;;   Worst    |    74 + 862*L  |  296 + 3448*L
;; ----------------------------------------------
;; Asm saving |      -38       |     -152
;; ----------------------------------------------
;; (end code)
;;    L = Length of the string (excluding null-terminator character)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.globl _myDrawCharInner

.include "strings/strings.s"

_myDrawStringM0::

   jr    firstChar                  ;; [3] Jump to first char (Saves 1 jr back every iteration)

nextChar:
   ;; Draw next character
   push  hl                         ;; [4] Save HL
   call  _myDrawCharInner           ;; [5 + 824/832] Draws the next character
   pop   hl                         ;; [3] Recover HL 

   ;; Increment Pointers
   ld    de, #4                     ;; [3] /
   add   hl, de                     ;; [3] | HL += 4 (point to next position in video memory, 8 pixels to the right)
   inc   iy                         ;; [3] IX += 1 (point to next character in the string)

firstChar:
   ld     a, (iy)                   ;; [5] A = next character from the string
   or     a                         ;; [1] Check if A = 0
   jr    nz, nextChar               ;; [2/3] if A != 0, A is next character, draw it, else end

endstring:
   ret  

;; IX/IY Restore and Return provided by bindings
