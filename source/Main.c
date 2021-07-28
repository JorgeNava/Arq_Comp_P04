/*
 * Copyright 2016-2021 NXP
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of NXP Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * @file    Practica4.c
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "MKL27Z644.h"
#include "fsl_debug_console.h"
#define RED 0x40000 // En B
#define BLUE 0x2000 // En A
#define GREEN 0x80000 // En B
#define REDANDGREEN 0xC0000 // En B

extern void StateMachine(void);

int main(void) {
	stateMachine();
/*
	int *p2SIMS;
	int *p2PCRRed;
	int *p2PCRBlue;
	int *p2PCRGreen;
	int *p2PDDRA;
	int *p2PDDRB;
	int *p2PDORA;
	int *p2PDORB;
	int *p2PDIRA;
	int *p2PDIRB;

	p2SIMS = 0x40048038;

	*p2SIMS = 0x600; //activar el reloj del puerto A y B

	p2PCRRed = 0x4004A048;
	p2PCRBlue = 0x40049034;
	p2PCRGreen = 0x4004A04C;

	*p2PCRRed = 0x100;
	*p2PCRBlue = 0x100;
	*p2PCRGreen = 0x100;

	p2PDDRA = 0x400FF014;
	p2PDDRB = 0x400FF054;

	*p2PDDRA = 0x2000;
	*p2PDDRB = 0xC0000;

	p2PDORA = 0x400FF000;
	p2PDORB = 0x400FF040;

	*p2PDORB = ~0x0;
	*p2PDORA = ~0x0;

	while(1){
		*p2PDORB = ~0x0;
		*p2PDORA = ~0x2000;
	}*/

    return 0 ;
}
