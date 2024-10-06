/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"

#define APLL_CTRL_ADDR   0x00FD1A0020
#define APLL_CFG_ADDR    0x00FD1A0024
#define PLL_STATUS_ADDR  0x00FD1A0044

u16 PLL_CFG_LUT[][6] = {
{25, 3, 10, 3, 63, 1000},
{26, 3, 10, 3, 63, 1000},
{27, 4, 6, 3, 63, 1000},
{28, 4, 6, 3, 63, 1000},
{29, 4, 6, 3, 63, 1000},
{30, 4, 6, 3, 63, 1000},
{31, 6, 1, 3, 63, 1000},
{32, 6, 1, 3, 63, 1000},
{33, 4, 10, 3, 63, 1000},
{34, 5, 6, 3, 63, 1000},
{35, 5, 6, 3, 63, 1000},
{36, 5, 6, 3, 63, 1000},
{37, 5, 6, 3, 63, 1000},
{38, 5, 6, 3, 63, 975},
{39, 3, 12, 3, 63, 950},
{40, 3, 12, 3, 63, 925},
{41, 3, 12, 3, 63, 900},
{42, 3, 12, 3, 63, 875},
{43, 3, 12, 3, 63, 850},
{44, 3, 12, 3, 63, 850},
{45, 3, 12, 3, 63, 825},
{46, 3, 12, 3, 63, 800},
{47, 3, 12, 3, 63, 775},
{48, 3, 12, 3, 63, 775},
{49, 3, 12, 3, 63, 750},
{50, 3, 12, 3, 63, 750},
{51, 3, 2, 3, 63, 725},
{52, 3, 2, 3, 63, 700},
{53, 3, 2, 3, 63, 700},
{54, 3, 2, 3, 63, 675},
{55, 3, 2, 3, 63, 675},
{56, 3, 2, 3, 63, 650},
{57, 3, 2, 3, 63, 650},
{58, 3, 2, 3, 63, 625},
{59, 3, 2, 3, 63, 625},
{60, 3, 2, 3, 63, 625},
{61, 3, 2, 3, 63, 600},
{62, 3, 2, 3, 63, 600},
{63, 3, 2, 3, 63, 600},
{64, 3, 2, 3, 63, 600},
{65, 3, 2, 3, 63, 600},
{66, 3, 2, 3, 63, 600},
{67, 3, 2, 3, 63, 600},
{68, 3, 2, 3, 63, 600},
{69, 3, 2, 3, 63, 600},
{70, 3, 2, 3, 63, 600},
{71, 3, 2, 3, 63, 600},
{72, 3, 2, 3, 63, 600},
{73, 3, 2, 3, 63, 600},
{74, 3, 2, 3, 63, 600},
{75, 3, 2, 3, 63, 600},
{76, 3, 2, 3, 63, 600},
{77, 3, 2, 3, 63, 600},
{78, 3, 2, 3, 63, 600},
{79, 3, 2, 3, 63, 600},
{80, 3, 2, 3, 63, 600},
{81, 3, 2, 3, 63, 600},
{82, 3, 2, 3, 63, 600},
{83, 4, 2, 3, 63, 600},
{84, 4, 2, 3, 63, 600},
{85, 4, 2, 3, 63, 600},
{86, 4, 2, 3, 63, 600},
{87, 4, 2, 3, 63, 600},
{88, 4, 2, 3, 63, 600},
{89, 4, 2, 3, 63, 600},
{90, 4, 2, 3, 63, 600},
{91, 4, 2, 3, 63, 600},
{92, 4, 2, 3, 63, 600},
{93, 4, 2, 3, 63, 600},
{94, 4, 2, 3, 63, 600},
{95, 4, 2, 3, 63, 600},
{96, 4, 2, 3, 63, 600},
{97, 4, 2, 3, 63, 600},
{98, 4, 2, 3, 63, 600},
{99, 4, 2, 3, 63, 600},
{100, 4, 2, 3, 63, 600},
{101, 4, 2, 3, 63, 600},
{102, 4, 2, 3, 63, 600},
{103, 5, 2, 3, 63, 600},
{104, 5, 2, 3, 63, 600},
{105, 5, 2, 3, 63, 600},
{106, 5, 2, 3, 63, 600},
{107, 3, 4, 3, 63, 600},
{108, 3, 4, 3, 63, 600},
{109, 3, 4, 3, 63, 600},
{110, 3, 4, 3, 63, 600},
{111, 3, 4, 3, 63, 600},
{112, 3, 4, 3, 63, 600},
{113, 3, 4, 3, 63, 600},
{114, 3, 4, 3, 63, 600},
{115, 3, 4, 3, 63, 600},
{116, 3, 4, 3, 63, 600},
{117, 3, 4, 3, 63, 600},
{118, 3, 4, 3, 63, 600},
{119, 3, 4, 3, 63, 600},
{120, 3, 4, 3, 63, 600},
{121, 3, 4, 3, 63, 600},
{122, 3, 4, 3, 63, 600},
{123, 3, 4, 3, 63, 600},
{124, 3, 4, 3, 63, 600},
{125, 3, 4, 3, 63, 600}
};

union {
	struct {
		unsigned RESET    : 1;
		unsigned RSV0     : 2;
		unsigned BYPASS   : 1;
		unsigned RSV1     : 4;
		unsigned FBDIV    : 7;
		unsigned RSV2     : 1;
		unsigned DIV1     : 1;
		unsigned RSV3     : 3;
		unsigned PRE_SRC  : 3;
		unsigned RSV4     : 1;
		unsigned POST_SRC : 3;
		unsigned RSV5     : 5;
	} bitfield;
	u32 data;
} APLL_CTRL;

union {
	struct {
		unsigned RES      : 4;
		unsigned RSV0     : 1;
		unsigned CP       : 4;
		unsigned RSV1     : 1;
		unsigned LFHF     : 2;
		unsigned RSV2     : 1;
		unsigned LOCK_CNT : 10;
		unsigned RSV3     : 2;
		unsigned LOCK_DLY : 7;
	} bitfield;
	u32 data;
} APLL_CFG;

union {
	struct {
		unsigned APLL_LOCK      : 1;
		unsigned DPLL_LOCK      : 1;
		unsigned VPLL_LOCK      : 1;
		unsigned APLL_STABLE    : 1;
		unsigned DPLL_STABLE    : 1;
		unsigned VPLL_STABLE    : 1;
		unsigned RSV0           : 26;
	} bitfield;
	u32 data;
} PLL_STATUS;

void set_frequency(u16 frequency) {
	u16 fbdiv = frequency;
	APLL_CTRL.data = Xil_In32(APLL_CTRL_ADDR);
	APLL_CTRL.bitfield.FBDIV = fbdiv;
	Xil_Out32(APLL_CTRL_ADDR, APLL_CTRL.data);

	APLL_CFG.data = Xil_In32(APLL_CFG_ADDR);
	APLL_CFG.bitfield.CP       = PLL_CFG_LUT[fbdiv-25][1];
	APLL_CFG.bitfield.RES      = PLL_CFG_LUT[fbdiv-25][2];
	APLL_CFG.bitfield.LFHF     = PLL_CFG_LUT[fbdiv-25][3];
	APLL_CFG.bitfield.LOCK_DLY = PLL_CFG_LUT[fbdiv-25][4];
	APLL_CFG.bitfield.LOCK_CNT = PLL_CFG_LUT[fbdiv-25][5];
	Xil_Out32(APLL_CFG_ADDR, APLL_CFG.data);

	APLL_CTRL.data = Xil_In32(APLL_CTRL_ADDR);
	APLL_CTRL.bitfield.BYPASS = 0x1;
	Xil_Out32(APLL_CTRL_ADDR, APLL_CTRL.data);

	APLL_CTRL.data = Xil_In32(APLL_CTRL_ADDR);
	APLL_CTRL.bitfield.RESET = 0x1;
	Xil_Out32(APLL_CTRL_ADDR, APLL_CTRL.data);

	APLL_CTRL.data = Xil_In32(APLL_CTRL_ADDR);
	APLL_CTRL.bitfield.RESET = 0x0;
	Xil_Out32(APLL_CTRL_ADDR, APLL_CTRL.data);

	PLL_STATUS.data = Xil_In32(PLL_STATUS_ADDR);
	while (PLL_STATUS.bitfield.APLL_LOCK == 0) {
		PLL_STATUS.data = Xil_In32(PLL_STATUS_ADDR);
		for (int i=0; i<100; i++){ }
	}

	APLL_CTRL.data = Xil_In32(APLL_CTRL_ADDR);
	APLL_CTRL.bitfield.BYPASS = 0x0;
	Xil_Out32(APLL_CTRL_ADDR, APLL_CTRL.data);

	return;
}


void measure() {
	int KK = 149963435; // 1s at 1200M
	for (int i=0; i<3; i++) {
		xil_printf("Time start\n\r");
		for (int j=0; j<KK; j++) {
		}
		xil_printf("%d\n\r", i);
	}
	return;
}


int main()
{
    init_platform();


    print("Hello World\n\r");
    measure(0);

    for (u16 f=0x48; f>= 0x24; f--) {
		xil_printf("Freq = %d\n\r", f);
        set_frequency(f);
        measure();
    }

    set_frequency(0x48);
    measure();

    set_frequency(0x24);
    measure();

    set_frequency(0x3C);
    measure();

    cleanup_platform();
    return 0;
}


