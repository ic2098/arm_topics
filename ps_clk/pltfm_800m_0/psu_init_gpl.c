/******************************************************************************
*
* Copyright (C) 2015 Xilinx, Inc.  All rights reserved.
*
*  This program is free software; you can redistribute it and/or modify
*  it under the terms of the GNU General Public License as published by
*  the Free Software Foundation; either version 2 of the License, or
*  (at your option) any later version.
*
*  This program is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU General Public License for more details.
*
*  You should have received a copy of the GNU General Public License along
*  with this program; if not, see <http://www.gnu.org/licenses/>
*
*
******************************************************************************/

#include <xil_io.h>
#include <sleep.h>
#include "psu_init_gpl.h"
#define    DPLL_CFG_LOCK_DLY        63
#define    DPLL_CFG_LOCK_CNT        625
#define    DPLL_CFG_LFHF            3
#define    DPLL_CFG_CP              3
#define    DPLL_CFG_RES             2

static int mask_pollOnValue(u32 add, u32 mask, u32 value);

static int mask_poll(u32 add, u32 mask);

static void mask_delay(u32 delay);

static u32 mask_read(u32 add, u32 mask);

static void dpll_prog(int ddr_pll_fbdiv, int d_lock_dly,
	int d_lock_cnt, int d_lfhf, int d_cp, int d_res);

static
void PSU_Mask_Write(unsigned long offset, unsigned long mask,
	unsigned long val)
{
	unsigned long RegVal = 0x0;

	RegVal = Xil_In32(offset);
	RegVal &= ~(mask);
	RegVal |= (val & mask);
	Xil_Out32(offset, RegVal);
}

static
void prog_reg(unsigned long addr, unsigned long mask,
	unsigned long shift,
		unsigned long value)
{
	    int rdata = 0;

	    rdata  = Xil_In32(addr);
	    rdata  = rdata & (~mask);
	    rdata  = rdata | (value << shift);
	    Xil_Out32(addr, rdata);
	    }

unsigned long psu_pll_init_data(void)
{
    /*
    * RPLL INIT
    */
    /*
    * Register : RPLL_CFG @ 0XFF5E0034

    * PLL loop filter resistor control
    *  PSU_CRL_APB_RPLL_CFG_RES                                    0x2

    * PLL charge pump control
    *  PSU_CRL_APB_RPLL_CFG_CP                                     0x4

    * PLL loop filter high frequency capacitor control
    *  PSU_CRL_APB_RPLL_CFG_LFHF                                   0x3

    * Lock circuit counter setting
    *  PSU_CRL_APB_RPLL_CFG_LOCK_CNT                               0x258

    * Lock circuit configuration settings for lock windowsize
    *  PSU_CRL_APB_RPLL_CFG_LOCK_DLY                               0x3f

    * Helper data. Values are to be looked up in a table from Data Sheet
    * (OFFSET, MASK, VALUE)      (0XFF5E0034, 0xFE7FEDEFU ,0x7E4B0C82U)
    */
	PSU_Mask_Write(CRL_APB_RPLL_CFG_OFFSET, 0xFE7FEDEFU, 0x7E4B0C82U);
/*##################################################################### */

    /*
    * UPDATE FB_DIV
    */
    /*
    * Register : RPLL_CTRL @ 0XFF5E0030

    * Mux select for determining which clock feeds this PLL. 0XX pss_ref_clk i
    * s the source 100 video clk is the source 101 pss_alt_ref_clk is the sour
    * ce 110 aux_refclk[X] is the source 111 gt_crx_ref_clk is the source
    *  PSU_CRL_APB_RPLL_CTRL_PRE_SRC                               0x0

    * The integer portion of the feedback divider to the PLL
    *  PSU_CRL_APB_RPLL_CTRL_FBDIV                                 0x5a

    * This turns on the divide by 2 that is inside of the PLL. This does not c
    * hange the VCO frequency, just the output frequency
    *  PSU_CRL_APB_RPLL_CTRL_DIV2                                  0x1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFF5E0030, 0x00717F00U ,0x00015A00U)
    */
	PSU_Mask_Write(CRL_APB_RPLL_CTRL_OFFSET, 0x00717F00U, 0x00015A00U);
/*##################################################################### */

    /*
    * BY PASS PLL
    */
    /*
    * Register : RPLL_CTRL @ 0XFF5E0030

    * Bypasses the PLL clock. The usable clock will be determined from the POS
    * T_SRC field. (This signal may only be toggled after 4 cycles of the old
    * clock and 4 cycles of the new clock. This is not usually an issue, but d
    * esigners must be aware.)
    *  PSU_CRL_APB_RPLL_CTRL_BYPASS                                1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFF5E0030, 0x00000008U ,0x00000008U)
    */
	PSU_Mask_Write(CRL_APB_RPLL_CTRL_OFFSET, 0x00000008U, 0x00000008U);
/*##################################################################### */

    /*
    * ASSERT RESET
    */
    /*
    * Register : RPLL_CTRL @ 0XFF5E0030

    * Asserts Reset to the PLL. When asserting reset, the PLL must already be
    * in BYPASS.
    *  PSU_CRL_APB_RPLL_CTRL_RESET                                 1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFF5E0030, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(CRL_APB_RPLL_CTRL_OFFSET, 0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * DEASSERT RESET
    */
    /*
    * Register : RPLL_CTRL @ 0XFF5E0030

    * Asserts Reset to the PLL. When asserting reset, the PLL must already be
    * in BYPASS.
    *  PSU_CRL_APB_RPLL_CTRL_RESET                                 0

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFF5E0030, 0x00000001U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RPLL_CTRL_OFFSET, 0x00000001U, 0x00000000U);
/*##################################################################### */

    /*
    * CHECK PLL STATUS
    */
    /*
    * Register : PLL_STATUS @ 0XFF5E0040

    * RPLL is locked
    *  PSU_CRL_APB_PLL_STATUS_RPLL_LOCK                            1
    * (OFFSET, MASK, VALUE)      (0XFF5E0040, 0x00000002U ,0x00000002U)
		*/
	mask_poll(CRL_APB_PLL_STATUS_OFFSET, 0x00000002U);

/*##################################################################### */

    /*
    * REMOVE PLL BY PASS
    */
    /*
    * Register : RPLL_CTRL @ 0XFF5E0030

    * Bypasses the PLL clock. The usable clock will be determined from the POS
    * T_SRC field. (This signal may only be toggled after 4 cycles of the old
    * clock and 4 cycles of the new clock. This is not usually an issue, but d
    * esigners must be aware.)
    *  PSU_CRL_APB_RPLL_CTRL_BYPASS                                0

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFF5E0030, 0x00000008U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RPLL_CTRL_OFFSET, 0x00000008U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : RPLL_TO_FPD_CTRL @ 0XFF5E0048

    * Divisor value for this clock.
    *  PSU_CRL_APB_RPLL_TO_FPD_CTRL_DIVISOR0                       0x3

    * Control for a clock that will be generated in the LPD, but used in the F
    * PD as a clock source for the peripheral clock muxes.
    * (OFFSET, MASK, VALUE)      (0XFF5E0048, 0x00003F00U ,0x00000300U)
    */
	PSU_Mask_Write(CRL_APB_RPLL_TO_FPD_CTRL_OFFSET,
		0x00003F00U, 0x00000300U);
/*##################################################################### */

    /*
    * RPLL FRAC CFG
    */
    /*
    * Register : RPLL_FRAC_CFG @ 0XFF5E0038

    * Fractional SDM bypass control. When 0, PLL is in integer mode and it ign
    * ores all fractional data. When 1, PLL is in fractional mode and uses DAT
    * A of this register for the fractional portion of the feedback divider.
    *  PSU_CRL_APB_RPLL_FRAC_CFG_ENABLED                           0x1

    * Fractional value for the Feedback value.
    *  PSU_CRL_APB_RPLL_FRAC_CFG_DATA                              0x0

    * Fractional control for the PLL
    * (OFFSET, MASK, VALUE)      (0XFF5E0038, 0x8000FFFFU ,0x80000000U)
    */
	PSU_Mask_Write(CRL_APB_RPLL_FRAC_CFG_OFFSET,
		0x8000FFFFU, 0x80000000U);
/*##################################################################### */

    /*
    * SYSMON CLOCK PRESET TO RPLL AGAIN TO AVOID GLITCH WHEN NEXT IOPLL WILL B
    * E PUT IN BYPASS MODE
    */
    /*
    * Register : AMS_REF_CTRL @ 0XFF5E0108

    * 6 bit divider
    *  PSU_CRL_APB_AMS_REF_CTRL_DIVISOR1                           1

    * 6 bit divider
    *  PSU_CRL_APB_AMS_REF_CTRL_DIVISOR0                           35

    * 000 = RPLL; 010 = IOPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_AMS_REF_CTRL_SRCSEL                             0

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_AMS_REF_CTRL_CLKACT                             1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0108, 0x013F3F07U ,0x01012300U)
    */
	PSU_Mask_Write(CRL_APB_AMS_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01012300U);
/*##################################################################### */

    /*
    * IOPLL INIT
    */
    /*
    * Register : IOPLL_CFG @ 0XFF5E0024

    * PLL loop filter resistor control
    *  PSU_CRL_APB_IOPLL_CFG_RES                                   0x2

    * PLL charge pump control
    *  PSU_CRL_APB_IOPLL_CFG_CP                                    0x4

    * PLL loop filter high frequency capacitor control
    *  PSU_CRL_APB_IOPLL_CFG_LFHF                                  0x3

    * Lock circuit counter setting
    *  PSU_CRL_APB_IOPLL_CFG_LOCK_CNT                              0x258

    * Lock circuit configuration settings for lock windowsize
    *  PSU_CRL_APB_IOPLL_CFG_LOCK_DLY                              0x3f

    * Helper data. Values are to be looked up in a table from Data Sheet
    * (OFFSET, MASK, VALUE)      (0XFF5E0024, 0xFE7FEDEFU ,0x7E4B0C82U)
    */
	PSU_Mask_Write(CRL_APB_IOPLL_CFG_OFFSET, 0xFE7FEDEFU, 0x7E4B0C82U);
/*##################################################################### */

    /*
    * UPDATE FB_DIV
    */
    /*
    * Register : IOPLL_CTRL @ 0XFF5E0020

    * Mux select for determining which clock feeds this PLL. 0XX pss_ref_clk i
    * s the source 100 video clk is the source 101 pss_alt_ref_clk is the sour
    * ce 110 aux_refclk[X] is the source 111 gt_crx_ref_clk is the source
    *  PSU_CRL_APB_IOPLL_CTRL_PRE_SRC                              0x0

    * The integer portion of the feedback divider to the PLL
    *  PSU_CRL_APB_IOPLL_CTRL_FBDIV                                0x5a

    * This turns on the divide by 2 that is inside of the PLL. This does not c
    * hange the VCO frequency, just the output frequency
    *  PSU_CRL_APB_IOPLL_CTRL_DIV2                                 0x1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFF5E0020, 0x00717F00U ,0x00015A00U)
    */
	PSU_Mask_Write(CRL_APB_IOPLL_CTRL_OFFSET, 0x00717F00U, 0x00015A00U);
/*##################################################################### */

    /*
    * BY PASS PLL
    */
    /*
    * Register : IOPLL_CTRL @ 0XFF5E0020

    * Bypasses the PLL clock. The usable clock will be determined from the POS
    * T_SRC field. (This signal may only be toggled after 4 cycles of the old
    * clock and 4 cycles of the new clock. This is not usually an issue, but d
    * esigners must be aware.)
    *  PSU_CRL_APB_IOPLL_CTRL_BYPASS                               1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFF5E0020, 0x00000008U ,0x00000008U)
    */
	PSU_Mask_Write(CRL_APB_IOPLL_CTRL_OFFSET, 0x00000008U, 0x00000008U);
/*##################################################################### */

    /*
    * ASSERT RESET
    */
    /*
    * Register : IOPLL_CTRL @ 0XFF5E0020

    * Asserts Reset to the PLL. When asserting reset, the PLL must already be
    * in BYPASS.
    *  PSU_CRL_APB_IOPLL_CTRL_RESET                                1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFF5E0020, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(CRL_APB_IOPLL_CTRL_OFFSET, 0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * DEASSERT RESET
    */
    /*
    * Register : IOPLL_CTRL @ 0XFF5E0020

    * Asserts Reset to the PLL. When asserting reset, the PLL must already be
    * in BYPASS.
    *  PSU_CRL_APB_IOPLL_CTRL_RESET                                0

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFF5E0020, 0x00000001U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_IOPLL_CTRL_OFFSET, 0x00000001U, 0x00000000U);
/*##################################################################### */

    /*
    * CHECK PLL STATUS
    */
    /*
    * Register : PLL_STATUS @ 0XFF5E0040

    * IOPLL is locked
    *  PSU_CRL_APB_PLL_STATUS_IOPLL_LOCK                           1
    * (OFFSET, MASK, VALUE)      (0XFF5E0040, 0x00000001U ,0x00000001U)
		*/
	mask_poll(CRL_APB_PLL_STATUS_OFFSET, 0x00000001U);

/*##################################################################### */

    /*
    * REMOVE PLL BY PASS
    */
    /*
    * Register : IOPLL_CTRL @ 0XFF5E0020

    * Bypasses the PLL clock. The usable clock will be determined from the POS
    * T_SRC field. (This signal may only be toggled after 4 cycles of the old
    * clock and 4 cycles of the new clock. This is not usually an issue, but d
    * esigners must be aware.)
    *  PSU_CRL_APB_IOPLL_CTRL_BYPASS                               0

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFF5E0020, 0x00000008U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_IOPLL_CTRL_OFFSET, 0x00000008U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : IOPLL_TO_FPD_CTRL @ 0XFF5E0044

    * Divisor value for this clock.
    *  PSU_CRL_APB_IOPLL_TO_FPD_CTRL_DIVISOR0                      0x3

    * Control for a clock that will be generated in the LPD, but used in the F
    * PD as a clock source for the peripheral clock muxes.
    * (OFFSET, MASK, VALUE)      (0XFF5E0044, 0x00003F00U ,0x00000300U)
    */
	PSU_Mask_Write(CRL_APB_IOPLL_TO_FPD_CTRL_OFFSET,
		0x00003F00U, 0x00000300U);
/*##################################################################### */

    /*
    * IOPLL FRAC CFG
    */
    /*
    * Register : IOPLL_FRAC_CFG @ 0XFF5E0028

    * Fractional SDM bypass control. When 0, PLL is in integer mode and it ign
    * ores all fractional data. When 1, PLL is in fractional mode and uses DAT
    * A of this register for the fractional portion of the feedback divider.
    *  PSU_CRL_APB_IOPLL_FRAC_CFG_ENABLED                          0x0

    * Fractional value for the Feedback value.
    *  PSU_CRL_APB_IOPLL_FRAC_CFG_DATA                             0x0

    * Fractional control for the PLL
    * (OFFSET, MASK, VALUE)      (0XFF5E0028, 0x8000FFFFU ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_IOPLL_FRAC_CFG_OFFSET,
		0x8000FFFFU, 0x00000000U);
/*##################################################################### */

    /*
    * APU_PLL INIT
    */
    /*
    * Register : APLL_CFG @ 0XFD1A0024

    * PLL loop filter resistor control
    *  PSU_CRF_APB_APLL_CFG_RES                                    0xc

    * PLL charge pump control
    *  PSU_CRF_APB_APLL_CFG_CP                                     0x3

    * PLL loop filter high frequency capacitor control
    *  PSU_CRF_APB_APLL_CFG_LFHF                                   0x3

    * Lock circuit counter setting
    *  PSU_CRF_APB_APLL_CFG_LOCK_CNT                               0x307

    * Lock circuit configuration settings for lock windowsize
    *  PSU_CRF_APB_APLL_CFG_LOCK_DLY                               0x3f

    * Helper data. Values are to be looked up in a table from Data Sheet
    * (OFFSET, MASK, VALUE)      (0XFD1A0024, 0xFE7FEDEFU ,0x7E60EC6CU)
    */
	PSU_Mask_Write(CRF_APB_APLL_CFG_OFFSET, 0xFE7FEDEFU, 0x7E60EC6CU);
/*##################################################################### */

    /*
    * UPDATE FB_DIV
    */
    /*
    * Register : APLL_CTRL @ 0XFD1A0020

    * Mux select for determining which clock feeds this PLL. 0XX pss_ref_clk i
    * s the source 100 video clk is the source 101 pss_alt_ref_clk is the sour
    * ce 110 aux_refclk[X] is the source 111 gt_crx_ref_clk is the source
    *  PSU_CRF_APB_APLL_CTRL_PRE_SRC                               0x0

    * The integer portion of the feedback divider to the PLL
    *  PSU_CRF_APB_APLL_CTRL_FBDIV                                 0x30

    * This turns on the divide by 2 that is inside of the PLL. This does not c
    * hange the VCO frequency, just the output frequency
    *  PSU_CRF_APB_APLL_CTRL_DIV2                                  0x1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A0020, 0x00717F00U ,0x00013000U)
    */
	PSU_Mask_Write(CRF_APB_APLL_CTRL_OFFSET, 0x00717F00U, 0x00013000U);
/*##################################################################### */

    /*
    * BY PASS PLL
    */
    /*
    * Register : APLL_CTRL @ 0XFD1A0020

    * Bypasses the PLL clock. The usable clock will be determined from the POS
    * T_SRC field. (This signal may only be toggled after 4 cycles of the old
    * clock and 4 cycles of the new clock. This is not usually an issue, but d
    * esigners must be aware.)
    *  PSU_CRF_APB_APLL_CTRL_BYPASS                                1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A0020, 0x00000008U ,0x00000008U)
    */
	PSU_Mask_Write(CRF_APB_APLL_CTRL_OFFSET, 0x00000008U, 0x00000008U);
/*##################################################################### */

    /*
    * ASSERT RESET
    */
    /*
    * Register : APLL_CTRL @ 0XFD1A0020

    * Asserts Reset to the PLL. When asserting reset, the PLL must already be
    * in BYPASS.
    *  PSU_CRF_APB_APLL_CTRL_RESET                                 1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A0020, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(CRF_APB_APLL_CTRL_OFFSET, 0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * DEASSERT RESET
    */
    /*
    * Register : APLL_CTRL @ 0XFD1A0020

    * Asserts Reset to the PLL. When asserting reset, the PLL must already be
    * in BYPASS.
    *  PSU_CRF_APB_APLL_CTRL_RESET                                 0

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A0020, 0x00000001U ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_APLL_CTRL_OFFSET, 0x00000001U, 0x00000000U);
/*##################################################################### */

    /*
    * CHECK PLL STATUS
    */
    /*
    * Register : PLL_STATUS @ 0XFD1A0044

    * APLL is locked
    *  PSU_CRF_APB_PLL_STATUS_APLL_LOCK                            1
    * (OFFSET, MASK, VALUE)      (0XFD1A0044, 0x00000001U ,0x00000001U)
		*/
	mask_poll(CRF_APB_PLL_STATUS_OFFSET, 0x00000001U);

/*##################################################################### */

    /*
    * REMOVE PLL BY PASS
    */
    /*
    * Register : APLL_CTRL @ 0XFD1A0020

    * Bypasses the PLL clock. The usable clock will be determined from the POS
    * T_SRC field. (This signal may only be toggled after 4 cycles of the old
    * clock and 4 cycles of the new clock. This is not usually an issue, but d
    * esigners must be aware.)
    *  PSU_CRF_APB_APLL_CTRL_BYPASS                                0

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A0020, 0x00000008U ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_APLL_CTRL_OFFSET, 0x00000008U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : APLL_TO_LPD_CTRL @ 0XFD1A0048

    * Divisor value for this clock.
    *  PSU_CRF_APB_APLL_TO_LPD_CTRL_DIVISOR0                       0x3

    * Control for a clock that will be generated in the FPD, but used in the L
    * PD as a clock source for the peripheral clock muxes.
    * (OFFSET, MASK, VALUE)      (0XFD1A0048, 0x00003F00U ,0x00000300U)
    */
	PSU_Mask_Write(CRF_APB_APLL_TO_LPD_CTRL_OFFSET,
		0x00003F00U, 0x00000300U);
/*##################################################################### */

    /*
    * APLL FRAC CFG
    */
    /*
    * Register : APLL_FRAC_CFG @ 0XFD1A0028

    * Fractional SDM bypass control. When 0, PLL is in integer mode and it ign
    * ores all fractional data. When 1, PLL is in fractional mode and uses DAT
    * A of this register for the fractional portion of the feedback divider.
    *  PSU_CRF_APB_APLL_FRAC_CFG_ENABLED                           0x0

    * Fractional value for the Feedback value.
    *  PSU_CRF_APB_APLL_FRAC_CFG_DATA                              0x0

    * Fractional control for the PLL
    * (OFFSET, MASK, VALUE)      (0XFD1A0028, 0x8000FFFFU ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_APLL_FRAC_CFG_OFFSET,
		0x8000FFFFU, 0x00000000U);
/*##################################################################### */

    /*
    * DDR_PLL INIT
    */
    /*
    * Register : DPLL_CFG @ 0XFD1A0030

    * PLL loop filter resistor control
    *  PSU_CRF_APB_DPLL_CFG_RES                                    0x2

    * PLL charge pump control
    *  PSU_CRF_APB_DPLL_CFG_CP                                     0x3

    * PLL loop filter high frequency capacitor control
    *  PSU_CRF_APB_DPLL_CFG_LFHF                                   0x3

    * Lock circuit counter setting
    *  PSU_CRF_APB_DPLL_CFG_LOCK_CNT                               0x258

    * Lock circuit configuration settings for lock windowsize
    *  PSU_CRF_APB_DPLL_CFG_LOCK_DLY                               0x3f

    * Helper data. Values are to be looked up in a table from Data Sheet
    * (OFFSET, MASK, VALUE)      (0XFD1A0030, 0xFE7FEDEFU ,0x7E4B0C62U)
    */
	PSU_Mask_Write(CRF_APB_DPLL_CFG_OFFSET, 0xFE7FEDEFU, 0x7E4B0C62U);
/*##################################################################### */

    /*
    * UPDATE FB_DIV
    */
    /*
    * Register : DPLL_CTRL @ 0XFD1A002C

    * Mux select for determining which clock feeds this PLL. 0XX pss_ref_clk i
    * s the source 100 video clk is the source 101 pss_alt_ref_clk is the sour
    * ce 110 aux_refclk[X] is the source 111 gt_crx_ref_clk is the source
    *  PSU_CRF_APB_DPLL_CTRL_PRE_SRC                               0x0

    * The integer portion of the feedback divider to the PLL
    *  PSU_CRF_APB_DPLL_CTRL_FBDIV                                 0x3f

    * This turns on the divide by 2 that is inside of the PLL. This does not c
    * hange the VCO frequency, just the output frequency
    *  PSU_CRF_APB_DPLL_CTRL_DIV2                                  0x1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A002C, 0x00717F00U ,0x00013F00U)
    */
	PSU_Mask_Write(CRF_APB_DPLL_CTRL_OFFSET, 0x00717F00U, 0x00013F00U);
/*##################################################################### */

    /*
    * BY PASS PLL
    */
    /*
    * Register : DPLL_CTRL @ 0XFD1A002C

    * Bypasses the PLL clock. The usable clock will be determined from the POS
    * T_SRC field. (This signal may only be toggled after 4 cycles of the old
    * clock and 4 cycles of the new clock. This is not usually an issue, but d
    * esigners must be aware.)
    *  PSU_CRF_APB_DPLL_CTRL_BYPASS                                1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A002C, 0x00000008U ,0x00000008U)
    */
	PSU_Mask_Write(CRF_APB_DPLL_CTRL_OFFSET, 0x00000008U, 0x00000008U);
/*##################################################################### */

    /*
    * ASSERT RESET
    */
    /*
    * Register : DPLL_CTRL @ 0XFD1A002C

    * Asserts Reset to the PLL. When asserting reset, the PLL must already be
    * in BYPASS.
    *  PSU_CRF_APB_DPLL_CTRL_RESET                                 1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A002C, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(CRF_APB_DPLL_CTRL_OFFSET, 0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * DEASSERT RESET
    */
    /*
    * Register : DPLL_CTRL @ 0XFD1A002C

    * Asserts Reset to the PLL. When asserting reset, the PLL must already be
    * in BYPASS.
    *  PSU_CRF_APB_DPLL_CTRL_RESET                                 0

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A002C, 0x00000001U ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_DPLL_CTRL_OFFSET, 0x00000001U, 0x00000000U);
/*##################################################################### */

    /*
    * CHECK PLL STATUS
    */
    /*
    * Register : PLL_STATUS @ 0XFD1A0044

    * DPLL is locked
    *  PSU_CRF_APB_PLL_STATUS_DPLL_LOCK                            1
    * (OFFSET, MASK, VALUE)      (0XFD1A0044, 0x00000002U ,0x00000002U)
		*/
	mask_poll(CRF_APB_PLL_STATUS_OFFSET, 0x00000002U);

/*##################################################################### */

    /*
    * REMOVE PLL BY PASS
    */
    /*
    * Register : DPLL_CTRL @ 0XFD1A002C

    * Bypasses the PLL clock. The usable clock will be determined from the POS
    * T_SRC field. (This signal may only be toggled after 4 cycles of the old
    * clock and 4 cycles of the new clock. This is not usually an issue, but d
    * esigners must be aware.)
    *  PSU_CRF_APB_DPLL_CTRL_BYPASS                                0

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A002C, 0x00000008U ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_DPLL_CTRL_OFFSET, 0x00000008U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : DPLL_TO_LPD_CTRL @ 0XFD1A004C

    * Divisor value for this clock.
    *  PSU_CRF_APB_DPLL_TO_LPD_CTRL_DIVISOR0                       0x2

    * Control for a clock that will be generated in the FPD, but used in the L
    * PD as a clock source for the peripheral clock muxes.
    * (OFFSET, MASK, VALUE)      (0XFD1A004C, 0x00003F00U ,0x00000200U)
    */
	PSU_Mask_Write(CRF_APB_DPLL_TO_LPD_CTRL_OFFSET,
		0x00003F00U, 0x00000200U);
/*##################################################################### */

    /*
    * DPLL FRAC CFG
    */
    /*
    * Register : DPLL_FRAC_CFG @ 0XFD1A0034

    * Fractional SDM bypass control. When 0, PLL is in integer mode and it ign
    * ores all fractional data. When 1, PLL is in fractional mode and uses DAT
    * A of this register for the fractional portion of the feedback divider.
    *  PSU_CRF_APB_DPLL_FRAC_CFG_ENABLED                           0x0

    * Fractional value for the Feedback value.
    *  PSU_CRF_APB_DPLL_FRAC_CFG_DATA                              0x0

    * Fractional control for the PLL
    * (OFFSET, MASK, VALUE)      (0XFD1A0034, 0x8000FFFFU ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_DPLL_FRAC_CFG_OFFSET,
		0x8000FFFFU, 0x00000000U);
/*##################################################################### */

    /*
    * VIDEO_PLL INIT
    */
    /*
    * Register : VPLL_CFG @ 0XFD1A003C

    * PLL loop filter resistor control
    *  PSU_CRF_APB_VPLL_CFG_RES                                    0x2

    * PLL charge pump control
    *  PSU_CRF_APB_VPLL_CFG_CP                                     0x4

    * PLL loop filter high frequency capacitor control
    *  PSU_CRF_APB_VPLL_CFG_LFHF                                   0x3

    * Lock circuit counter setting
    *  PSU_CRF_APB_VPLL_CFG_LOCK_CNT                               0x258

    * Lock circuit configuration settings for lock windowsize
    *  PSU_CRF_APB_VPLL_CFG_LOCK_DLY                               0x3f

    * Helper data. Values are to be looked up in a table from Data Sheet
    * (OFFSET, MASK, VALUE)      (0XFD1A003C, 0xFE7FEDEFU ,0x7E4B0C82U)
    */
	PSU_Mask_Write(CRF_APB_VPLL_CFG_OFFSET, 0xFE7FEDEFU, 0x7E4B0C82U);
/*##################################################################### */

    /*
    * UPDATE FB_DIV
    */
    /*
    * Register : VPLL_CTRL @ 0XFD1A0038

    * Mux select for determining which clock feeds this PLL. 0XX pss_ref_clk i
    * s the source 100 video clk is the source 101 pss_alt_ref_clk is the sour
    * ce 110 aux_refclk[X] is the source 111 gt_crx_ref_clk is the source
    *  PSU_CRF_APB_VPLL_CTRL_PRE_SRC                               0x0

    * The integer portion of the feedback divider to the PLL
    *  PSU_CRF_APB_VPLL_CTRL_FBDIV                                 0x5a

    * This turns on the divide by 2 that is inside of the PLL. This does not c
    * hange the VCO frequency, just the output frequency
    *  PSU_CRF_APB_VPLL_CTRL_DIV2                                  0x1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A0038, 0x00717F00U ,0x00015A00U)
    */
	PSU_Mask_Write(CRF_APB_VPLL_CTRL_OFFSET, 0x00717F00U, 0x00015A00U);
/*##################################################################### */

    /*
    * BY PASS PLL
    */
    /*
    * Register : VPLL_CTRL @ 0XFD1A0038

    * Bypasses the PLL clock. The usable clock will be determined from the POS
    * T_SRC field. (This signal may only be toggled after 4 cycles of the old
    * clock and 4 cycles of the new clock. This is not usually an issue, but d
    * esigners must be aware.)
    *  PSU_CRF_APB_VPLL_CTRL_BYPASS                                1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A0038, 0x00000008U ,0x00000008U)
    */
	PSU_Mask_Write(CRF_APB_VPLL_CTRL_OFFSET, 0x00000008U, 0x00000008U);
/*##################################################################### */

    /*
    * ASSERT RESET
    */
    /*
    * Register : VPLL_CTRL @ 0XFD1A0038

    * Asserts Reset to the PLL. When asserting reset, the PLL must already be
    * in BYPASS.
    *  PSU_CRF_APB_VPLL_CTRL_RESET                                 1

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A0038, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(CRF_APB_VPLL_CTRL_OFFSET, 0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * DEASSERT RESET
    */
    /*
    * Register : VPLL_CTRL @ 0XFD1A0038

    * Asserts Reset to the PLL. When asserting reset, the PLL must already be
    * in BYPASS.
    *  PSU_CRF_APB_VPLL_CTRL_RESET                                 0

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A0038, 0x00000001U ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_VPLL_CTRL_OFFSET, 0x00000001U, 0x00000000U);
/*##################################################################### */

    /*
    * CHECK PLL STATUS
    */
    /*
    * Register : PLL_STATUS @ 0XFD1A0044

    * VPLL is locked
    *  PSU_CRF_APB_PLL_STATUS_VPLL_LOCK                            1
    * (OFFSET, MASK, VALUE)      (0XFD1A0044, 0x00000004U ,0x00000004U)
		*/
	mask_poll(CRF_APB_PLL_STATUS_OFFSET, 0x00000004U);

/*##################################################################### */

    /*
    * REMOVE PLL BY PASS
    */
    /*
    * Register : VPLL_CTRL @ 0XFD1A0038

    * Bypasses the PLL clock. The usable clock will be determined from the POS
    * T_SRC field. (This signal may only be toggled after 4 cycles of the old
    * clock and 4 cycles of the new clock. This is not usually an issue, but d
    * esigners must be aware.)
    *  PSU_CRF_APB_VPLL_CTRL_BYPASS                                0

    * PLL Basic Control
    * (OFFSET, MASK, VALUE)      (0XFD1A0038, 0x00000008U ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_VPLL_CTRL_OFFSET, 0x00000008U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : VPLL_TO_LPD_CTRL @ 0XFD1A0050

    * Divisor value for this clock.
    *  PSU_CRF_APB_VPLL_TO_LPD_CTRL_DIVISOR0                       0x3

    * Control for a clock that will be generated in the FPD, but used in the L
    * PD as a clock source for the peripheral clock muxes.
    * (OFFSET, MASK, VALUE)      (0XFD1A0050, 0x00003F00U ,0x00000300U)
    */
	PSU_Mask_Write(CRF_APB_VPLL_TO_LPD_CTRL_OFFSET,
		0x00003F00U, 0x00000300U);
/*##################################################################### */

    /*
    * VIDEO FRAC CFG
    */
    /*
    * Register : VPLL_FRAC_CFG @ 0XFD1A0040

    * Fractional SDM bypass control. When 0, PLL is in integer mode and it ign
    * ores all fractional data. When 1, PLL is in fractional mode and uses DAT
    * A of this register for the fractional portion of the feedback divider.
    *  PSU_CRF_APB_VPLL_FRAC_CFG_ENABLED                           0x1

    * Fractional value for the Feedback value.
    *  PSU_CRF_APB_VPLL_FRAC_CFG_DATA                              0x0

    * Fractional control for the PLL
    * (OFFSET, MASK, VALUE)      (0XFD1A0040, 0x8000FFFFU ,0x80000000U)
    */
	PSU_Mask_Write(CRF_APB_VPLL_FRAC_CFG_OFFSET,
		0x8000FFFFU, 0x80000000U);
/*##################################################################### */


	return 1;
}
unsigned long psu_clock_init_data(void)
{
    /*
    * CLOCK CONTROL SLCR REGISTER
    */
    /*
    * Register : USB0_BUS_REF_CTRL @ 0XFF5E0060

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_USB0_BUS_REF_CTRL_CLKACT                        0x1

    * 6 bit divider
    *  PSU_CRL_APB_USB0_BUS_REF_CTRL_DIVISOR1                      0x1

    * 6 bit divider
    *  PSU_CRL_APB_USB0_BUS_REF_CTRL_DIVISOR0                      0x6

    * 000 = IOPLL; 010 = RPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_USB0_BUS_REF_CTRL_SRCSEL                        0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0060, 0x023F3F07U ,0x02010600U)
    */
	PSU_Mask_Write(CRL_APB_USB0_BUS_REF_CTRL_OFFSET,
		0x023F3F07U, 0x02010600U);
/*##################################################################### */

    /*
    * Register : USB1_BUS_REF_CTRL @ 0XFF5E0064

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_USB1_BUS_REF_CTRL_CLKACT                        0x1

    * 6 bit divider
    *  PSU_CRL_APB_USB1_BUS_REF_CTRL_DIVISOR1                      0x1

    * 6 bit divider
    *  PSU_CRL_APB_USB1_BUS_REF_CTRL_DIVISOR0                      0x6

    * 000 = IOPLL; 010 = RPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_USB1_BUS_REF_CTRL_SRCSEL                        0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0064, 0x023F3F07U ,0x02010600U)
    */
	PSU_Mask_Write(CRL_APB_USB1_BUS_REF_CTRL_OFFSET,
		0x023F3F07U, 0x02010600U);
/*##################################################################### */

    /*
    * Register : USB3_DUAL_REF_CTRL @ 0XFF5E004C

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_USB3_DUAL_REF_CTRL_CLKACT                       0x1

    * 6 bit divider
    *  PSU_CRL_APB_USB3_DUAL_REF_CTRL_DIVISOR1                     0x3

    * 6 bit divider
    *  PSU_CRL_APB_USB3_DUAL_REF_CTRL_DIVISOR0                     0x19

    * 000 = IOPLL; 010 = RPLL; 011 = DPLL. (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_USB3_DUAL_REF_CTRL_SRCSEL                       0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E004C, 0x023F3F07U ,0x02031900U)
    */
	PSU_Mask_Write(CRL_APB_USB3_DUAL_REF_CTRL_OFFSET,
		0x023F3F07U, 0x02031900U);
/*##################################################################### */

    /*
    * Register : SDIO0_REF_CTRL @ 0XFF5E006C

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_SDIO0_REF_CTRL_CLKACT                           0x1

    * 6 bit divider
    *  PSU_CRL_APB_SDIO0_REF_CTRL_DIVISOR1                         0x1

    * 6 bit divider
    *  PSU_CRL_APB_SDIO0_REF_CTRL_DIVISOR0                         0x8

    * 000 = IOPLL; 010 = RPLL; 011 = VPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_SDIO0_REF_CTRL_SRCSEL                           0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E006C, 0x013F3F07U ,0x01010800U)
    */
	PSU_Mask_Write(CRL_APB_SDIO0_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01010800U);
/*##################################################################### */

    /*
    * Register : SDIO1_REF_CTRL @ 0XFF5E0070

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_SDIO1_REF_CTRL_CLKACT                           0x1

    * 6 bit divider
    *  PSU_CRL_APB_SDIO1_REF_CTRL_DIVISOR1                         0x1

    * 6 bit divider
    *  PSU_CRL_APB_SDIO1_REF_CTRL_DIVISOR0                         0x8

    * 000 = IOPLL; 010 = RPLL; 011 = VPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_SDIO1_REF_CTRL_SRCSEL                           0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0070, 0x013F3F07U ,0x01010800U)
    */
	PSU_Mask_Write(CRL_APB_SDIO1_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01010800U);
/*##################################################################### */

    /*
    * Register : SDIO_CLK_CTRL @ 0XFF18030C

    * MIO pad selection for sdio0_rx_clk (feedback clock from the PAD) 00: MIO
    *  [22] 01: MIO [38] 10: MIO [64] 11: MIO [64]
    *  PSU_IOU_SLCR_SDIO_CLK_CTRL_SDIO0_RX_SRC_SEL                 0

    * MIO pad selection for sdio1_rx_clk (feedback clock from the PAD) 0: MIO
    * [51] 1: MIO [76]
    *  PSU_IOU_SLCR_SDIO_CLK_CTRL_SDIO1_RX_SRC_SEL                 0

    * SoC Debug Clock Control
    * (OFFSET, MASK, VALUE)      (0XFF18030C, 0x00020003U ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_SDIO_CLK_CTRL_OFFSET,
		0x00020003U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : UART0_REF_CTRL @ 0XFF5E0074

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_UART0_REF_CTRL_CLKACT                           0x1

    * 6 bit divider
    *  PSU_CRL_APB_UART0_REF_CTRL_DIVISOR1                         0x1

    * 6 bit divider
    *  PSU_CRL_APB_UART0_REF_CTRL_DIVISOR0                         0xf

    * 000 = IOPLL; 010 = RPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_UART0_REF_CTRL_SRCSEL                           0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0074, 0x013F3F07U ,0x01010F00U)
    */
	PSU_Mask_Write(CRL_APB_UART0_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01010F00U);
/*##################################################################### */

    /*
    * Register : UART1_REF_CTRL @ 0XFF5E0078

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_UART1_REF_CTRL_CLKACT                           0x1

    * 6 bit divider
    *  PSU_CRL_APB_UART1_REF_CTRL_DIVISOR1                         0x1

    * 6 bit divider
    *  PSU_CRL_APB_UART1_REF_CTRL_DIVISOR0                         0xf

    * 000 = IOPLL; 010 = RPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_UART1_REF_CTRL_SRCSEL                           0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0078, 0x013F3F07U ,0x01010F00U)
    */
	PSU_Mask_Write(CRL_APB_UART1_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01010F00U);
/*##################################################################### */

    /*
    * Register : I2C1_REF_CTRL @ 0XFF5E0124

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_I2C1_REF_CTRL_CLKACT                            0x1

    * 6 bit divider
    *  PSU_CRL_APB_I2C1_REF_CTRL_DIVISOR1                          0x1

    * 6 bit divider
    *  PSU_CRL_APB_I2C1_REF_CTRL_DIVISOR0                          0xf

    * 000 = IOPLL; 010 = RPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_I2C1_REF_CTRL_SRCSEL                            0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0124, 0x013F3F07U ,0x01010F00U)
    */
	PSU_Mask_Write(CRL_APB_I2C1_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01010F00U);
/*##################################################################### */

    /*
    * Register : SPI0_REF_CTRL @ 0XFF5E007C

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_SPI0_REF_CTRL_CLKACT                            0x1

    * 6 bit divider
    *  PSU_CRL_APB_SPI0_REF_CTRL_DIVISOR1                          0x1

    * 6 bit divider
    *  PSU_CRL_APB_SPI0_REF_CTRL_DIVISOR0                          0x8

    * 000 = IOPLL; 010 = RPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_SPI0_REF_CTRL_SRCSEL                            0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E007C, 0x013F3F07U ,0x01010800U)
    */
	PSU_Mask_Write(CRL_APB_SPI0_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01010800U);
/*##################################################################### */

    /*
    * Register : SPI1_REF_CTRL @ 0XFF5E0080

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_SPI1_REF_CTRL_CLKACT                            0x1

    * 6 bit divider
    *  PSU_CRL_APB_SPI1_REF_CTRL_DIVISOR1                          0x1

    * 6 bit divider
    *  PSU_CRL_APB_SPI1_REF_CTRL_DIVISOR0                          0x8

    * 000 = IOPLL; 010 = RPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_SPI1_REF_CTRL_SRCSEL                            0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0080, 0x013F3F07U ,0x01010800U)
    */
	PSU_Mask_Write(CRL_APB_SPI1_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01010800U);
/*##################################################################### */

    /*
    * Register : CPU_R5_CTRL @ 0XFF5E0090

    * Turing this off will shut down the OCM, some parts of the APM, and preve
    * nt transactions going from the FPD to the LPD and could lead to system h
    * ang
    *  PSU_CRL_APB_CPU_R5_CTRL_CLKACT                              0x1

    * 6 bit divider
    *  PSU_CRL_APB_CPU_R5_CTRL_DIVISOR0                            0x3

    * 000 = RPLL; 010 = IOPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_CPU_R5_CTRL_SRCSEL                              0x2

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0090, 0x01003F07U ,0x01000302U)
    */
	PSU_Mask_Write(CRL_APB_CPU_R5_CTRL_OFFSET, 0x01003F07U, 0x01000302U);
/*##################################################################### */

    /*
    * Register : IOU_SWITCH_CTRL @ 0XFF5E009C

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_IOU_SWITCH_CTRL_CLKACT                          0x1

    * 6 bit divider
    *  PSU_CRL_APB_IOU_SWITCH_CTRL_DIVISOR0                        0x6

    * 000 = RPLL; 010 = IOPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_IOU_SWITCH_CTRL_SRCSEL                          0x2

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E009C, 0x01003F07U ,0x01000602U)
    */
	PSU_Mask_Write(CRL_APB_IOU_SWITCH_CTRL_OFFSET,
		0x01003F07U, 0x01000602U);
/*##################################################################### */

    /*
    * Register : PCAP_CTRL @ 0XFF5E00A4

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_PCAP_CTRL_CLKACT                                0x1

    * 6 bit divider
    *  PSU_CRL_APB_PCAP_CTRL_DIVISOR0                              0x8

    * 000 = IOPLL; 010 = RPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_PCAP_CTRL_SRCSEL                                0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E00A4, 0x01003F07U ,0x01000800U)
    */
	PSU_Mask_Write(CRL_APB_PCAP_CTRL_OFFSET, 0x01003F07U, 0x01000800U);
/*##################################################################### */

    /*
    * Register : LPD_SWITCH_CTRL @ 0XFF5E00A8

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_LPD_SWITCH_CTRL_CLKACT                          0x1

    * 6 bit divider
    *  PSU_CRL_APB_LPD_SWITCH_CTRL_DIVISOR0                        0x3

    * 000 = RPLL; 010 = IOPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_LPD_SWITCH_CTRL_SRCSEL                          0x2

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E00A8, 0x01003F07U ,0x01000302U)
    */
	PSU_Mask_Write(CRL_APB_LPD_SWITCH_CTRL_OFFSET,
		0x01003F07U, 0x01000302U);
/*##################################################################### */

    /*
    * Register : LPD_LSBUS_CTRL @ 0XFF5E00AC

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_LPD_LSBUS_CTRL_CLKACT                           0x1

    * 6 bit divider
    *  PSU_CRL_APB_LPD_LSBUS_CTRL_DIVISOR0                         0xf

    * 000 = RPLL; 010 = IOPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_LPD_LSBUS_CTRL_SRCSEL                           0x2

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E00AC, 0x01003F07U ,0x01000F02U)
    */
	PSU_Mask_Write(CRL_APB_LPD_LSBUS_CTRL_OFFSET,
		0x01003F07U, 0x01000F02U);
/*##################################################################### */

    /*
    * Register : DBG_LPD_CTRL @ 0XFF5E00B0

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_DBG_LPD_CTRL_CLKACT                             0x1

    * 6 bit divider
    *  PSU_CRL_APB_DBG_LPD_CTRL_DIVISOR0                           0x6

    * 000 = RPLL; 010 = IOPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_DBG_LPD_CTRL_SRCSEL                             0x2

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E00B0, 0x01003F07U ,0x01000602U)
    */
	PSU_Mask_Write(CRL_APB_DBG_LPD_CTRL_OFFSET,
		0x01003F07U, 0x01000602U);
/*##################################################################### */

    /*
    * Register : ADMA_REF_CTRL @ 0XFF5E00B8

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_ADMA_REF_CTRL_CLKACT                            0x1

    * 6 bit divider
    *  PSU_CRL_APB_ADMA_REF_CTRL_DIVISOR0                          0x3

    * 000 = RPLL; 010 = IOPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_ADMA_REF_CTRL_SRCSEL                            0x2

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E00B8, 0x01003F07U ,0x01000302U)
    */
	PSU_Mask_Write(CRL_APB_ADMA_REF_CTRL_OFFSET,
		0x01003F07U, 0x01000302U);
/*##################################################################### */

    /*
    * Register : PL0_REF_CTRL @ 0XFF5E00C0

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_PL0_REF_CTRL_CLKACT                             0x1

    * 6 bit divider
    *  PSU_CRL_APB_PL0_REF_CTRL_DIVISOR1                           0x1

    * 6 bit divider
    *  PSU_CRL_APB_PL0_REF_CTRL_DIVISOR0                           0xf

    * 000 = IOPLL; 010 = RPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_PL0_REF_CTRL_SRCSEL                             0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E00C0, 0x013F3F07U ,0x01010F00U)
    */
	PSU_Mask_Write(CRL_APB_PL0_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01010F00U);
/*##################################################################### */

    /*
    * Register : AMS_REF_CTRL @ 0XFF5E0108

    * 6 bit divider
    *  PSU_CRL_APB_AMS_REF_CTRL_DIVISOR1                           0x1

    * 6 bit divider
    *  PSU_CRL_APB_AMS_REF_CTRL_DIVISOR0                           0x1e

    * 000 = RPLL; 010 = IOPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_AMS_REF_CTRL_SRCSEL                             0x2

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_AMS_REF_CTRL_CLKACT                             0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0108, 0x013F3F07U ,0x01011E02U)
    */
	PSU_Mask_Write(CRL_APB_AMS_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01011E02U);
/*##################################################################### */

    /*
    * Register : DLL_REF_CTRL @ 0XFF5E0104

    * 000 = IOPLL; 001 = RPLL; (This signal may only be toggled after 4 cycles
    *  of the old clock and 4 cycles of the new clock. This is not usually an
    * issue, but designers must be aware.)
    *  PSU_CRL_APB_DLL_REF_CTRL_SRCSEL                             0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0104, 0x00000007U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_DLL_REF_CTRL_OFFSET,
		0x00000007U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : TIMESTAMP_REF_CTRL @ 0XFF5E0128

    * 6 bit divider
    *  PSU_CRL_APB_TIMESTAMP_REF_CTRL_DIVISOR0                     0xf

    * 1XX = pss_ref_clk; 000 = IOPLL; 010 = RPLL; 011 = DPLL; (This signal may
    *  only be toggled after 4 cycles of the old clock and 4 cycles of the new
    *  clock. This is not usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_TIMESTAMP_REF_CTRL_SRCSEL                       0x0

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_TIMESTAMP_REF_CTRL_CLKACT                       0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0128, 0x01003F07U ,0x01000F00U)
    */
	PSU_Mask_Write(CRL_APB_TIMESTAMP_REF_CTRL_OFFSET,
		0x01003F07U, 0x01000F00U);
/*##################################################################### */

    /*
    * Register : DP_VIDEO_REF_CTRL @ 0XFD1A0070

    * 6 bit divider
    *  PSU_CRF_APB_DP_VIDEO_REF_CTRL_DIVISOR1                      0x1

    * 6 bit divider
    *  PSU_CRF_APB_DP_VIDEO_REF_CTRL_DIVISOR0                      0x5

    * 000 = VPLL; 010 = DPLL; 011 = RPLL_TO_FPD - might be using extra mux; (T
    * his signal may only be toggled after 4 cycles of the old clock and 4 cyc
    * les of the new clock. This is not usually an issue, but designers must b
    * e aware.)
    *  PSU_CRF_APB_DP_VIDEO_REF_CTRL_SRCSEL                        0x0

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRF_APB_DP_VIDEO_REF_CTRL_CLKACT                        0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A0070, 0x013F3F07U ,0x01010500U)
    */
	PSU_Mask_Write(CRF_APB_DP_VIDEO_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01010500U);
/*##################################################################### */

    /*
    * Register : DP_AUDIO_REF_CTRL @ 0XFD1A0074

    * 6 bit divider
    *  PSU_CRF_APB_DP_AUDIO_REF_CTRL_DIVISOR1                      0x1

    * 6 bit divider
    *  PSU_CRF_APB_DP_AUDIO_REF_CTRL_DIVISOR0                      0x14

    * 000 = VPLL; 010 = DPLL; 011 = RPLL_TO_FPD - might be using extra mux; (T
    * his signal may only be toggled after 4 cycles of the old clock and 4 cyc
    * les of the new clock. This is not usually an issue, but designers must b
    * e aware.)
    *  PSU_CRF_APB_DP_AUDIO_REF_CTRL_SRCSEL                        0x3

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRF_APB_DP_AUDIO_REF_CTRL_CLKACT                        0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A0074, 0x013F3F07U ,0x01011403U)
    */
	PSU_Mask_Write(CRF_APB_DP_AUDIO_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01011403U);
/*##################################################################### */

    /*
    * Register : DP_STC_REF_CTRL @ 0XFD1A007C

    * 6 bit divider
    *  PSU_CRF_APB_DP_STC_REF_CTRL_DIVISOR1                        0x1

    * 6 bit divider
    *  PSU_CRF_APB_DP_STC_REF_CTRL_DIVISOR0                        0x13

    * 000 = VPLL; 010 = DPLL; 011 = RPLL_TO_FPD; (This signal may only be togg
    * led after 4 cycles of the old clock and 4 cycles of the new clock. This
    * is not usually an issue, but designers must be aware.)
    *  PSU_CRF_APB_DP_STC_REF_CTRL_SRCSEL                          0x3

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRF_APB_DP_STC_REF_CTRL_CLKACT                          0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A007C, 0x013F3F07U ,0x01011303U)
    */
	PSU_Mask_Write(CRF_APB_DP_STC_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01011303U);
/*##################################################################### */

    /*
    * Register : ACPU_CTRL @ 0XFD1A0060

    * 6 bit divider
    *  PSU_CRF_APB_ACPU_CTRL_DIVISOR0                              0x1

    * 000 = APLL; 010 = DPLL; 011 = VPLL; (This signal may only be toggled aft
    * er 4 cycles of the old clock and 4 cycles of the new clock. This is not
    * usually an issue, but designers must be aware.)
    *  PSU_CRF_APB_ACPU_CTRL_SRCSEL                                0x0

    * Clock active signal. Switch to 0 to disable the clock. For the half spee
    * d APU Clock
    *  PSU_CRF_APB_ACPU_CTRL_CLKACT_HALF                           0x1

    * Clock active signal. Switch to 0 to disable the clock. For the full spee
    * d ACPUX Clock. This will shut off the high speed clock to the entire APU
    *  PSU_CRF_APB_ACPU_CTRL_CLKACT_FULL                           0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A0060, 0x03003F07U ,0x03000100U)
    */
	PSU_Mask_Write(CRF_APB_ACPU_CTRL_OFFSET, 0x03003F07U, 0x03000100U);
/*##################################################################### */

    /*
    * Register : DBG_FPD_CTRL @ 0XFD1A0068

    * 6 bit divider
    *  PSU_CRF_APB_DBG_FPD_CTRL_DIVISOR0                           0x2

    * 000 = IOPLL_TO_FPD; 010 = DPLL; 011 = APLL; (This signal may only be tog
    * gled after 4 cycles of the old clock and 4 cycles of the new clock. This
    *  is not usually an issue, but designers must be aware.)
    *  PSU_CRF_APB_DBG_FPD_CTRL_SRCSEL                             0x0

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRF_APB_DBG_FPD_CTRL_CLKACT                             0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A0068, 0x01003F07U ,0x01000200U)
    */
	PSU_Mask_Write(CRF_APB_DBG_FPD_CTRL_OFFSET,
		0x01003F07U, 0x01000200U);
/*##################################################################### */

    /*
    * Register : DDR_CTRL @ 0XFD1A0080

    * 6 bit divider
    *  PSU_CRF_APB_DDR_CTRL_DIVISOR0                               0x5

    * 000 = DPLL; 001 = VPLL; (This signal may only be toggled after 4 cycles
    * of the old clock and 4 cycles of the new clock. This is not usually an i
    * ssue, but designers must be aware.)
    *  PSU_CRF_APB_DDR_CTRL_SRCSEL                                 0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A0080, 0x00003F07U ,0x00000500U)
    */
	PSU_Mask_Write(CRF_APB_DDR_CTRL_OFFSET, 0x00003F07U, 0x00000500U);
/*##################################################################### */

    /*
    * Register : GPU_REF_CTRL @ 0XFD1A0084

    * 6 bit divider
    *  PSU_CRF_APB_GPU_REF_CTRL_DIVISOR0                           0x1

    * 000 = IOPLL_TO_FPD; 010 = VPLL; 011 = DPLL; (This signal may only be tog
    * gled after 4 cycles of the old clock and 4 cycles of the new clock. This
    *  is not usually an issue, but designers must be aware.)
    *  PSU_CRF_APB_GPU_REF_CTRL_SRCSEL                             0x0

    * Clock active signal. Switch to 0 to disable the clock, which will stop c
    * lock for GPU (and both Pixel Processors).
    *  PSU_CRF_APB_GPU_REF_CTRL_CLKACT                             0x1

    * Clock active signal for Pixel Processor. Switch to 0 to disable the cloc
    * k only to this Pixel Processor
    *  PSU_CRF_APB_GPU_REF_CTRL_PP0_CLKACT                         0x1

    * Clock active signal for Pixel Processor. Switch to 0 to disable the cloc
    * k only to this Pixel Processor
    *  PSU_CRF_APB_GPU_REF_CTRL_PP1_CLKACT                         0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A0084, 0x07003F07U ,0x07000100U)
    */
	PSU_Mask_Write(CRF_APB_GPU_REF_CTRL_OFFSET,
		0x07003F07U, 0x07000100U);
/*##################################################################### */

    /*
    * Register : GDMA_REF_CTRL @ 0XFD1A00B8

    * 6 bit divider
    *  PSU_CRF_APB_GDMA_REF_CTRL_DIVISOR0                          0x2

    * 000 = APLL; 010 = VPLL; 011 = DPLL; (This signal may only be toggled aft
    * er 4 cycles of the old clock and 4 cycles of the new clock. This is not
    * usually an issue, but designers must be aware.)
    *  PSU_CRF_APB_GDMA_REF_CTRL_SRCSEL                            0x0

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRF_APB_GDMA_REF_CTRL_CLKACT                            0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A00B8, 0x01003F07U ,0x01000200U)
    */
	PSU_Mask_Write(CRF_APB_GDMA_REF_CTRL_OFFSET,
		0x01003F07U, 0x01000200U);
/*##################################################################### */

    /*
    * Register : DPDMA_REF_CTRL @ 0XFD1A00BC

    * 6 bit divider
    *  PSU_CRF_APB_DPDMA_REF_CTRL_DIVISOR0                         0x2

    * 000 = APLL; 010 = VPLL; 011 = DPLL; (This signal may only be toggled aft
    * er 4 cycles of the old clock and 4 cycles of the new clock. This is not
    * usually an issue, but designers must be aware.)
    *  PSU_CRF_APB_DPDMA_REF_CTRL_SRCSEL                           0x0

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRF_APB_DPDMA_REF_CTRL_CLKACT                           0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A00BC, 0x01003F07U ,0x01000200U)
    */
	PSU_Mask_Write(CRF_APB_DPDMA_REF_CTRL_OFFSET,
		0x01003F07U, 0x01000200U);
/*##################################################################### */

    /*
    * Register : TOPSW_MAIN_CTRL @ 0XFD1A00C0

    * 6 bit divider
    *  PSU_CRF_APB_TOPSW_MAIN_CTRL_DIVISOR0                        0x2

    * 000 = APLL; 010 = VPLL; 011 = DPLL; (This signal may only be toggled aft
    * er 4 cycles of the old clock and 4 cycles of the new clock. This is not
    * usually an issue, but designers must be aware.)
    *  PSU_CRF_APB_TOPSW_MAIN_CTRL_SRCSEL                          0x3

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRF_APB_TOPSW_MAIN_CTRL_CLKACT                          0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A00C0, 0x01003F07U ,0x01000203U)
    */
	PSU_Mask_Write(CRF_APB_TOPSW_MAIN_CTRL_OFFSET,
		0x01003F07U, 0x01000203U);
/*##################################################################### */

    /*
    * Register : TOPSW_LSBUS_CTRL @ 0XFD1A00C4

    * 6 bit divider
    *  PSU_CRF_APB_TOPSW_LSBUS_CTRL_DIVISOR0                       0x5

    * 000 = APLL; 010 = IOPLL_TO_FPD; 011 = DPLL; (This signal may only be tog
    * gled after 4 cycles of the old clock and 4 cycles of the new clock. This
    *  is not usually an issue, but designers must be aware.)
    *  PSU_CRF_APB_TOPSW_LSBUS_CTRL_SRCSEL                         0x2

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRF_APB_TOPSW_LSBUS_CTRL_CLKACT                         0x1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A00C4, 0x01003F07U ,0x01000502U)
    */
	PSU_Mask_Write(CRF_APB_TOPSW_LSBUS_CTRL_OFFSET,
		0x01003F07U, 0x01000502U);
/*##################################################################### */

    /*
    * Register : DBG_TSTMP_CTRL @ 0XFD1A00F8

    * 6 bit divider
    *  PSU_CRF_APB_DBG_TSTMP_CTRL_DIVISOR0                         0x2

    * 000 = IOPLL_TO_FPD; 010 = DPLL; 011 = APLL; (This signal may only be tog
    * gled after 4 cycles of the old clock and 4 cycles of the new clock. This
    *  is not usually an issue, but designers must be aware.)
    *  PSU_CRF_APB_DBG_TSTMP_CTRL_SRCSEL                           0x0

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFD1A00F8, 0x00003F07U ,0x00000200U)
    */
	PSU_Mask_Write(CRF_APB_DBG_TSTMP_CTRL_OFFSET,
		0x00003F07U, 0x00000200U);
/*##################################################################### */

    /*
    * Register : IOU_TTC_APB_CLK @ 0XFF180380

    * 00" = Select the APB switch clock for the APB interface of TTC0'01" = Se
    * lect the PLL ref clock for the APB interface of TTC0'10" = Select the R5
    *  clock for the APB interface of TTC0
    *  PSU_IOU_SLCR_IOU_TTC_APB_CLK_TTC0_SEL                       0

    * 00" = Select the APB switch clock for the APB interface of TTC1'01" = Se
    * lect the PLL ref clock for the APB interface of TTC1'10" = Select the R5
    *  clock for the APB interface of TTC1
    *  PSU_IOU_SLCR_IOU_TTC_APB_CLK_TTC1_SEL                       0

    * 00" = Select the APB switch clock for the APB interface of TTC2'01" = Se
    * lect the PLL ref clock for the APB interface of TTC2'10" = Select the R5
    *  clock for the APB interface of TTC2
    *  PSU_IOU_SLCR_IOU_TTC_APB_CLK_TTC2_SEL                       0

    * 00" = Select the APB switch clock for the APB interface of TTC3'01" = Se
    * lect the PLL ref clock for the APB interface of TTC3'10" = Select the R5
    *  clock for the APB interface of TTC3
    *  PSU_IOU_SLCR_IOU_TTC_APB_CLK_TTC3_SEL                       0

    * TTC APB clock select
    * (OFFSET, MASK, VALUE)      (0XFF180380, 0x000000FFU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_IOU_TTC_APB_CLK_OFFSET,
		0x000000FFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : WDT_CLK_SEL @ 0XFD610100

    * System watchdog timer clock source selection: 0: Internal APB clock 1: E
    * xternal (PL clock via EMIO or Pinout clock via MIO)
    *  PSU_FPD_SLCR_WDT_CLK_SEL_SELECT                             0

    * SWDT clock source select
    * (OFFSET, MASK, VALUE)      (0XFD610100, 0x00000001U ,0x00000000U)
    */
	PSU_Mask_Write(FPD_SLCR_WDT_CLK_SEL_OFFSET,
		0x00000001U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : WDT_CLK_SEL @ 0XFF180300

    * System watchdog timer clock source selection: 0: internal clock APB cloc
    * k 1: external clock from PL via EMIO, or from pinout via MIO
    *  PSU_IOU_SLCR_WDT_CLK_SEL_SELECT                             0

    * SWDT clock source select
    * (OFFSET, MASK, VALUE)      (0XFF180300, 0x00000001U ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_WDT_CLK_SEL_OFFSET,
		0x00000001U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : CSUPMU_WDT_CLK_SEL @ 0XFF410050

    * System watchdog timer clock source selection: 0: internal clock APB cloc
    * k 1: external clock pss_ref_clk
    *  PSU_LPD_SLCR_CSUPMU_WDT_CLK_SEL_SELECT                      0

    * SWDT clock source select
    * (OFFSET, MASK, VALUE)      (0XFF410050, 0x00000001U ,0x00000000U)
    */
	PSU_Mask_Write(LPD_SLCR_CSUPMU_WDT_CLK_SEL_OFFSET,
		0x00000001U, 0x00000000U);
/*##################################################################### */


	return 1;
}
unsigned long psu_ddr_qos_init_data(void)
{

	return 1;
}
unsigned long psu_mio_init_data(void)
{
    /*
    * MIO PROGRAMMING
    */
    /*
    * Register : MIO_PIN_0 @ 0XFF180000

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Output, qspi_sclk_out-
    *  (QSPI Clock)
    *  PSU_IOU_SLCR_MIO_PIN_0_L0_SEL                               0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_0_L1_SEL                               0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[0]- (Test Scan Port) = test_scan, Output, test_scan_out[0
    * ]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_0_L2_SEL                               0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[0]- (GPIO bank 0) 0= g
    * pio0, Output, gpio_0_pin_out[0]- (GPIO bank 0) 1= can1, Output, can1_phy
    * _tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i2c
    * 1, Output, i2c1_scl_out- (SCL signal) 3= pjtag, Input, pjtag_tck- (PJTAG
    *  TCK) 4= spi0, Input, spi0_sclk_in- (SPI Clock) 4= spi0, Output, spi0_sc
    * lk_out- (SPI Clock) 5= ttc3, Input, ttc3_clk_in- (TTC Clock) 6= ua1, Out
    * put, ua1_txd- (UART transmitter serial output) 7= trace, Output, trace_c
    * lk- (Trace Port Clock)
    *  PSU_IOU_SLCR_MIO_PIN_0_L3_SEL                               6

    * Configures MIO Pin 0 peripheral interface mapping. S
    * (OFFSET, MASK, VALUE)      (0XFF180000, 0x000000FEU ,0x000000C0U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_0_OFFSET, 0x000000FEU, 0x000000C0U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_1 @ 0XFF180004

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Input, qspi_mi_mi1- (Q
    * SPI Databus) 1= qspi, Output, qspi_so_mo1- (QSPI Databus)
    *  PSU_IOU_SLCR_MIO_PIN_1_L0_SEL                               0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_1_L1_SEL                               0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[1]- (Test Scan Port) = test_scan, Output, test_scan_out[1
    * ]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_1_L2_SEL                               0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[1]- (GPIO bank 0) 0= g
    * pio0, Output, gpio_0_pin_out[1]- (GPIO bank 0) 1= can1, Input, can1_phy_
    * rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2c1
    * , Output, i2c1_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tdi- (PJTAG
    * TDI) 4= spi0, Output, spi0_n_ss_out[2]- (SPI Master Selects) 5= ttc3, Ou
    * tput, ttc3_wave_out- (TTC Waveform Clock) 6= ua1, Input, ua1_rxd- (UART
    * receiver serial input) 7= trace, Output, trace_ctl- (Trace Port Control
    * Signal)
    *  PSU_IOU_SLCR_MIO_PIN_1_L3_SEL                               6

    * Configures MIO Pin 1 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180004, 0x000000FEU ,0x000000C0U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_1_OFFSET, 0x000000FEU, 0x000000C0U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_2 @ 0XFF180008

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Input, qspi_mi2- (QSPI
    *  Databus) 1= qspi, Output, qspi_mo2- (QSPI Databus)
    *  PSU_IOU_SLCR_MIO_PIN_2_L0_SEL                               0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_2_L1_SEL                               0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[2]- (Test Scan Port) = test_scan, Output, test_scan_out[2
    * ]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_2_L2_SEL                               0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[2]- (GPIO bank 0) 0= g
    * pio0, Output, gpio_0_pin_out[2]- (GPIO bank 0) 1= can0, Input, can0_phy_
    * rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2c0
    * , Output, i2c0_scl_out- (SCL signal) 3= pjtag, Output, pjtag_tdo- (PJTAG
    *  TDO) 4= spi0, Output, spi0_n_ss_out[1]- (SPI Master Selects) 5= ttc2, I
    * nput, ttc2_clk_in- (TTC Clock) 6= ua0, Input, ua0_rxd- (UART receiver se
    * rial input) 7= trace, Output, tracedq[0]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_2_L3_SEL                               6

    * Configures MIO Pin 2 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180008, 0x000000FEU ,0x000000C0U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_2_OFFSET, 0x000000FEU, 0x000000C0U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_3 @ 0XFF18000C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Input, qspi_mi3- (QSPI
    *  Databus) 1= qspi, Output, qspi_mo3- (QSPI Databus)
    *  PSU_IOU_SLCR_MIO_PIN_3_L0_SEL                               0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_3_L1_SEL                               0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[3]- (Test Scan Port) = test_scan, Output, test_scan_out[3
    * ]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_3_L2_SEL                               0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[3]- (GPIO bank 0) 0= g
    * pio0, Output, gpio_0_pin_out[3]- (GPIO bank 0) 1= can0, Output, can0_phy
    * _tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i2c
    * 0, Output, i2c0_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tms- (PJTAG
    *  TMS) 4= spi0, Input, spi0_n_ss_in- (SPI Master Selects) 4= spi0, Output
    * , spi0_n_ss_out[0]- (SPI Master Selects) 5= ttc2, Output, ttc2_wave_out-
    *  (TTC Waveform Clock) 6= ua0, Output, ua0_txd- (UART transmitter serial
    * output) 7= trace, Output, tracedq[1]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_3_L3_SEL                               6

    * Configures MIO Pin 3 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18000C, 0x000000FEU ,0x000000C0U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_3_OFFSET, 0x000000FEU, 0x000000C0U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_4 @ 0XFF180010

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Output, qspi_mo_mo0- (
    * QSPI Databus) 1= qspi, Input, qspi_si_mi0- (QSPI Databus)
    *  PSU_IOU_SLCR_MIO_PIN_4_L0_SEL                               0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_4_L1_SEL                               0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[4]- (Test Scan Port) = test_scan, Output, test_scan_out[4
    * ]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_4_L2_SEL                               0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[4]- (GPIO bank 0) 0= g
    * pio0, Output, gpio_0_pin_out[4]- (GPIO bank 0) 1= can1, Output, can1_phy
    * _tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i2c
    * 1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (Wa
    * tch Dog Timer Input clock) 4= spi0, Input, spi0_mi- (MISO signal) 4= spi
    * 0, Output, spi0_so- (MISO signal) 5= ttc1, Input, ttc1_clk_in- (TTC Cloc
    * k) 6= ua1, Output, ua1_txd- (UART transmitter serial output) 7= trace, O
    * utput, tracedq[2]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_4_L3_SEL                               2

    * Configures MIO Pin 4 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180010, 0x000000FEU ,0x00000040U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_4_OFFSET, 0x000000FEU, 0x00000040U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_5 @ 0XFF180014

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Output, qspi_n_ss_out-
    *  (QSPI Slave Select)
    *  PSU_IOU_SLCR_MIO_PIN_5_L0_SEL                               0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_5_L1_SEL                               0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[5]- (Test Scan Port) = test_scan, Output, test_scan_out[5
    * ]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_5_L2_SEL                               0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[5]- (GPIO bank 0) 0= g
    * pio0, Output, gpio_0_pin_out[5]- (GPIO bank 0) 1= can1, Input, can1_phy_
    * rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2c1
    * , Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out- (W
    * atch Dog Timer Output clock) 4= spi0, Output, spi0_mo- (MOSI signal) 4=
    * spi0, Input, spi0_si- (MOSI signal) 5= ttc1, Output, ttc1_wave_out- (TTC
    *  Waveform Clock) 6= ua1, Input, ua1_rxd- (UART receiver serial input) 7=
    *  trace, Output, tracedq[3]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_5_L3_SEL                               2

    * Configures MIO Pin 5 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180014, 0x000000FEU ,0x00000040U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_5_OFFSET, 0x000000FEU, 0x00000040U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_6 @ 0XFF180018

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Output, qspi_clk_for_l
    * pbk- (QSPI Clock to be fed-back)
    *  PSU_IOU_SLCR_MIO_PIN_6_L0_SEL                               0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_6_L1_SEL                               0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[6]- (Test Scan Port) = test_scan, Output, test_scan_out[6
    * ]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_6_L2_SEL                               0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[6]- (GPIO bank 0) 0= g
    * pio0, Output, gpio_0_pin_out[6]- (GPIO bank 0) 1= can0, Input, can0_phy_
    * rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2c0
    * , Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (Wat
    * ch Dog Timer Input clock) 4= spi1, Input, spi1_sclk_in- (SPI Clock) 4= s
    * pi1, Output, spi1_sclk_out- (SPI Clock) 5= ttc0, Input, ttc0_clk_in- (TT
    * C Clock) 6= ua0, Input, ua0_rxd- (UART receiver serial input) 7= trace,
    * Output, tracedq[4]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_6_L3_SEL                               4

    * Configures MIO Pin 6 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180018, 0x000000FEU ,0x00000080U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_6_OFFSET, 0x000000FEU, 0x00000080U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_7 @ 0XFF18001C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Output, qspi_n_ss_out_
    * upper- (QSPI Slave Select upper)
    *  PSU_IOU_SLCR_MIO_PIN_7_L0_SEL                               0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_7_L1_SEL                               0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[7]- (Test Scan Port) = test_scan, Output, test_scan_out[7
    * ]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_7_L2_SEL                               0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[7]- (GPIO bank 0) 0= g
    * pio0, Output, gpio_0_pin_out[7]- (GPIO bank 0) 1= can0, Output, can0_phy
    * _tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i2c
    * 0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out- (
    * Watch Dog Timer Output clock) 4= spi1, Output, spi1_n_ss_out[2]- (SPI Ma
    * ster Selects) 5= ttc0, Output, ttc0_wave_out- (TTC Waveform Clock) 6= ua
    * 0, Output, ua0_txd- (UART transmitter serial output) 7= trace, Output, t
    * racedq[5]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_7_L3_SEL                               0

    * Configures MIO Pin 7 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18001C, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_7_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_8 @ 0XFF180020

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Input, qspi_mi_upper[0
    * ]- (QSPI Upper Databus) 1= qspi, Output, qspi_mo_upper[0]- (QSPI Upper D
    * atabus)
    *  PSU_IOU_SLCR_MIO_PIN_8_L0_SEL                               0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_8_L1_SEL                               0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[8]- (Test Scan Port) = test_scan, Output, test_scan_out[8
    * ]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_8_L2_SEL                               0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[8]- (GPIO bank 0) 0= g
    * pio0, Output, gpio_0_pin_out[8]- (GPIO bank 0) 1= can1, Output, can1_phy
    * _tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i2c
    * 1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (Wa
    * tch Dog Timer Input clock) 4= spi1, Output, spi1_n_ss_out[1]- (SPI Maste
    * r Selects) 5= ttc3, Input, ttc3_clk_in- (TTC Clock) 6= ua1, Output, ua1_
    * txd- (UART transmitter serial output) 7= trace, Output, tracedq[6]- (Tra
    * ce Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_8_L3_SEL                               0

    * Configures MIO Pin 8 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180020, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_8_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_9 @ 0XFF180024

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Input, qspi_mi_upper[1
    * ]- (QSPI Upper Databus) 1= qspi, Output, qspi_mo_upper[1]- (QSPI Upper D
    * atabus)
    *  PSU_IOU_SLCR_MIO_PIN_9_L0_SEL                               0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Output, nfc_ce[1]- (NA
    * ND chip enable)
    *  PSU_IOU_SLCR_MIO_PIN_9_L1_SEL                               0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[9]- (Test Scan Port) = test_scan, Output, test_scan_out[9
    * ]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_9_L2_SEL                               0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[9]- (GPIO bank 0) 0= g
    * pio0, Output, gpio_0_pin_out[9]- (GPIO bank 0) 1= can1, Input, can1_phy_
    * rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2c1
    * , Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out- (W
    * atch Dog Timer Output clock) 4= spi1, Input, spi1_n_ss_in- (SPI Master S
    * elects) 4= spi1, Output, spi1_n_ss_out[0]- (SPI Master Selects) 5= ttc3,
    *  Output, ttc3_wave_out- (TTC Waveform Clock) 6= ua1, Input, ua1_rxd- (UA
    * RT receiver serial input) 7= trace, Output, tracedq[7]- (Trace Port Data
    * bus)
    *  PSU_IOU_SLCR_MIO_PIN_9_L3_SEL                               4

    * Configures MIO Pin 9 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180024, 0x000000FEU ,0x00000080U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_9_OFFSET, 0x000000FEU, 0x00000080U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_10 @ 0XFF180028

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Input, qspi_mi_upper[2
    * ]- (QSPI Upper Databus) 1= qspi, Output, qspi_mo_upper[2]- (QSPI Upper D
    * atabus)
    *  PSU_IOU_SLCR_MIO_PIN_10_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_rb_n[0]- (N
    * AND Ready/Busy)
    *  PSU_IOU_SLCR_MIO_PIN_10_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[10]- (Test Scan Port) = test_scan, Output, test_scan_out[
    * 10]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_10_L2_SEL                              0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[10]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[10]- (GPIO bank 0) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (W
    * atch Dog Timer Input clock) 4= spi1, Input, spi1_mi- (MISO signal) 4= sp
    * i1, Output, spi1_so- (MISO signal) 5= ttc2, Input, ttc2_clk_in- (TTC Clo
    * ck) 6= ua0, Input, ua0_rxd- (UART receiver serial input) 7= trace, Outpu
    * t, tracedq[8]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_10_L3_SEL                              4

    * Configures MIO Pin 10 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180028, 0x000000FEU ,0x00000080U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_10_OFFSET, 0x000000FEU, 0x00000080U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_11 @ 0XFF18002C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Input, qspi_mi_upper[3
    * ]- (QSPI Upper Databus) 1= qspi, Output, qspi_mo_upper[3]- (QSPI Upper D
    * atabus)
    *  PSU_IOU_SLCR_MIO_PIN_11_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_rb_n[1]- (N
    * AND Ready/Busy)
    *  PSU_IOU_SLCR_MIO_PIN_11_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[11]- (Test Scan Port) = test_scan, Output, test_scan_out[
    * 11]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_11_L2_SEL                              0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[11]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[11]- (GPIO bank 0) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out-
    *  (Watch Dog Timer Output clock) 4= spi1, Output, spi1_mo- (MOSI signal)
    * 4= spi1, Input, spi1_si- (MOSI signal) 5= ttc2, Output, ttc2_wave_out- (
    * TTC Waveform Clock) 6= ua0, Output, ua0_txd- (UART transmitter serial ou
    * tput) 7= trace, Output, tracedq[9]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_11_L3_SEL                              4

    * Configures MIO Pin 11 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18002C, 0x000000FEU ,0x00000080U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_11_OFFSET, 0x000000FEU, 0x00000080U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_12 @ 0XFF180030

    * Level 0 Mux Select 0= Level 1 Mux Output 1= qspi, Output, qspi_sclk_out_
    * upper- (QSPI Upper Clock)
    *  PSU_IOU_SLCR_MIO_PIN_12_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_dqs_in- (NA
    * ND Strobe) 1= nand, Output, nfc_dqs_out- (NAND Strobe)
    *  PSU_IOU_SLCR_MIO_PIN_12_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= test_scan, Input
    * , test_scan_in[12]- (Test Scan Port) = test_scan, Output, test_scan_out[
    * 12]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_12_L2_SEL                              0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[12]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[12]- (GPIO bank 0) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= pjtag, Input, pjtag_tck- (PJT
    * AG TCK) 4= spi0, Input, spi0_sclk_in- (SPI Clock) 4= spi0, Output, spi0_
    * sclk_out- (SPI Clock) 5= ttc1, Input, ttc1_clk_in- (TTC Clock) 6= ua1, O
    * utput, ua1_txd- (UART transmitter serial output) 7= trace, Output, trace
    * dq[10]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_12_L3_SEL                              0

    * Configures MIO Pin 12 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180030, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_12_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_13 @ 0XFF180034

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_13_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Output, nfc_ce[0]- (NA
    * ND chip enable)
    *  PSU_IOU_SLCR_MIO_PIN_13_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[0]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[0]- (8-bit Data bus) 2= t
    * est_scan, Input, test_scan_in[13]- (Test Scan Port) = test_scan, Output,
    *  test_scan_out[13]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_13_L2_SEL                              1

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[13]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[13]- (GPIO bank 0) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tdi- (PJTA
    * G TDI) 4= spi0, Output, spi0_n_ss_out[2]- (SPI Master Selects) 5= ttc1,
    * Output, ttc1_wave_out- (TTC Waveform Clock) 6= ua1, Input, ua1_rxd- (UAR
    * T receiver serial input) 7= trace, Output, tracedq[11]- (Trace Port Data
    * bus)
    *  PSU_IOU_SLCR_MIO_PIN_13_L3_SEL                              0

    * Configures MIO Pin 13 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180034, 0x000000FEU ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_13_OFFSET, 0x000000FEU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_14 @ 0XFF180038

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_14_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Output, nfc_cle- (NAND
    *  Command Latch Enable)
    *  PSU_IOU_SLCR_MIO_PIN_14_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[1]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[1]- (8-bit Data bus) 2= t
    * est_scan, Input, test_scan_in[14]- (Test Scan Port) = test_scan, Output,
    *  test_scan_out[14]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_14_L2_SEL                              1

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[14]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[14]- (GPIO bank 0) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= pjtag, Output, pjtag_tdo- (PJT
    * AG TDO) 4= spi0, Output, spi0_n_ss_out[1]- (SPI Master Selects) 5= ttc0,
    *  Input, ttc0_clk_in- (TTC Clock) 6= ua0, Input, ua0_rxd- (UART receiver
    * serial input) 7= trace, Output, tracedq[12]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_14_L3_SEL                              0

    * Configures MIO Pin 14 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180038, 0x000000FEU ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_14_OFFSET, 0x000000FEU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_15 @ 0XFF18003C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_15_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Output, nfc_ale- (NAND
    *  Address Latch Enable)
    *  PSU_IOU_SLCR_MIO_PIN_15_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[2]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[2]- (8-bit Data bus) 2= t
    * est_scan, Input, test_scan_in[15]- (Test Scan Port) = test_scan, Output,
    *  test_scan_out[15]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_15_L2_SEL                              1

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[15]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[15]- (GPIO bank 0) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tms- (PJT
    * AG TMS) 4= spi0, Input, spi0_n_ss_in- (SPI Master Selects) 4= spi0, Outp
    * ut, spi0_n_ss_out[0]- (SPI Master Selects) 5= ttc0, Output, ttc0_wave_ou
    * t- (TTC Waveform Clock) 6= ua0, Output, ua0_txd- (UART transmitter seria
    * l output) 7= trace, Output, tracedq[13]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_15_L3_SEL                              0

    * Configures MIO Pin 15 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18003C, 0x000000FEU ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_15_OFFSET, 0x000000FEU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_16 @ 0XFF180040

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_16_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_dq_in[0]- (
    * NAND Data Bus) 1= nand, Output, nfc_dq_out[0]- (NAND Data Bus)
    *  PSU_IOU_SLCR_MIO_PIN_16_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[3]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[3]- (8-bit Data bus) 2= t
    * est_scan, Input, test_scan_in[16]- (Test Scan Port) = test_scan, Output,
    *  test_scan_out[16]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_16_L2_SEL                              1

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[16]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[16]- (GPIO bank 0) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (
    * Watch Dog Timer Input clock) 4= spi0, Input, spi0_mi- (MISO signal) 4= s
    * pi0, Output, spi0_so- (MISO signal) 5= ttc3, Input, ttc3_clk_in- (TTC Cl
    * ock) 6= ua1, Output, ua1_txd- (UART transmitter serial output) 7= trace,
    *  Output, tracedq[14]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_16_L3_SEL                              0

    * Configures MIO Pin 16 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180040, 0x000000FEU ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_16_OFFSET, 0x000000FEU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_17 @ 0XFF180044

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_17_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_dq_in[1]- (
    * NAND Data Bus) 1= nand, Output, nfc_dq_out[1]- (NAND Data Bus)
    *  PSU_IOU_SLCR_MIO_PIN_17_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[4]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[4]- (8-bit Data bus) 2= t
    * est_scan, Input, test_scan_in[17]- (Test Scan Port) = test_scan, Output,
    *  test_scan_out[17]- (Test Scan Port) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_17_L2_SEL                              0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[17]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[17]- (GPIO bank 0) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out-
    * (Watch Dog Timer Output clock) 4= spi0, Output, spi0_mo- (MOSI signal) 4
    * = spi0, Input, spi0_si- (MOSI signal) 5= ttc3, Output, ttc3_wave_out- (T
    * TC Waveform Clock) 6= ua1, Input, ua1_rxd- (UART receiver serial input)
    * 7= trace, Output, tracedq[15]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_17_L3_SEL                              0

    * Configures MIO Pin 17 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180044, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_17_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_18 @ 0XFF180048

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_18_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_dq_in[2]- (
    * NAND Data Bus) 1= nand, Output, nfc_dq_out[2]- (NAND Data Bus)
    *  PSU_IOU_SLCR_MIO_PIN_18_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[5]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[5]- (8-bit Data bus) 2= t
    * est_scan, Input, test_scan_in[18]- (Test Scan Port) = test_scan, Output,
    *  test_scan_out[18]- (Test Scan Port) 3= csu, Input, csu_ext_tamper- (CSU
    *  Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_18_L2_SEL                              0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[18]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[18]- (GPIO bank 0) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (W
    * atch Dog Timer Input clock) 4= spi1, Input, spi1_mi- (MISO signal) 4= sp
    * i1, Output, spi1_so- (MISO signal) 5= ttc2, Input, ttc2_clk_in- (TTC Clo
    * ck) 6= ua0, Input, ua0_rxd- (UART receiver serial input) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_18_L3_SEL                              0

    * Configures MIO Pin 18 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180048, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_18_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_19 @ 0XFF18004C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_19_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_dq_in[3]- (
    * NAND Data Bus) 1= nand, Output, nfc_dq_out[3]- (NAND Data Bus)
    *  PSU_IOU_SLCR_MIO_PIN_19_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[6]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[6]- (8-bit Data bus) 2= t
    * est_scan, Input, test_scan_in[19]- (Test Scan Port) = test_scan, Output,
    *  test_scan_out[19]- (Test Scan Port) 3= csu, Input, csu_ext_tamper- (CSU
    *  Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_19_L2_SEL                              0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[19]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[19]- (GPIO bank 0) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out-
    *  (Watch Dog Timer Output clock) 4= spi1, Output, spi1_n_ss_out[2]- (SPI
    * Master Selects) 5= ttc2, Output, ttc2_wave_out- (TTC Waveform Clock) 6=
    * ua0, Output, ua0_txd- (UART transmitter serial output) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_19_L3_SEL                              0

    * Configures MIO Pin 19 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18004C, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_19_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_20 @ 0XFF180050

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_20_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_dq_in[4]- (
    * NAND Data Bus) 1= nand, Output, nfc_dq_out[4]- (NAND Data Bus)
    *  PSU_IOU_SLCR_MIO_PIN_20_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[7]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[7]- (8-bit Data bus) 2= t
    * est_scan, Input, test_scan_in[20]- (Test Scan Port) = test_scan, Output,
    *  test_scan_out[20]- (Test Scan Port) 3= csu, Input, csu_ext_tamper- (CSU
    *  Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_20_L2_SEL                              0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[20]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[20]- (GPIO bank 0) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (
    * Watch Dog Timer Input clock) 4= spi1, Output, spi1_n_ss_out[1]- (SPI Mas
    * ter Selects) 5= ttc1, Input, ttc1_clk_in- (TTC Clock) 6= ua1, Output, ua
    * 1_txd- (UART transmitter serial output) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_20_L3_SEL                              0

    * Configures MIO Pin 20 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180050, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_20_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_21 @ 0XFF180054

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_21_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_dq_in[5]- (
    * NAND Data Bus) 1= nand, Output, nfc_dq_out[5]- (NAND Data Bus)
    *  PSU_IOU_SLCR_MIO_PIN_21_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_cmd_in- (Com
    * mand Indicator) = sd0, Output, sdio0_cmd_out- (Command Indicator) 2= tes
    * t_scan, Input, test_scan_in[21]- (Test Scan Port) = test_scan, Output, t
    * est_scan_out[21]- (Test Scan Port) 3= csu, Input, csu_ext_tamper- (CSU E
    * xt Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_21_L2_SEL                              1

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[21]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[21]- (GPIO bank 0) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out-
    * (Watch Dog Timer Output clock) 4= spi1, Input, spi1_n_ss_in- (SPI Master
    *  Selects) 4= spi1, Output, spi1_n_ss_out[0]- (SPI Master Selects) 5= ttc
    * 1, Output, ttc1_wave_out- (TTC Waveform Clock) 6= ua1, Input, ua1_rxd- (
    * UART receiver serial input) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_21_L3_SEL                              0

    * Configures MIO Pin 21 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180054, 0x000000FEU ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_21_OFFSET, 0x000000FEU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_22 @ 0XFF180058

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_22_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Output, nfc_we_b- (NAN
    * D Write Enable)
    *  PSU_IOU_SLCR_MIO_PIN_22_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Output, sdio0_clk_out-
    * (SDSDIO clock) 2= test_scan, Input, test_scan_in[22]- (Test Scan Port) =
    *  test_scan, Output, test_scan_out[22]- (Test Scan Port) 3= csu, Input, c
    * su_ext_tamper- (CSU Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_22_L2_SEL                              1

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[22]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[22]- (GPIO bank 0) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (W
    * atch Dog Timer Input clock) 4= spi1, Input, spi1_sclk_in- (SPI Clock) 4=
    *  spi1, Output, spi1_sclk_out- (SPI Clock) 5= ttc0, Input, ttc0_clk_in- (
    * TTC Clock) 6= ua0, Input, ua0_rxd- (UART receiver serial input) 7= Not U
    * sed
    *  PSU_IOU_SLCR_MIO_PIN_22_L3_SEL                              0

    * Configures MIO Pin 22 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180058, 0x000000FEU ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_22_OFFSET, 0x000000FEU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_23 @ 0XFF18005C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_23_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_dq_in[6]- (
    * NAND Data Bus) 1= nand, Output, nfc_dq_out[6]- (NAND Data Bus)
    *  PSU_IOU_SLCR_MIO_PIN_23_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Output, sdio0_bus_pow-
    * (SD card bus power) 2= test_scan, Input, test_scan_in[23]- (Test Scan Po
    * rt) = test_scan, Output, test_scan_out[23]- (Test Scan Port) 3= csu, Inp
    * ut, csu_ext_tamper- (CSU Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_23_L2_SEL                              0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[23]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[23]- (GPIO bank 0) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out-
    *  (Watch Dog Timer Output clock) 4= spi1, Output, spi1_mo- (MOSI signal)
    * 4= spi1, Input, spi1_si- (MOSI signal) 5= ttc0, Output, ttc0_wave_out- (
    * TTC Waveform Clock) 6= ua0, Output, ua0_txd- (UART transmitter serial ou
    * tput) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_23_L3_SEL                              0

    * Configures MIO Pin 23 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18005C, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_23_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_24 @ 0XFF180060

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_24_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_dq_in[7]- (
    * NAND Data Bus) 1= nand, Output, nfc_dq_out[7]- (NAND Data Bus)
    *  PSU_IOU_SLCR_MIO_PIN_24_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sdio0_cd_n- (SD
    * card detect from connector) 2= test_scan, Input, test_scan_in[24]- (Test
    *  Scan Port) = test_scan, Output, test_scan_out[24]- (Test Scan Port) 3=
    * csu, Input, csu_ext_tamper- (CSU Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_24_L2_SEL                              1

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[24]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[24]- (GPIO bank 0) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (
    * Watch Dog Timer Input clock) 4= Not Used 5= ttc3, Input, ttc3_clk_in- (T
    * TC Clock) 6= ua1, Output, ua1_txd- (UART transmitter serial output) 7= N
    * ot Used
    *  PSU_IOU_SLCR_MIO_PIN_24_L3_SEL                              0

    * Configures MIO Pin 24 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180060, 0x000000FEU ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_24_OFFSET, 0x000000FEU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_25 @ 0XFF180064

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_25_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Output, nfc_re_n- (NAN
    * D Read Enable)
    *  PSU_IOU_SLCR_MIO_PIN_25_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sdio0_wp- (SD ca
    * rd write protect from connector) 2= test_scan, Input, test_scan_in[25]-
    * (Test Scan Port) = test_scan, Output, test_scan_out[25]- (Test Scan Port
    * ) 3= csu, Input, csu_ext_tamper- (CSU Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_25_L2_SEL                              0

    * Level 3 Mux Select 0= gpio0, Input, gpio_0_pin_in[25]- (GPIO bank 0) 0=
    * gpio0, Output, gpio_0_pin_out[25]- (GPIO bank 0) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out-
    * (Watch Dog Timer Output clock) 4= Not Used 5= ttc3, Output, ttc3_wave_ou
    * t- (TTC Waveform Clock) 6= ua1, Input, ua1_rxd- (UART receiver serial in
    * put) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_25_L3_SEL                              0

    * Configures MIO Pin 25 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180064, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_25_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_26 @ 0XFF180068

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Output, gem0_rgmii_tx_
    * clk- (TX RGMII clock)
    *  PSU_IOU_SLCR_MIO_PIN_26_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Output, nfc_ce[1]- (NA
    * ND chip enable)
    *  PSU_IOU_SLCR_MIO_PIN_26_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Input, pmu_gpi[0]- (PMU
    *  GPI) 2= test_scan, Input, test_scan_in[26]- (Test Scan Port) = test_sca
    * n, Output, test_scan_out[26]- (Test Scan Port) 3= csu, Input, csu_ext_ta
    * mper- (CSU Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_26_L2_SEL                              1

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[0]- (GPIO bank 1) 0= g
    * pio1, Output, gpio_1_pin_out[0]- (GPIO bank 1) 1= can0, Input, can0_phy_
    * rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2c0
    * , Output, i2c0_scl_out- (SCL signal) 3= pjtag, Input, pjtag_tck- (PJTAG
    * TCK) 4= spi0, Input, spi0_sclk_in- (SPI Clock) 4= spi0, Output, spi0_scl
    * k_out- (SPI Clock) 5= ttc2, Input, ttc2_clk_in- (TTC Clock) 6= ua0, Inpu
    * t, ua0_rxd- (UART receiver serial input) 7= trace, Output, tracedq[4]- (
    * Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_26_L3_SEL                              0

    * Configures MIO Pin 26 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180068, 0x000000FEU ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_26_OFFSET, 0x000000FEU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_27 @ 0XFF18006C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Output, gem0_rgmii_txd
    * [0]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_27_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_rb_n[0]- (N
    * AND Ready/Busy)
    *  PSU_IOU_SLCR_MIO_PIN_27_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Input, pmu_gpi[1]- (PMU
    *  GPI) 2= test_scan, Input, test_scan_in[27]- (Test Scan Port) = test_sca
    * n, Output, test_scan_out[27]- (Test Scan Port) 3= dpaux, Input, dp_aux_d
    * ata_in- (Dp Aux Data) = dpaux, Output, dp_aux_data_out- (Dp Aux Data)
    *  PSU_IOU_SLCR_MIO_PIN_27_L2_SEL                              3

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[1]- (GPIO bank 1) 0= g
    * pio1, Output, gpio_1_pin_out[1]- (GPIO bank 1) 1= can0, Output, can0_phy
    * _tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i2c
    * 0, Output, i2c0_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tdi- (PJTAG
    *  TDI) 4= spi0, Output, spi0_n_ss_out[2]- (SPI Master Selects) 5= ttc2, O
    * utput, ttc2_wave_out- (TTC Waveform Clock) 6= ua0, Output, ua0_txd- (UAR
    * T transmitter serial output) 7= trace, Output, tracedq[5]- (Trace Port D
    * atabus)
    *  PSU_IOU_SLCR_MIO_PIN_27_L3_SEL                              0

    * Configures MIO Pin 27 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18006C, 0x000000FEU ,0x00000018U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_27_OFFSET, 0x000000FEU, 0x00000018U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_28 @ 0XFF180070

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Output, gem0_rgmii_txd
    * [1]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_28_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_rb_n[1]- (N
    * AND Ready/Busy)
    *  PSU_IOU_SLCR_MIO_PIN_28_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Input, pmu_gpi[2]- (PMU
    *  GPI) 2= test_scan, Input, test_scan_in[28]- (Test Scan Port) = test_sca
    * n, Output, test_scan_out[28]- (Test Scan Port) 3= dpaux, Input, dp_hot_p
    * lug_detect- (Dp Aux Hot Plug)
    *  PSU_IOU_SLCR_MIO_PIN_28_L2_SEL                              3

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[2]- (GPIO bank 1) 0= g
    * pio1, Output, gpio_1_pin_out[2]- (GPIO bank 1) 1= can1, Output, can1_phy
    * _tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i2c
    * 1, Output, i2c1_scl_out- (SCL signal) 3= pjtag, Output, pjtag_tdo- (PJTA
    * G TDO) 4= spi0, Output, spi0_n_ss_out[1]- (SPI Master Selects) 5= ttc1,
    * Input, ttc1_clk_in- (TTC Clock) 6= ua1, Output, ua1_txd- (UART transmitt
    * er serial output) 7= trace, Output, tracedq[6]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_28_L3_SEL                              0

    * Configures MIO Pin 28 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180070, 0x000000FEU ,0x00000018U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_28_OFFSET, 0x000000FEU, 0x00000018U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_29 @ 0XFF180074

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Output, gem0_rgmii_txd
    * [2]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_29_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= pcie, Input, pcie_reset_n- (
    * PCIE Reset signal)
    *  PSU_IOU_SLCR_MIO_PIN_29_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Input, pmu_gpi[3]- (PMU
    *  GPI) 2= test_scan, Input, test_scan_in[29]- (Test Scan Port) = test_sca
    * n, Output, test_scan_out[29]- (Test Scan Port) 3= dpaux, Input, dp_aux_d
    * ata_in- (Dp Aux Data) = dpaux, Output, dp_aux_data_out- (Dp Aux Data)
    *  PSU_IOU_SLCR_MIO_PIN_29_L2_SEL                              3

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[3]- (GPIO bank 1) 0= g
    * pio1, Output, gpio_1_pin_out[3]- (GPIO bank 1) 1= can1, Input, can1_phy_
    * rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2c1
    * , Output, i2c1_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tms- (PJTAG
    * TMS) 4= spi0, Input, spi0_n_ss_in- (SPI Master Selects) 4= spi0, Output,
    *  spi0_n_ss_out[0]- (SPI Master Selects) 5= ttc1, Output, ttc1_wave_out-
    * (TTC Waveform Clock) 6= ua1, Input, ua1_rxd- (UART receiver serial input
    * ) 7= trace, Output, tracedq[7]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_29_L3_SEL                              0

    * Configures MIO Pin 29 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180074, 0x000000FEU ,0x00000018U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_29_OFFSET, 0x000000FEU, 0x00000018U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_30 @ 0XFF180078

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Output, gem0_rgmii_txd
    * [3]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_30_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= pcie, Input, pcie_reset_n- (
    * PCIE Reset signal)
    *  PSU_IOU_SLCR_MIO_PIN_30_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Input, pmu_gpi[4]- (PMU
    *  GPI) 2= test_scan, Input, test_scan_in[30]- (Test Scan Port) = test_sca
    * n, Output, test_scan_out[30]- (Test Scan Port) 3= dpaux, Input, dp_hot_p
    * lug_detect- (Dp Aux Hot Plug)
    *  PSU_IOU_SLCR_MIO_PIN_30_L2_SEL                              3

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[4]- (GPIO bank 1) 0= g
    * pio1, Output, gpio_1_pin_out[4]- (GPIO bank 1) 1= can0, Input, can0_phy_
    * rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2c0
    * , Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (Wat
    * ch Dog Timer Input clock) 4= spi0, Input, spi0_mi- (MISO signal) 4= spi0
    * , Output, spi0_so- (MISO signal) 5= ttc0, Input, ttc0_clk_in- (TTC Clock
    * ) 6= ua0, Input, ua0_rxd- (UART receiver serial input) 7= trace, Output,
    *  tracedq[8]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_30_L3_SEL                              0

    * Configures MIO Pin 30 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180078, 0x000000FEU ,0x00000018U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_30_OFFSET, 0x000000FEU, 0x00000018U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_31 @ 0XFF18007C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Output, gem0_rgmii_tx_
    * ctl- (TX RGMII control)
    *  PSU_IOU_SLCR_MIO_PIN_31_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= pcie, Input, pcie_reset_n- (
    * PCIE Reset signal)
    *  PSU_IOU_SLCR_MIO_PIN_31_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Input, pmu_gpi[5]- (PMU
    *  GPI) 2= test_scan, Input, test_scan_in[31]- (Test Scan Port) = test_sca
    * n, Output, test_scan_out[31]- (Test Scan Port) 3= csu, Input, csu_ext_ta
    * mper- (CSU Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_31_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[5]- (GPIO bank 1) 0= g
    * pio1, Output, gpio_1_pin_out[5]- (GPIO bank 1) 1= can0, Output, can0_phy
    * _tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i2c
    * 0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out- (
    * Watch Dog Timer Output clock) 4= spi0, Output, spi0_mo- (MOSI signal) 4=
    *  spi0, Input, spi0_si- (MOSI signal) 5= ttc0, Output, ttc0_wave_out- (TT
    * C Waveform Clock) 6= ua0, Output, ua0_txd- (UART transmitter serial outp
    * ut) 7= trace, Output, tracedq[9]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_31_L3_SEL                              0

    * Configures MIO Pin 31 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18007C, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_31_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_32 @ 0XFF180080

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Input, gem0_rgmii_rx_c
    * lk- (RX RGMII clock)
    *  PSU_IOU_SLCR_MIO_PIN_32_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= nand, Input, nfc_dqs_in- (NA
    * ND Strobe) 1= nand, Output, nfc_dqs_out- (NAND Strobe)
    *  PSU_IOU_SLCR_MIO_PIN_32_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Output, pmu_gpo[0]- (PM
    * U GPI) 2= test_scan, Input, test_scan_in[32]- (Test Scan Port) = test_sc
    * an, Output, test_scan_out[32]- (Test Scan Port) 3= csu, Input, csu_ext_t
    * amper- (CSU Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_32_L2_SEL                              1

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[6]- (GPIO bank 1) 0= g
    * pio1, Output, gpio_1_pin_out[6]- (GPIO bank 1) 1= can1, Output, can1_phy
    * _tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i2c
    * 1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (Wa
    * tch Dog Timer Input clock) 4= spi1, Input, spi1_sclk_in- (SPI Clock) 4=
    * spi1, Output, spi1_sclk_out- (SPI Clock) 5= ttc3, Input, ttc3_clk_in- (T
    * TC Clock) 6= ua1, Output, ua1_txd- (UART transmitter serial output) 7= t
    * race, Output, tracedq[10]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_32_L3_SEL                              0

    * Configures MIO Pin 32 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180080, 0x000000FEU ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_32_OFFSET, 0x000000FEU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_33 @ 0XFF180084

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Input, gem0_rgmii_rxd[
    * 0]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_33_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= pcie, Input, pcie_reset_n- (
    * PCIE Reset signal)
    *  PSU_IOU_SLCR_MIO_PIN_33_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Output, pmu_gpo[1]- (PM
    * U GPI) 2= test_scan, Input, test_scan_in[33]- (Test Scan Port) = test_sc
    * an, Output, test_scan_out[33]- (Test Scan Port) 3= csu, Input, csu_ext_t
    * amper- (CSU Ext Tamper)
    *  PSU_IOU_SLCR_MIO_PIN_33_L2_SEL                              1

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[7]- (GPIO bank 1) 0= g
    * pio1, Output, gpio_1_pin_out[7]- (GPIO bank 1) 1= can1, Input, can1_phy_
    * rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2c1
    * , Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out- (W
    * atch Dog Timer Output clock) 4= spi1, Output, spi1_n_ss_out[2]- (SPI Mas
    * ter Selects) 5= ttc3, Output, ttc3_wave_out- (TTC Waveform Clock) 6= ua1
    * , Input, ua1_rxd- (UART receiver serial input) 7= trace, Output, tracedq
    * [11]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_33_L3_SEL                              0

    * Configures MIO Pin 33 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180084, 0x000000FEU ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_33_OFFSET, 0x000000FEU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_35 @ 0XFF18008C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Input, gem0_rgmii_rxd[
    * 2]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_35_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= pcie, Input, pcie_reset_n- (
    * PCIE Reset signal)
    *  PSU_IOU_SLCR_MIO_PIN_35_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Output, pmu_gpo[3]- (PM
    * U GPI) 2= test_scan, Input, test_scan_in[35]- (Test Scan Port) = test_sc
    * an, Output, test_scan_out[35]- (Test Scan Port) 3= dpaux, Input, dp_hot_
    * plug_detect- (Dp Aux Hot Plug)
    *  PSU_IOU_SLCR_MIO_PIN_35_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[9]- (GPIO bank 1) 0= g
    * pio1, Output, gpio_1_pin_out[9]- (GPIO bank 1) 1= can0, Output, can0_phy
    * _tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i2c
    * 0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out- (
    * Watch Dog Timer Output clock) 4= spi1, Input, spi1_n_ss_in- (SPI Master
    * Selects) 4= spi1, Output, spi1_n_ss_out[0]- (SPI Master Selects) 5= ttc2
    * , Output, ttc2_wave_out- (TTC Waveform Clock) 6= ua0, Output, ua0_txd- (
    * UART transmitter serial output) 7= trace, Output, tracedq[13]- (Trace Po
    * rt Databus)
    *  PSU_IOU_SLCR_MIO_PIN_35_L3_SEL                              0

    * Configures MIO Pin 35 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18008C, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_35_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_36 @ 0XFF180090

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Input, gem0_rgmii_rxd[
    * 3]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_36_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= pcie, Input, pcie_reset_n- (
    * PCIE Reset signal)
    *  PSU_IOU_SLCR_MIO_PIN_36_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Output, pmu_gpo[4]- (PM
    * U GPI) 2= test_scan, Input, test_scan_in[36]- (Test Scan Port) = test_sc
    * an, Output, test_scan_out[36]- (Test Scan Port) 3= dpaux, Input, dp_aux_
    * data_in- (Dp Aux Data) = dpaux, Output, dp_aux_data_out- (Dp Aux Data)
    *  PSU_IOU_SLCR_MIO_PIN_36_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[10]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[10]- (GPIO bank 1) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (
    * Watch Dog Timer Input clock) 4= spi1, Input, spi1_mi- (MISO signal) 4= s
    * pi1, Output, spi1_so- (MISO signal) 5= ttc1, Input, ttc1_clk_in- (TTC Cl
    * ock) 6= ua1, Output, ua1_txd- (UART transmitter serial output) 7= trace,
    *  Output, tracedq[14]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_36_L3_SEL                              0

    * Configures MIO Pin 36 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180090, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_36_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_37 @ 0XFF180094

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem0, Input, gem0_rgmii_rx_c
    * tl- (RX RGMII control )
    *  PSU_IOU_SLCR_MIO_PIN_37_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= pcie, Input, pcie_reset_n- (
    * PCIE Reset signal)
    *  PSU_IOU_SLCR_MIO_PIN_37_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= pmu, Output, pmu_gpo[5]- (PM
    * U GPI) 2= test_scan, Input, test_scan_in[37]- (Test Scan Port) = test_sc
    * an, Output, test_scan_out[37]- (Test Scan Port) 3= dpaux, Input, dp_hot_
    * plug_detect- (Dp Aux Hot Plug)
    *  PSU_IOU_SLCR_MIO_PIN_37_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[11]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[11]- (GPIO bank 1) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out-
    * (Watch Dog Timer Output clock) 4= spi1, Output, spi1_mo- (MOSI signal) 4
    * = spi1, Input, spi1_si- (MOSI signal) 5= ttc1, Output, ttc1_wave_out- (T
    * TC Waveform Clock) 6= ua1, Input, ua1_rxd- (UART receiver serial input)
    * 7= trace, Output, tracedq[15]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_37_L3_SEL                              0

    * Configures MIO Pin 37 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180094, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_37_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_38 @ 0XFF180098

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Output, gem1_rgmii_tx_
    * clk- (TX RGMII clock)
    *  PSU_IOU_SLCR_MIO_PIN_38_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_38_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Output, sdio0_clk_out-
    * (SDSDIO clock) 2= Not Used 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_38_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[12]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[12]- (GPIO bank 1) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= pjtag, Input, pjtag_tck- (PJTA
    * G TCK) 4= spi0, Input, spi0_sclk_in- (SPI Clock) 4= spi0, Output, spi0_s
    * clk_out- (SPI Clock) 5= ttc0, Input, ttc0_clk_in- (TTC Clock) 6= ua0, In
    * put, ua0_rxd- (UART receiver serial input) 7= trace, Output, trace_clk-
    * (Trace Port Clock)
    *  PSU_IOU_SLCR_MIO_PIN_38_L3_SEL                              4

    * Configures MIO Pin 38 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180098, 0x000000FEU ,0x00000080U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_38_OFFSET, 0x000000FEU, 0x00000080U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_39 @ 0XFF18009C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Output, gem1_rgmii_txd
    * [0]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_39_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_39_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sdio0_cd_n- (SD
    * card detect from connector) 2= sd1, Input, sd1_data_in[4]- (8-bit Data b
    * us) = sd1, Output, sdio1_data_out[4]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_39_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[13]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[13]- (GPIO bank 1) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tdi- (PJT
    * AG TDI) 4= spi0, Output, spi0_n_ss_out[2]- (SPI Master Selects) 5= ttc0,
    *  Output, ttc0_wave_out- (TTC Waveform Clock) 6= ua0, Output, ua0_txd- (U
    * ART transmitter serial output) 7= trace, Output, trace_ctl- (Trace Port
    * Control Signal)
    *  PSU_IOU_SLCR_MIO_PIN_39_L3_SEL                              0

    * Configures MIO Pin 39 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18009C, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_39_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_40 @ 0XFF1800A0

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Output, gem1_rgmii_txd
    * [1]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_40_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_40_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_cmd_in- (Com
    * mand Indicator) = sd0, Output, sdio0_cmd_out- (Command Indicator) 2= sd1
    * , Input, sd1_data_in[5]- (8-bit Data bus) = sd1, Output, sdio1_data_out[
    * 5]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_40_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[14]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[14]- (GPIO bank 1) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= pjtag, Output, pjtag_tdo- (PJ
    * TAG TDO) 4= spi0, Output, spi0_n_ss_out[1]- (SPI Master Selects) 5= ttc3
    * , Input, ttc3_clk_in- (TTC Clock) 6= ua1, Output, ua1_txd- (UART transmi
    * tter serial output) 7= trace, Output, tracedq[0]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_40_L3_SEL                              0

    * Configures MIO Pin 40 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800A0, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_40_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_41 @ 0XFF1800A4

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Output, gem1_rgmii_txd
    * [2]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_41_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_41_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[0]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[0]- (8-bit Data bus) 2= s
    * d1, Input, sd1_data_in[6]- (8-bit Data bus) = sd1, Output, sdio1_data_ou
    * t[6]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_41_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[15]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[15]- (GPIO bank 1) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tms- (PJTA
    * G TMS) 4= spi0, Input, spi0_n_ss_in- (SPI Master Selects) 4= spi0, Outpu
    * t, spi0_n_ss_out[0]- (SPI Master Selects) 5= ttc3, Output, ttc3_wave_out
    * - (TTC Waveform Clock) 6= ua1, Input, ua1_rxd- (UART receiver serial inp
    * ut) 7= trace, Output, tracedq[1]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_41_L3_SEL                              4

    * Configures MIO Pin 41 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800A4, 0x000000FEU ,0x00000080U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_41_OFFSET, 0x000000FEU, 0x00000080U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_42 @ 0XFF1800A8

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Output, gem1_rgmii_txd
    * [3]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_42_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_42_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[1]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[1]- (8-bit Data bus) 2= s
    * d1, Input, sd1_data_in[7]- (8-bit Data bus) = sd1, Output, sdio1_data_ou
    * t[7]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_42_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[16]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[16]- (GPIO bank 1) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (W
    * atch Dog Timer Input clock) 4= spi0, Input, spi0_mi- (MISO signal) 4= sp
    * i0, Output, spi0_so- (MISO signal) 5= ttc2, Input, ttc2_clk_in- (TTC Clo
    * ck) 6= ua0, Input, ua0_rxd- (UART receiver serial input) 7= trace, Outpu
    * t, tracedq[2]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_42_L3_SEL                              4

    * Configures MIO Pin 42 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800A8, 0x000000FEU ,0x00000080U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_42_OFFSET, 0x000000FEU, 0x00000080U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_43 @ 0XFF1800AC

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Output, gem1_rgmii_tx_
    * ctl- (TX RGMII control)
    *  PSU_IOU_SLCR_MIO_PIN_43_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_43_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[2]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[2]- (8-bit Data bus) 2= s
    * d1, Output, sdio1_bus_pow- (SD card bus power) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_43_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[17]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[17]- (GPIO bank 1) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out-
    *  (Watch Dog Timer Output clock) 4= spi0, Output, spi0_mo- (MOSI signal)
    * 4= spi0, Input, spi0_si- (MOSI signal) 5= ttc2, Output, ttc2_wave_out- (
    * TTC Waveform Clock) 6= ua0, Output, ua0_txd- (UART transmitter serial ou
    * tput) 7= trace, Output, tracedq[3]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_43_L3_SEL                              4

    * Configures MIO Pin 43 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800AC, 0x000000FEU ,0x00000080U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_43_OFFSET, 0x000000FEU, 0x00000080U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_44 @ 0XFF1800B0

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Input, gem1_rgmii_rx_c
    * lk- (RX RGMII clock)
    *  PSU_IOU_SLCR_MIO_PIN_44_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_44_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[3]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[3]- (8-bit Data bus) 2= s
    * d1, Input, sdio1_wp- (SD card write protect from connector) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_44_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[18]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[18]- (GPIO bank 1) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (
    * Watch Dog Timer Input clock) 4= spi1, Input, spi1_sclk_in- (SPI Clock) 4
    * = spi1, Output, spi1_sclk_out- (SPI Clock) 5= ttc1, Input, ttc1_clk_in-
    * (TTC Clock) 6= ua1, Output, ua1_txd- (UART transmitter serial output) 7=
    *  Not Used
    *  PSU_IOU_SLCR_MIO_PIN_44_L3_SEL                              0

    * Configures MIO Pin 44 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800B0, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_44_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_45 @ 0XFF1800B4

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Input, gem1_rgmii_rxd[
    * 0]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_45_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_45_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[4]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[4]- (8-bit Data bus) 2= s
    * d1, Input, sdio1_cd_n- (SD card detect from connector) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_45_L2_SEL                              0

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[19]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[19]- (GPIO bank 1) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out-
    * (Watch Dog Timer Output clock) 4= spi1, Output, spi1_n_ss_out[2]- (SPI M
    * aster Selects) 5= ttc1, Output, ttc1_wave_out- (TTC Waveform Clock) 6= u
    * a1, Input, ua1_rxd- (UART receiver serial input) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_45_L3_SEL                              0

    * Configures MIO Pin 45 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800B4, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_45_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_46 @ 0XFF1800B8

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Input, gem1_rgmii_rxd[
    * 1]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_46_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_46_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[5]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[5]- (8-bit Data bus) 2= s
    * d1, Input, sd1_data_in[0]- (8-bit Data bus) = sd1, Output, sdio1_data_ou
    * t[0]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_46_L2_SEL                              2

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[20]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[20]- (GPIO bank 1) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (W
    * atch Dog Timer Input clock) 4= spi1, Output, spi1_n_ss_out[1]- (SPI Mast
    * er Selects) 5= ttc0, Input, ttc0_clk_in- (TTC Clock) 6= ua0, Input, ua0_
    * rxd- (UART receiver serial input) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_46_L3_SEL                              0

    * Configures MIO Pin 46 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800B8, 0x000000FEU ,0x00000010U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_46_OFFSET, 0x000000FEU, 0x00000010U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_47 @ 0XFF1800BC

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Input, gem1_rgmii_rxd[
    * 2]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_47_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_47_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[6]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[6]- (8-bit Data bus) 2= s
    * d1, Input, sd1_data_in[1]- (8-bit Data bus) = sd1, Output, sdio1_data_ou
    * t[1]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_47_L2_SEL                              2

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[21]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[21]- (GPIO bank 1) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out-
    *  (Watch Dog Timer Output clock) 4= spi1, Input, spi1_n_ss_in- (SPI Maste
    * r Selects) 4= spi1, Output, spi1_n_ss_out[0]- (SPI Master Selects) 5= tt
    * c0, Output, ttc0_wave_out- (TTC Waveform Clock) 6= ua0, Output, ua0_txd-
    *  (UART transmitter serial output) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_47_L3_SEL                              0

    * Configures MIO Pin 47 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800BC, 0x000000FEU ,0x00000010U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_47_OFFSET, 0x000000FEU, 0x00000010U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_48 @ 0XFF1800C0

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Input, gem1_rgmii_rxd[
    * 3]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_48_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_48_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[7]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[7]- (8-bit Data bus) 2= s
    * d1, Input, sd1_data_in[2]- (8-bit Data bus) = sd1, Output, sdio1_data_ou
    * t[2]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_48_L2_SEL                              2

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[22]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[22]- (GPIO bank 1) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (
    * Watch Dog Timer Input clock) 4= spi1, Input, spi1_mi- (MISO signal) 4= s
    * pi1, Output, spi1_so- (MISO signal) 5= ttc3, Input, ttc3_clk_in- (TTC Cl
    * ock) 6= ua1, Output, ua1_txd- (UART transmitter serial output) 7= Not Us
    * ed
    *  PSU_IOU_SLCR_MIO_PIN_48_L3_SEL                              0

    * Configures MIO Pin 48 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800C0, 0x000000FEU ,0x00000010U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_48_OFFSET, 0x000000FEU, 0x00000010U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_49 @ 0XFF1800C4

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem1, Input, gem1_rgmii_rx_c
    * tl- (RX RGMII control )
    *  PSU_IOU_SLCR_MIO_PIN_49_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_49_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Output, sdio0_bus_pow-
    * (SD card bus power) 2= sd1, Input, sd1_data_in[3]- (8-bit Data bus) = sd
    * 1, Output, sdio1_data_out[3]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_49_L2_SEL                              2

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[23]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[23]- (GPIO bank 1) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out-
    * (Watch Dog Timer Output clock) 4= spi1, Output, spi1_mo- (MOSI signal) 4
    * = spi1, Input, spi1_si- (MOSI signal) 5= ttc3, Output, ttc3_wave_out- (T
    * TC Waveform Clock) 6= ua1, Input, ua1_rxd- (UART receiver serial input)
    * 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_49_L3_SEL                              0

    * Configures MIO Pin 49 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800C4, 0x000000FEU ,0x00000010U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_49_OFFSET, 0x000000FEU, 0x00000010U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_50 @ 0XFF1800C8

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem_tsu, Input, gem_tsu_clk-
    *  (TSU clock)
    *  PSU_IOU_SLCR_MIO_PIN_50_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_50_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sdio0_wp- (SD ca
    * rd write protect from connector) 2= sd1, Input, sd1_cmd_in- (Command Ind
    * icator) = sd1, Output, sdio1_cmd_out- (Command Indicator) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_50_L2_SEL                              2

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[24]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[24]- (GPIO bank 1) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (W
    * atch Dog Timer Input clock) 4= mdio1, Output, gem1_mdc- (MDIO Clock) 5=
    * ttc2, Input, ttc2_clk_in- (TTC Clock) 6= ua0, Input, ua0_rxd- (UART rece
    * iver serial input) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_50_L3_SEL                              0

    * Configures MIO Pin 50 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800C8, 0x000000FEU ,0x00000010U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_50_OFFSET, 0x000000FEU, 0x00000010U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_51 @ 0XFF1800CC

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem_tsu, Input, gem_tsu_clk-
    *  (TSU clock)
    *  PSU_IOU_SLCR_MIO_PIN_51_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_51_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= sd1, Output, sdi
    * o1_clk_out- (SDSDIO clock) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_51_L2_SEL                              2

    * Level 3 Mux Select 0= gpio1, Input, gpio_1_pin_in[25]- (GPIO bank 1) 0=
    * gpio1, Output, gpio_1_pin_out[25]- (GPIO bank 1) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out-
    *  (Watch Dog Timer Output clock) 4= mdio1, Input, gem1_mdio_in- (MDIO Dat
    * a) 4= mdio1, Output, gem1_mdio_out- (MDIO Data) 5= ttc2, Output, ttc2_wa
    * ve_out- (TTC Waveform Clock) 6= ua0, Output, ua0_txd- (UART transmitter
    * serial output) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_51_L3_SEL                              0

    * Configures MIO Pin 51 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800CC, 0x000000FEU ,0x00000010U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_51_OFFSET, 0x000000FEU, 0x00000010U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_52 @ 0XFF1800D0

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Output, gem2_rgmii_tx_
    * clk- (TX RGMII clock)
    *  PSU_IOU_SLCR_MIO_PIN_52_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_clk_i
    * n- (ULPI Clock)
    *  PSU_IOU_SLCR_MIO_PIN_52_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_52_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[0]- (GPIO bank 2) 0= g
    * pio2, Output, gpio_2_pin_out[0]- (GPIO bank 2) 1= can1, Output, can1_phy
    * _tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i2c
    * 1, Output, i2c1_scl_out- (SCL signal) 3= pjtag, Input, pjtag_tck- (PJTAG
    *  TCK) 4= spi0, Input, spi0_sclk_in- (SPI Clock) 4= spi0, Output, spi0_sc
    * lk_out- (SPI Clock) 5= ttc1, Input, ttc1_clk_in- (TTC Clock) 6= ua1, Out
    * put, ua1_txd- (UART transmitter serial output) 7= trace, Output, trace_c
    * lk- (Trace Port Clock)
    *  PSU_IOU_SLCR_MIO_PIN_52_L3_SEL                              0

    * Configures MIO Pin 52 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800D0, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_52_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_53 @ 0XFF1800D4

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Output, gem2_rgmii_txd
    * [0]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_53_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_dir-
    * (Data bus direction control)
    *  PSU_IOU_SLCR_MIO_PIN_53_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_53_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[1]- (GPIO bank 2) 0= g
    * pio2, Output, gpio_2_pin_out[1]- (GPIO bank 2) 1= can1, Input, can1_phy_
    * rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2c1
    * , Output, i2c1_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tdi- (PJTAG
    * TDI) 4= spi0, Output, spi0_n_ss_out[2]- (SPI Master Selects) 5= ttc1, Ou
    * tput, ttc1_wave_out- (TTC Waveform Clock) 6= ua1, Input, ua1_rxd- (UART
    * receiver serial input) 7= trace, Output, trace_ctl- (Trace Port Control
    * Signal)
    *  PSU_IOU_SLCR_MIO_PIN_53_L3_SEL                              0

    * Configures MIO Pin 53 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800D4, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_53_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_54 @ 0XFF1800D8

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Output, gem2_rgmii_txd
    * [1]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_54_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_rx_da
    * ta[2]- (ULPI data bus) 1= usb0, Output, usb0_ulpi_tx_data[2]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_54_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_54_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[2]- (GPIO bank 2) 0= g
    * pio2, Output, gpio_2_pin_out[2]- (GPIO bank 2) 1= can0, Input, can0_phy_
    * rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2c0
    * , Output, i2c0_scl_out- (SCL signal) 3= pjtag, Output, pjtag_tdo- (PJTAG
    *  TDO) 4= spi0, Output, spi0_n_ss_out[1]- (SPI Master Selects) 5= ttc0, I
    * nput, ttc0_clk_in- (TTC Clock) 6= ua0, Input, ua0_rxd- (UART receiver se
    * rial input) 7= trace, Output, tracedq[0]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_54_L3_SEL                              0

    * Configures MIO Pin 54 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800D8, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_54_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_55 @ 0XFF1800DC

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Output, gem2_rgmii_txd
    * [2]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_55_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_nxt-
    * (Data flow control signal from the PHY)
    *  PSU_IOU_SLCR_MIO_PIN_55_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_55_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[3]- (GPIO bank 2) 0= g
    * pio2, Output, gpio_2_pin_out[3]- (GPIO bank 2) 1= can0, Output, can0_phy
    * _tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i2c
    * 0, Output, i2c0_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tms- (PJTAG
    *  TMS) 4= spi0, Input, spi0_n_ss_in- (SPI Master Selects) 4= spi0, Output
    * , spi0_n_ss_out[0]- (SPI Master Selects) 5= ttc0, Output, ttc0_wave_out-
    *  (TTC Waveform Clock) 6= ua0, Output, ua0_txd- (UART transmitter serial
    * output) 7= trace, Output, tracedq[1]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_55_L3_SEL                              0

    * Configures MIO Pin 55 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800DC, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_55_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_56 @ 0XFF1800E0

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Output, gem2_rgmii_txd
    * [3]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_56_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_rx_da
    * ta[0]- (ULPI data bus) 1= usb0, Output, usb0_ulpi_tx_data[0]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_56_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_56_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[4]- (GPIO bank 2) 0= g
    * pio2, Output, gpio_2_pin_out[4]- (GPIO bank 2) 1= can1, Output, can1_phy
    * _tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i2c
    * 1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (Wa
    * tch Dog Timer Input clock) 4= spi0, Input, spi0_mi- (MISO signal) 4= spi
    * 0, Output, spi0_so- (MISO signal) 5= ttc3, Input, ttc3_clk_in- (TTC Cloc
    * k) 6= ua1, Output, ua1_txd- (UART transmitter serial output) 7= trace, O
    * utput, tracedq[2]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_56_L3_SEL                              0

    * Configures MIO Pin 56 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800E0, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_56_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_57 @ 0XFF1800E4

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Output, gem2_rgmii_tx_
    * ctl- (TX RGMII control)
    *  PSU_IOU_SLCR_MIO_PIN_57_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_rx_da
    * ta[1]- (ULPI data bus) 1= usb0, Output, usb0_ulpi_tx_data[1]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_57_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_57_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[5]- (GPIO bank 2) 0= g
    * pio2, Output, gpio_2_pin_out[5]- (GPIO bank 2) 1= can1, Input, can1_phy_
    * rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2c1
    * , Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out- (W
    * atch Dog Timer Output clock) 4= spi0, Output, spi0_mo- (MOSI signal) 4=
    * spi0, Input, spi0_si- (MOSI signal) 5= ttc3, Output, ttc3_wave_out- (TTC
    *  Waveform Clock) 6= ua1, Input, ua1_rxd- (UART receiver serial input) 7=
    *  trace, Output, tracedq[3]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_57_L3_SEL                              0

    * Configures MIO Pin 57 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800E4, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_57_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_58 @ 0XFF1800E8

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Input, gem2_rgmii_rx_c
    * lk- (RX RGMII clock)
    *  PSU_IOU_SLCR_MIO_PIN_58_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Output, usb0_ulpi_stp-
    *  (Asserted to end or interrupt transfers)
    *  PSU_IOU_SLCR_MIO_PIN_58_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_58_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[6]- (GPIO bank 2) 0= g
    * pio2, Output, gpio_2_pin_out[6]- (GPIO bank 2) 1= can0, Input, can0_phy_
    * rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2c0
    * , Output, i2c0_scl_out- (SCL signal) 3= pjtag, Input, pjtag_tck- (PJTAG
    * TCK) 4= spi1, Input, spi1_sclk_in- (SPI Clock) 4= spi1, Output, spi1_scl
    * k_out- (SPI Clock) 5= ttc2, Input, ttc2_clk_in- (TTC Clock) 6= ua0, Inpu
    * t, ua0_rxd- (UART receiver serial input) 7= trace, Output, tracedq[4]- (
    * Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_58_L3_SEL                              0

    * Configures MIO Pin 58 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800E8, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_58_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_59 @ 0XFF1800EC

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Input, gem2_rgmii_rxd[
    * 0]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_59_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_rx_da
    * ta[3]- (ULPI data bus) 1= usb0, Output, usb0_ulpi_tx_data[3]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_59_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_59_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[7]- (GPIO bank 2) 0= g
    * pio2, Output, gpio_2_pin_out[7]- (GPIO bank 2) 1= can0, Output, can0_phy
    * _tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i2c
    * 0, Output, i2c0_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tdi- (PJTAG
    *  TDI) 4= spi1, Output, spi1_n_ss_out[2]- (SPI Master Selects) 5= ttc2, O
    * utput, ttc2_wave_out- (TTC Waveform Clock) 6= ua0, Output, ua0_txd- (UAR
    * T transmitter serial output) 7= trace, Output, tracedq[5]- (Trace Port D
    * atabus)
    *  PSU_IOU_SLCR_MIO_PIN_59_L3_SEL                              0

    * Configures MIO Pin 59 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800EC, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_59_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_60 @ 0XFF1800F0

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Input, gem2_rgmii_rxd[
    * 1]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_60_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_rx_da
    * ta[4]- (ULPI data bus) 1= usb0, Output, usb0_ulpi_tx_data[4]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_60_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_60_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[8]- (GPIO bank 2) 0= g
    * pio2, Output, gpio_2_pin_out[8]- (GPIO bank 2) 1= can1, Output, can1_phy
    * _tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i2c
    * 1, Output, i2c1_scl_out- (SCL signal) 3= pjtag, Output, pjtag_tdo- (PJTA
    * G TDO) 4= spi1, Output, spi1_n_ss_out[1]- (SPI Master Selects) 5= ttc1,
    * Input, ttc1_clk_in- (TTC Clock) 6= ua1, Output, ua1_txd- (UART transmitt
    * er serial output) 7= trace, Output, tracedq[6]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_60_L3_SEL                              0

    * Configures MIO Pin 60 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800F0, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_60_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_61 @ 0XFF1800F4

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Input, gem2_rgmii_rxd[
    * 2]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_61_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_rx_da
    * ta[5]- (ULPI data bus) 1= usb0, Output, usb0_ulpi_tx_data[5]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_61_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_61_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[9]- (GPIO bank 2) 0= g
    * pio2, Output, gpio_2_pin_out[9]- (GPIO bank 2) 1= can1, Input, can1_phy_
    * rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2c1
    * , Output, i2c1_sda_out- (SDA signal) 3= pjtag, Input, pjtag_tms- (PJTAG
    * TMS) 4= spi1, Input, spi1_n_ss_in- (SPI Master Selects) 4= spi1, Output,
    *  spi1_n_ss_out[0]- (SPI Master Selects) 5= ttc1, Output, ttc1_wave_out-
    * (TTC Waveform Clock) 6= ua1, Input, ua1_rxd- (UART receiver serial input
    * ) 7= trace, Output, tracedq[7]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_61_L3_SEL                              0

    * Configures MIO Pin 61 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800F4, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_61_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_62 @ 0XFF1800F8

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Input, gem2_rgmii_rxd[
    * 3]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_62_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_rx_da
    * ta[6]- (ULPI data bus) 1= usb0, Output, usb0_ulpi_tx_data[6]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_62_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_62_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[10]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[10]- (GPIO bank 2) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (W
    * atch Dog Timer Input clock) 4= spi1, Input, spi1_mi- (MISO signal) 4= sp
    * i1, Output, spi1_so- (MISO signal) 5= ttc0, Input, ttc0_clk_in- (TTC Clo
    * ck) 6= ua0, Input, ua0_rxd- (UART receiver serial input) 7= trace, Outpu
    * t, tracedq[8]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_62_L3_SEL                              0

    * Configures MIO Pin 62 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800F8, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_62_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_63 @ 0XFF1800FC

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem2, Input, gem2_rgmii_rx_c
    * tl- (RX RGMII control )
    *  PSU_IOU_SLCR_MIO_PIN_63_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb0, Input, usb0_ulpi_rx_da
    * ta[7]- (ULPI data bus) 1= usb0, Output, usb0_ulpi_tx_data[7]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_63_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= Not Used 3= Not
    * Used
    *  PSU_IOU_SLCR_MIO_PIN_63_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[11]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[11]- (GPIO bank 2) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out-
    *  (Watch Dog Timer Output clock) 4= spi1, Output, spi1_mo- (MOSI signal)
    * 4= spi1, Input, spi1_si- (MOSI signal) 5= ttc0, Output, ttc0_wave_out- (
    * TTC Waveform Clock) 6= ua0, Output, ua0_txd- (UART transmitter serial ou
    * tput) 7= trace, Output, tracedq[9]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_63_L3_SEL                              0

    * Configures MIO Pin 63 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF1800FC, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_63_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_64 @ 0XFF180100

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Output, gem3_rgmii_tx_
    * clk- (TX RGMII clock)
    *  PSU_IOU_SLCR_MIO_PIN_64_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_clk_i
    * n- (ULPI Clock)
    *  PSU_IOU_SLCR_MIO_PIN_64_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Output, sdio0_clk_out-
    * (SDSDIO clock) 2= Not Used 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_64_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[12]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[12]- (GPIO bank 2) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (
    * Watch Dog Timer Input clock) 4= spi0, Input, spi0_sclk_in- (SPI Clock) 4
    * = spi0, Output, spi0_sclk_out- (SPI Clock) 5= ttc3, Input, ttc3_clk_in-
    * (TTC Clock) 6= ua1, Output, ua1_txd- (UART transmitter serial output) 7=
    *  trace, Output, tracedq[10]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_64_L3_SEL                              0

    * Configures MIO Pin 64 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180100, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_64_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_65 @ 0XFF180104

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Output, gem3_rgmii_txd
    * [0]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_65_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_dir-
    * (Data bus direction control)
    *  PSU_IOU_SLCR_MIO_PIN_65_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sdio0_cd_n- (SD
    * card detect from connector) 2= Not Used 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_65_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[13]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[13]- (GPIO bank 2) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out-
    * (Watch Dog Timer Output clock) 4= spi0, Output, spi0_n_ss_out[2]- (SPI M
    * aster Selects) 5= ttc3, Output, ttc3_wave_out- (TTC Waveform Clock) 6= u
    * a1, Input, ua1_rxd- (UART receiver serial input) 7= trace, Output, trace
    * dq[11]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_65_L3_SEL                              0

    * Configures MIO Pin 65 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180104, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_65_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_66 @ 0XFF180108

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Output, gem3_rgmii_txd
    * [1]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_66_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_rx_da
    * ta[2]- (ULPI data bus) 1= usb1, Output, usb1_ulpi_tx_data[2]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_66_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_cmd_in- (Com
    * mand Indicator) = sd0, Output, sdio0_cmd_out- (Command Indicator) 2= Not
    *  Used 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_66_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[14]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[14]- (GPIO bank 2) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (W
    * atch Dog Timer Input clock) 4= spi0, Output, spi0_n_ss_out[1]- (SPI Mast
    * er Selects) 5= ttc2, Input, ttc2_clk_in- (TTC Clock) 6= ua0, Input, ua0_
    * rxd- (UART receiver serial input) 7= trace, Output, tracedq[12]- (Trace
    * Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_66_L3_SEL                              0

    * Configures MIO Pin 66 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180108, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_66_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_67 @ 0XFF18010C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Output, gem3_rgmii_txd
    * [2]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_67_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_nxt-
    * (Data flow control signal from the PHY)
    *  PSU_IOU_SLCR_MIO_PIN_67_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[0]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[0]- (8-bit Data bus) 2= N
    * ot Used 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_67_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[15]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[15]- (GPIO bank 2) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out-
    *  (Watch Dog Timer Output clock) 4= spi0, Input, spi0_n_ss_in- (SPI Maste
    * r Selects) 4= spi0, Output, spi0_n_ss_out[0]- (SPI Master Selects) 5= tt
    * c2, Output, ttc2_wave_out- (TTC Waveform Clock) 6= ua0, Output, ua0_txd-
    *  (UART transmitter serial output) 7= trace, Output, tracedq[13]- (Trace
    * Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_67_L3_SEL                              0

    * Configures MIO Pin 67 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18010C, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_67_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_68 @ 0XFF180110

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Output, gem3_rgmii_txd
    * [3]- (TX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_68_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_rx_da
    * ta[0]- (ULPI data bus) 1= usb1, Output, usb1_ulpi_tx_data[0]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_68_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[1]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[1]- (8-bit Data bus) 2= N
    * ot Used 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_68_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[16]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[16]- (GPIO bank 2) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (
    * Watch Dog Timer Input clock) 4= spi0, Input, spi0_mi- (MISO signal) 4= s
    * pi0, Output, spi0_so- (MISO signal) 5= ttc1, Input, ttc1_clk_in- (TTC Cl
    * ock) 6= ua1, Output, ua1_txd- (UART transmitter serial output) 7= trace,
    *  Output, tracedq[14]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_68_L3_SEL                              0

    * Configures MIO Pin 68 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180110, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_68_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_69 @ 0XFF180114

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Output, gem3_rgmii_tx_
    * ctl- (TX RGMII control)
    *  PSU_IOU_SLCR_MIO_PIN_69_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_rx_da
    * ta[1]- (ULPI data bus) 1= usb1, Output, usb1_ulpi_tx_data[1]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_69_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[2]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[2]- (8-bit Data bus) 2= s
    * d1, Input, sdio1_wp- (SD card write protect from connector) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_69_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[17]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[17]- (GPIO bank 2) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out-
    * (Watch Dog Timer Output clock) 4= spi0, Output, spi0_mo- (MOSI signal) 4
    * = spi0, Input, spi0_si- (MOSI signal) 5= ttc1, Output, ttc1_wave_out- (T
    * TC Waveform Clock) 6= ua1, Input, ua1_rxd- (UART receiver serial input)
    * 7= trace, Output, tracedq[15]- (Trace Port Databus)
    *  PSU_IOU_SLCR_MIO_PIN_69_L3_SEL                              0

    * Configures MIO Pin 69 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180114, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_69_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_70 @ 0XFF180118

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Input, gem3_rgmii_rx_c
    * lk- (RX RGMII clock)
    *  PSU_IOU_SLCR_MIO_PIN_70_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Output, usb1_ulpi_stp-
    *  (Asserted to end or interrupt transfers)
    *  PSU_IOU_SLCR_MIO_PIN_70_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[3]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[3]- (8-bit Data bus) 2= s
    * d1, Output, sdio1_bus_pow- (SD card bus power) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_70_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[18]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[18]- (GPIO bank 2) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (W
    * atch Dog Timer Input clock) 4= spi1, Input, spi1_sclk_in- (SPI Clock) 4=
    *  spi1, Output, spi1_sclk_out- (SPI Clock) 5= ttc0, Input, ttc0_clk_in- (
    * TTC Clock) 6= ua0, Input, ua0_rxd- (UART receiver serial input) 7= Not U
    * sed
    *  PSU_IOU_SLCR_MIO_PIN_70_L3_SEL                              0

    * Configures MIO Pin 70 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180118, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_70_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_71 @ 0XFF18011C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Input, gem3_rgmii_rxd[
    * 0]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_71_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_rx_da
    * ta[3]- (ULPI data bus) 1= usb1, Output, usb1_ulpi_tx_data[3]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_71_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[4]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[4]- (8-bit Data bus) 2= s
    * d1, Input, sd1_data_in[0]- (8-bit Data bus) = sd1, Output, sdio1_data_ou
    * t[0]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_71_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[19]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[19]- (GPIO bank 2) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out-
    *  (Watch Dog Timer Output clock) 4= spi1, Output, spi1_n_ss_out[2]- (SPI
    * Master Selects) 5= ttc0, Output, ttc0_wave_out- (TTC Waveform Clock) 6=
    * ua0, Output, ua0_txd- (UART transmitter serial output) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_71_L3_SEL                              0

    * Configures MIO Pin 71 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18011C, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_71_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_72 @ 0XFF180120

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Input, gem3_rgmii_rxd[
    * 1]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_72_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_rx_da
    * ta[4]- (ULPI data bus) 1= usb1, Output, usb1_ulpi_tx_data[4]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_72_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[5]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[5]- (8-bit Data bus) 2= s
    * d1, Input, sd1_data_in[1]- (8-bit Data bus) = sd1, Output, sdio1_data_ou
    * t[1]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_72_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[20]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[20]- (GPIO bank 2) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= swdt1, Input, swdt1_clk_in- (
    * Watch Dog Timer Input clock) 4= spi1, Output, spi1_n_ss_out[1]- (SPI Mas
    * ter Selects) 5= Not Used 6= ua1, Output, ua1_txd- (UART transmitter seri
    * al output) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_72_L3_SEL                              0

    * Configures MIO Pin 72 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180120, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_72_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_73 @ 0XFF180124

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Input, gem3_rgmii_rxd[
    * 2]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_73_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_rx_da
    * ta[5]- (ULPI data bus) 1= usb1, Output, usb1_ulpi_tx_data[5]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_73_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[6]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[6]- (8-bit Data bus) 2= s
    * d1, Input, sd1_data_in[2]- (8-bit Data bus) = sd1, Output, sdio1_data_ou
    * t[2]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_73_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[21]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[21]- (GPIO bank 2) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= swdt1, Output, swdt1_rst_out-
    * (Watch Dog Timer Output clock) 4= spi1, Input, spi1_n_ss_in- (SPI Master
    *  Selects) 4= spi1, Output, spi1_n_ss_out[0]- (SPI Master Selects) 5= Not
    *  Used 6= ua1, Input, ua1_rxd- (UART receiver serial input) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_73_L3_SEL                              0

    * Configures MIO Pin 73 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180124, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_73_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_74 @ 0XFF180128

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Input, gem3_rgmii_rxd[
    * 3]- (RX RGMII data)
    *  PSU_IOU_SLCR_MIO_PIN_74_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_rx_da
    * ta[6]- (ULPI data bus) 1= usb1, Output, usb1_ulpi_tx_data[6]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_74_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sd0_data_in[7]-
    * (8-bit Data bus) = sd0, Output, sdio0_data_out[7]- (8-bit Data bus) 2= s
    * d1, Input, sd1_data_in[3]- (8-bit Data bus) = sd1, Output, sdio1_data_ou
    * t[3]- (8-bit Data bus) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_74_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[22]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[22]- (GPIO bank 2) 1= can0, Input, can0_ph
    * y_rx- (Can RX signal) 2= i2c0, Input, i2c0_scl_input- (SCL signal) 2= i2
    * c0, Output, i2c0_scl_out- (SCL signal) 3= swdt0, Input, swdt0_clk_in- (W
    * atch Dog Timer Input clock) 4= spi1, Input, spi1_mi- (MISO signal) 4= sp
    * i1, Output, spi1_so- (MISO signal) 5= Not Used 6= ua0, Input, ua0_rxd- (
    * UART receiver serial input) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_74_L3_SEL                              0

    * Configures MIO Pin 74 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180128, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_74_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_75 @ 0XFF18012C

    * Level 0 Mux Select 0= Level 1 Mux Output 1= gem3, Input, gem3_rgmii_rx_c
    * tl- (RX RGMII control )
    *  PSU_IOU_SLCR_MIO_PIN_75_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= usb1, Input, usb1_ulpi_rx_da
    * ta[7]- (ULPI data bus) 1= usb1, Output, usb1_ulpi_tx_data[7]- (ULPI data
    *  bus)
    *  PSU_IOU_SLCR_MIO_PIN_75_L1_SEL                              1

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Output, sdio0_bus_pow-
    * (SD card bus power) 2= sd1, Input, sd1_cmd_in- (Command Indicator) = sd1
    * , Output, sdio1_cmd_out- (Command Indicator) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_75_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[23]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[23]- (GPIO bank 2) 1= can0, Output, can0_p
    * hy_tx- (Can TX signal) 2= i2c0, Input, i2c0_sda_input- (SDA signal) 2= i
    * 2c0, Output, i2c0_sda_out- (SDA signal) 3= swdt0, Output, swdt0_rst_out-
    *  (Watch Dog Timer Output clock) 4= spi1, Output, spi1_mo- (MOSI signal)
    * 4= spi1, Input, spi1_si- (MOSI signal) 5= Not Used 6= ua0, Output, ua0_t
    * xd- (UART transmitter serial output) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_75_L3_SEL                              0

    * Configures MIO Pin 75 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF18012C, 0x000000FEU ,0x00000004U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_75_OFFSET, 0x000000FEU, 0x00000004U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_76 @ 0XFF180130

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_76_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_76_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= sd0, Input, sdio0_wp- (SD ca
    * rd write protect from connector) 2= sd1, Output, sdio1_clk_out- (SDSDIO
    * clock) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_76_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[24]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[24]- (GPIO bank 2) 1= can1, Output, can1_p
    * hy_tx- (Can TX signal) 2= i2c1, Input, i2c1_scl_input- (SCL signal) 2= i
    * 2c1, Output, i2c1_scl_out- (SCL signal) 3= mdio0, Output, gem0_mdc- (MDI
    * O Clock) 4= mdio1, Output, gem1_mdc- (MDIO Clock) 5= mdio2, Output, gem2
    * _mdc- (MDIO Clock) 6= mdio3, Output, gem3_mdc- (MDIO Clock) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_76_L3_SEL                              0

    * Configures MIO Pin 76 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180130, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_76_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_PIN_77 @ 0XFF180134

    * Level 0 Mux Select 0= Level 1 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_77_L0_SEL                              0

    * Level 1 Mux Select 0= Level 2 Mux Output 1= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_77_L1_SEL                              0

    * Level 2 Mux Select 0= Level 3 Mux Output 1= Not Used 2= sd1, Input, sdio
    * 1_cd_n- (SD card detect from connector) 3= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_77_L2_SEL                              0

    * Level 3 Mux Select 0= gpio2, Input, gpio_2_pin_in[25]- (GPIO bank 2) 0=
    * gpio2, Output, gpio_2_pin_out[25]- (GPIO bank 2) 1= can1, Input, can1_ph
    * y_rx- (Can RX signal) 2= i2c1, Input, i2c1_sda_input- (SDA signal) 2= i2
    * c1, Output, i2c1_sda_out- (SDA signal) 3= mdio0, Input, gem0_mdio_in- (M
    * DIO Data) 3= mdio0, Output, gem0_mdio_out- (MDIO Data) 4= mdio1, Input,
    * gem1_mdio_in- (MDIO Data) 4= mdio1, Output, gem1_mdio_out- (MDIO Data) 5
    * = mdio2, Input, gem2_mdio_in- (MDIO Data) 5= mdio2, Output, gem2_mdio_ou
    * t- (MDIO Data) 6= mdio3, Input, gem3_mdio_in- (MDIO Data) 6= mdio3, Outp
    * ut, gem3_mdio_out- (MDIO Data) 7= Not Used
    *  PSU_IOU_SLCR_MIO_PIN_77_L3_SEL                              0

    * Configures MIO Pin 77 peripheral interface mapping
    * (OFFSET, MASK, VALUE)      (0XFF180134, 0x000000FEU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_PIN_77_OFFSET, 0x000000FEU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : MIO_MST_TRI0 @ 0XFF180204

    * Master Tri-state Enable for pin 0, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_00_TRI                        0

    * Master Tri-state Enable for pin 1, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_01_TRI                        1

    * Master Tri-state Enable for pin 2, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_02_TRI                        1

    * Master Tri-state Enable for pin 3, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_03_TRI                        0

    * Master Tri-state Enable for pin 4, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_04_TRI                        0

    * Master Tri-state Enable for pin 5, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_05_TRI                        0

    * Master Tri-state Enable for pin 6, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_06_TRI                        0

    * Master Tri-state Enable for pin 7, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_07_TRI                        0

    * Master Tri-state Enable for pin 8, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_08_TRI                        0

    * Master Tri-state Enable for pin 9, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_09_TRI                        0

    * Master Tri-state Enable for pin 10, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_10_TRI                        0

    * Master Tri-state Enable for pin 11, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_11_TRI                        0

    * Master Tri-state Enable for pin 12, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_12_TRI                        0

    * Master Tri-state Enable for pin 13, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_13_TRI                        0

    * Master Tri-state Enable for pin 14, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_14_TRI                        0

    * Master Tri-state Enable for pin 15, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_15_TRI                        0

    * Master Tri-state Enable for pin 16, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_16_TRI                        0

    * Master Tri-state Enable for pin 17, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_17_TRI                        0

    * Master Tri-state Enable for pin 18, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_18_TRI                        0

    * Master Tri-state Enable for pin 19, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_19_TRI                        0

    * Master Tri-state Enable for pin 20, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_20_TRI                        0

    * Master Tri-state Enable for pin 21, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_21_TRI                        0

    * Master Tri-state Enable for pin 22, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_22_TRI                        0

    * Master Tri-state Enable for pin 23, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_23_TRI                        0

    * Master Tri-state Enable for pin 24, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_24_TRI                        1

    * Master Tri-state Enable for pin 25, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_25_TRI                        0

    * Master Tri-state Enable for pin 26, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_26_TRI                        1

    * Master Tri-state Enable for pin 27, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_27_TRI                        0

    * Master Tri-state Enable for pin 28, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_28_TRI                        1

    * Master Tri-state Enable for pin 29, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_29_TRI                        0

    * Master Tri-state Enable for pin 30, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_30_TRI                        1

    * Master Tri-state Enable for pin 31, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI0_PIN_31_TRI                        0

    * MIO pin Tri-state Enables, 31:0
    * (OFFSET, MASK, VALUE)      (0XFF180204, 0xFFFFFFFFU ,0x55000006U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_MST_TRI0_OFFSET,
		0xFFFFFFFFU, 0x55000006U);
/*##################################################################### */

    /*
    * Register : MIO_MST_TRI1 @ 0XFF180208

    * Master Tri-state Enable for pin 32, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_32_TRI                        0

    * Master Tri-state Enable for pin 33, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_33_TRI                        0

    * Master Tri-state Enable for pin 34, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_34_TRI                        0

    * Master Tri-state Enable for pin 35, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_35_TRI                        0

    * Master Tri-state Enable for pin 36, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_36_TRI                        0

    * Master Tri-state Enable for pin 37, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_37_TRI                        0

    * Master Tri-state Enable for pin 38, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_38_TRI                        0

    * Master Tri-state Enable for pin 39, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_39_TRI                        0

    * Master Tri-state Enable for pin 40, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_40_TRI                        0

    * Master Tri-state Enable for pin 41, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_41_TRI                        0

    * Master Tri-state Enable for pin 42, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_42_TRI                        0

    * Master Tri-state Enable for pin 43, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_43_TRI                        0

    * Master Tri-state Enable for pin 44, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_44_TRI                        0

    * Master Tri-state Enable for pin 45, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_45_TRI                        0

    * Master Tri-state Enable for pin 46, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_46_TRI                        0

    * Master Tri-state Enable for pin 47, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_47_TRI                        0

    * Master Tri-state Enable for pin 48, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_48_TRI                        0

    * Master Tri-state Enable for pin 49, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_49_TRI                        0

    * Master Tri-state Enable for pin 50, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_50_TRI                        0

    * Master Tri-state Enable for pin 51, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_51_TRI                        0

    * Master Tri-state Enable for pin 52, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_52_TRI                        1

    * Master Tri-state Enable for pin 53, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_53_TRI                        1

    * Master Tri-state Enable for pin 54, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_54_TRI                        0

    * Master Tri-state Enable for pin 55, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_55_TRI                        1

    * Master Tri-state Enable for pin 56, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_56_TRI                        0

    * Master Tri-state Enable for pin 57, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_57_TRI                        0

    * Master Tri-state Enable for pin 58, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_58_TRI                        0

    * Master Tri-state Enable for pin 59, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_59_TRI                        0

    * Master Tri-state Enable for pin 60, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_60_TRI                        0

    * Master Tri-state Enable for pin 61, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_61_TRI                        0

    * Master Tri-state Enable for pin 62, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_62_TRI                        0

    * Master Tri-state Enable for pin 63, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI1_PIN_63_TRI                        0

    * MIO pin Tri-state Enables, 63:32
    * (OFFSET, MASK, VALUE)      (0XFF180208, 0xFFFFFFFFU ,0x00B00000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_MST_TRI1_OFFSET,
		0xFFFFFFFFU, 0x00B00000U);
/*##################################################################### */

    /*
    * Register : MIO_MST_TRI2 @ 0XFF18020C

    * Master Tri-state Enable for pin 64, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_64_TRI                        1

    * Master Tri-state Enable for pin 65, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_65_TRI                        1

    * Master Tri-state Enable for pin 66, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_66_TRI                        0

    * Master Tri-state Enable for pin 67, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_67_TRI                        1

    * Master Tri-state Enable for pin 68, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_68_TRI                        0

    * Master Tri-state Enable for pin 69, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_69_TRI                        0

    * Master Tri-state Enable for pin 70, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_70_TRI                        0

    * Master Tri-state Enable for pin 71, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_71_TRI                        0

    * Master Tri-state Enable for pin 72, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_72_TRI                        0

    * Master Tri-state Enable for pin 73, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_73_TRI                        0

    * Master Tri-state Enable for pin 74, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_74_TRI                        0

    * Master Tri-state Enable for pin 75, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_75_TRI                        0

    * Master Tri-state Enable for pin 76, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_76_TRI                        0

    * Master Tri-state Enable for pin 77, active high
    *  PSU_IOU_SLCR_MIO_MST_TRI2_PIN_77_TRI                        0

    * MIO pin Tri-state Enables, 77:64
    * (OFFSET, MASK, VALUE)      (0XFF18020C, 0x00003FFFU ,0x0000000BU)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_MST_TRI2_OFFSET,
		0x00003FFFU, 0x0000000BU);
/*##################################################################### */

    /*
    * Register : bank0_ctrl0 @ 0XFF180138

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_0                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_1                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_2                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_3                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_4                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_5                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_6                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_7                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_8                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_9                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_10                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_11                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_12                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_13                      0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_14                      0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_15                      0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_16                      0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_17                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_18                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_19                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_20                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_21                      0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_22                      0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_23                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_24                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL0_DRIVE0_BIT_25                      1

    * Drive0 control to MIO Bank 0 - control MIO[25:0]
    * (OFFSET, MASK, VALUE)      (0XFF180138, 0x03FFFFFFU ,0x039E1FFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK0_CTRL0_OFFSET,
		0x03FFFFFFU, 0x039E1FFFU);
/*##################################################################### */

    /*
    * Register : bank0_ctrl1 @ 0XFF18013C

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_0                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_1                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_2                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_3                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_4                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_5                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_6                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_7                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_8                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_9                       1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_10                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_11                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_12                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_13                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_14                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_15                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_16                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_17                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_18                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_19                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_20                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_21                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_22                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_23                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_24                      1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL1_DRIVE1_BIT_25                      1

    * Drive1 control to MIO Bank 0 - control MIO[25:0]
    * (OFFSET, MASK, VALUE)      (0XFF18013C, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK0_CTRL1_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank0_ctrl3 @ 0XFF180140

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_0               0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_1               0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_2               0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_3               0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_4               0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_5               0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_6               0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_7               0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_8               0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_9               0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_10              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_11              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_12              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_13              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_14              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_15              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_16              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_17              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_18              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_19              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_20              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_21              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_22              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_23              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_24              0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL3_SCHMITT_CMOS_N_BIT_25              0

    * Selects either Schmitt or CMOS input for MIO Bank 0 - control MIO[25:0]
    * (OFFSET, MASK, VALUE)      (0XFF180140, 0x03FFFFFFU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_BANK0_CTRL3_OFFSET,
		0x03FFFFFFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : bank0_ctrl4 @ 0XFF180144

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_0              1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_1              1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_2              1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_3              1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_4              1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_5              1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_6              1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_7              1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_8              1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_9              1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_10             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_11             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_12             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_13             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_14             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_15             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_16             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_17             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_18             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_19             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_20             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_21             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_22             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_23             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_24             1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL4_PULL_HIGH_LOW_N_BIT_25             1

    * When mio_bank0_pull_enable is set, this selects pull up or pull down for
    *  MIO Bank 0 - control MIO[25:0]
    * (OFFSET, MASK, VALUE)      (0XFF180144, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK0_CTRL4_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank0_ctrl5 @ 0XFF180148

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_0                  1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_1                  1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_2                  1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_3                  1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_4                  1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_5                  1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_6                  1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_7                  1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_8                  1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_9                  1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_10                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_11                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_12                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_13                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_14                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_15                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_16                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_17                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_18                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_19                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_20                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_21                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_22                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_23                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_24                 1

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL5_PULL_ENABLE_BIT_25                 1

    * When set, this enables mio_bank0_pullupdown to selects pull up or pull d
    * own for MIO Bank 0 - control MIO[25:0]
    * (OFFSET, MASK, VALUE)      (0XFF180148, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK0_CTRL5_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank0_ctrl6 @ 0XFF18014C

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_0             0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_1             0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_2             0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_3             0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_4             0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_5             0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_6             0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_7             0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_8             0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_9             0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_10            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_11            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_12            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_13            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_14            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_15            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_16            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_17            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_18            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_19            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_20            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_21            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_22            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_23            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_24            0

    * Each bit applies to a single IO. Bit 0 for MIO[0].
    *  PSU_IOU_SLCR_BANK0_CTRL6_SLOW_FAST_SLEW_N_BIT_25            0

    * Slew rate control to MIO Bank 0 - control MIO[25:0]
    * (OFFSET, MASK, VALUE)      (0XFF18014C, 0x03FFFFFFU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_BANK0_CTRL6_OFFSET,
		0x03FFFFFFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : bank1_ctrl0 @ 0XFF180154

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_0                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_1                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_2                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_3                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_4                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_5                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_6                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_7                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_8                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_9                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_10                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_11                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_12                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_13                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_14                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_15                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_16                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_17                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_18                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_19                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_20                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_21                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_22                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_23                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_24                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL0_DRIVE0_BIT_25                      1

    * Drive0 control to MIO Bank 1 - control MIO[51:26]
    * (OFFSET, MASK, VALUE)      (0XFF180154, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK1_CTRL0_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank1_ctrl1 @ 0XFF180158

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_0                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_1                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_2                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_3                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_4                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_5                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_6                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_7                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_8                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_9                       1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_10                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_11                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_12                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_13                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_14                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_15                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_16                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_17                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_18                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_19                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_20                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_21                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_22                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_23                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_24                      1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL1_DRIVE1_BIT_25                      1

    * Drive1 control to MIO Bank 1 - control MIO[51:26]
    * (OFFSET, MASK, VALUE)      (0XFF180158, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK1_CTRL1_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank1_ctrl3 @ 0XFF18015C

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_0               0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_1               0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_2               0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_3               0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_4               0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_5               0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_6               0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_7               0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_8               0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_9               0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_10              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_11              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_12              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_13              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_14              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_15              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_16              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_17              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_18              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_19              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_20              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_21              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_22              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_23              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_24              0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL3_SCHMITT_CMOS_N_BIT_25              0

    * Selects either Schmitt or CMOS input for MIO Bank 1 - control MIO[51:26]
    * (OFFSET, MASK, VALUE)      (0XFF18015C, 0x03FFFFFFU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_BANK1_CTRL3_OFFSET,
		0x03FFFFFFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : bank1_ctrl4 @ 0XFF180160

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_0              1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_1              1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_2              1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_3              1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_4              1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_5              1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_6              1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_7              1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_8              1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_9              1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_10             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_11             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_12             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_13             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_14             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_15             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_16             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_17             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_18             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_19             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_20             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_21             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_22             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_23             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_24             1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL4_PULL_HIGH_LOW_N_BIT_25             1

    * When mio_bank1_pull_enable is set, this selects pull up or pull down for
    *  MIO Bank 1 - control MIO[51:26]
    * (OFFSET, MASK, VALUE)      (0XFF180160, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK1_CTRL4_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank1_ctrl5 @ 0XFF180164

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_0                  1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_1                  1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_2                  1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_3                  1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_4                  1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_5                  1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_6                  1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_7                  1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_8                  1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_9                  1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_10                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_11                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_12                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_13                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_14                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_15                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_16                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_17                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_18                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_19                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_20                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_21                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_22                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_23                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_24                 1

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL5_PULL_ENABLE_BIT_25                 1

    * When set, this enables mio_bank1_pullupdown to selects pull up or pull d
    * own for MIO Bank 1 - control MIO[51:26]
    * (OFFSET, MASK, VALUE)      (0XFF180164, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK1_CTRL5_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank1_ctrl6 @ 0XFF180168

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_0             0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_1             0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_2             0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_3             0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_4             0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_5             0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_6             0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_7             0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_8             0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_9             0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_10            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_11            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_12            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_13            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_14            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_15            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_16            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_17            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_18            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_19            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_20            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_21            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_22            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_23            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_24            0

    * Each bit applies to a single IO. Bit 0 for MIO[26].
    *  PSU_IOU_SLCR_BANK1_CTRL6_SLOW_FAST_SLEW_N_BIT_25            0

    * Slew rate control to MIO Bank 1 - control MIO[51:26]
    * (OFFSET, MASK, VALUE)      (0XFF180168, 0x03FFFFFFU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_BANK1_CTRL6_OFFSET,
		0x03FFFFFFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : bank2_ctrl0 @ 0XFF180170

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_0                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_1                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_2                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_3                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_4                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_5                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_6                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_7                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_8                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_9                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_10                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_11                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_12                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_13                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_14                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_15                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_16                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_17                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_18                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_19                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_20                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_21                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_22                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_23                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_24                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL0_DRIVE0_BIT_25                      1

    * Drive0 control to MIO Bank 2 - control MIO[77:52]
    * (OFFSET, MASK, VALUE)      (0XFF180170, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK2_CTRL0_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank2_ctrl1 @ 0XFF180174

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_0                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_1                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_2                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_3                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_4                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_5                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_6                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_7                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_8                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_9                       1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_10                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_11                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_12                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_13                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_14                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_15                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_16                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_17                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_18                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_19                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_20                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_21                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_22                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_23                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_24                      1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL1_DRIVE1_BIT_25                      1

    * Drive1 control to MIO Bank 2 - control MIO[77:52]
    * (OFFSET, MASK, VALUE)      (0XFF180174, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK2_CTRL1_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank2_ctrl3 @ 0XFF180178

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_0               0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_1               0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_2               0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_3               0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_4               0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_5               0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_6               0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_7               0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_8               0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_9               0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_10              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_11              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_12              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_13              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_14              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_15              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_16              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_17              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_18              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_19              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_20              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_21              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_22              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_23              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_24              0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL3_SCHMITT_CMOS_N_BIT_25              0

    * Selects either Schmitt or CMOS input for MIO Bank 2 - control MIO[77:52]
    * (OFFSET, MASK, VALUE)      (0XFF180178, 0x03FFFFFFU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_BANK2_CTRL3_OFFSET,
		0x03FFFFFFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : bank2_ctrl4 @ 0XFF18017C

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_0              1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_1              1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_2              1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_3              1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_4              1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_5              1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_6              1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_7              1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_8              1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_9              1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_10             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_11             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_12             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_13             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_14             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_15             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_16             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_17             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_18             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_19             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_20             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_21             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_22             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_23             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_24             1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL4_PULL_HIGH_LOW_N_BIT_25             1

    * When mio_bank2_pull_enable is set, this selects pull up or pull down for
    *  MIO Bank 2 - control MIO[77:52]
    * (OFFSET, MASK, VALUE)      (0XFF18017C, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK2_CTRL4_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank2_ctrl5 @ 0XFF180180

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_0                  1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_1                  1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_2                  1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_3                  1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_4                  1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_5                  1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_6                  1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_7                  1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_8                  1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_9                  1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_10                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_11                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_12                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_13                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_14                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_15                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_16                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_17                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_18                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_19                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_20                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_21                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_22                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_23                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_24                 1

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL5_PULL_ENABLE_BIT_25                 1

    * When set, this enables mio_bank2_pullupdown to selects pull up or pull d
    * own for MIO Bank 2 - control MIO[77:52]
    * (OFFSET, MASK, VALUE)      (0XFF180180, 0x03FFFFFFU ,0x03FFFFFFU)
    */
	PSU_Mask_Write(IOU_SLCR_BANK2_CTRL5_OFFSET,
		0x03FFFFFFU, 0x03FFFFFFU);
/*##################################################################### */

    /*
    * Register : bank2_ctrl6 @ 0XFF180184

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_0             0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_1             0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_2             0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_3             0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_4             0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_5             0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_6             0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_7             0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_8             0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_9             0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_10            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_11            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_12            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_13            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_14            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_15            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_16            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_17            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_18            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_19            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_20            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_21            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_22            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_23            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_24            0

    * Each bit applies to a single IO. Bit 0 for MIO[52].
    *  PSU_IOU_SLCR_BANK2_CTRL6_SLOW_FAST_SLEW_N_BIT_25            0

    * Slew rate control to MIO Bank 2 - control MIO[77:52]
    * (OFFSET, MASK, VALUE)      (0XFF180184, 0x03FFFFFFU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_BANK2_CTRL6_OFFSET,
		0x03FFFFFFU, 0x00000000U);
/*##################################################################### */

    /*
    * LOOPBACK
    */
    /*
    * Register : MIO_LOOPBACK @ 0XFF180200

    * I2C Loopback Control. 0 = Connect I2C inputs according to MIO mapping. 1
    *  = Loop I2C 0 outputs to I2C 1 inputs, and I2C 1 outputs to I2C 0 inputs
    * .
    *  PSU_IOU_SLCR_MIO_LOOPBACK_I2C0_LOOP_I2C1                    0

    * CAN Loopback Control. 0 = Connect CAN inputs according to MIO mapping. 1
    *  = Loop CAN 0 Tx to CAN 1 Rx, and CAN 1 Tx to CAN 0 Rx.
    *  PSU_IOU_SLCR_MIO_LOOPBACK_CAN0_LOOP_CAN1                    0

    * UART Loopback Control. 0 = Connect UART inputs according to MIO mapping.
    *  1 = Loop UART 0 outputs to UART 1 inputs, and UART 1 outputs to UART 0
    * inputs. RXD/TXD cross-connected. RTS/CTS cross-connected. DSR, DTR, DCD
    * and RI not used.
    *  PSU_IOU_SLCR_MIO_LOOPBACK_UA0_LOOP_UA1                      0

    * SPI Loopback Control. 0 = Connect SPI inputs according to MIO mapping. 1
    *  = Loop SPI 0 outputs to SPI 1 inputs, and SPI 1 outputs to SPI 0 inputs
    * . The other SPI core will appear on the LS Slave Select.
    *  PSU_IOU_SLCR_MIO_LOOPBACK_SPI0_LOOP_SPI1                    0

    * Loopback function within MIO
    * (OFFSET, MASK, VALUE)      (0XFF180200, 0x0000000FU ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_MIO_LOOPBACK_OFFSET,
		0x0000000FU, 0x00000000U);
/*##################################################################### */


	return 1;
}
unsigned long psu_peripherals_pre_init_data(void)
{
    /*
    * SYSMON CLOCK PRESET TO IOPLL AT 1500 MHZ FROM PBR TO MAKE AMS CLOCK UNDE
    * R RANGE
    */
    /*
    * Register : AMS_REF_CTRL @ 0XFF5E0108

    * 6 bit divider
    *  PSU_CRL_APB_AMS_REF_CTRL_DIVISOR1                           1

    * 6 bit divider
    *  PSU_CRL_APB_AMS_REF_CTRL_DIVISOR0                           35

    * 000 = RPLL; 010 = IOPLL; 011 = DPLL; (This signal may only be toggled af
    * ter 4 cycles of the old clock and 4 cycles of the new clock. This is not
    *  usually an issue, but designers must be aware.)
    *  PSU_CRL_APB_AMS_REF_CTRL_SRCSEL                             2

    * Clock active signal. Switch to 0 to disable the clock
    *  PSU_CRL_APB_AMS_REF_CTRL_CLKACT                             1

    * This register controls this reference clock
    * (OFFSET, MASK, VALUE)      (0XFF5E0108, 0x013F3F07U ,0x01012302U)
    */
	PSU_Mask_Write(CRL_APB_AMS_REF_CTRL_OFFSET,
		0x013F3F07U, 0x01012302U);
/*##################################################################### */


	return 1;
}
unsigned long psu_peripherals_init_data(void)
{
    /*
    * COHERENCY
    */
    /*
    * FPD RESET
    */
    /*
    * Register : RST_FPD_TOP @ 0XFD1A0100

    * Display Port block level reset (includes DPDMA)
    *  PSU_CRF_APB_RST_FPD_TOP_DP_RESET                            0

    * FPD WDT reset
    *  PSU_CRF_APB_RST_FPD_TOP_SWDT_RESET                          0

    * GDMA block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_GDMA_RESET                          0

    * Pixel Processor (submodule of GPU) block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_GPU_PP0_RESET                       0

    * Pixel Processor (submodule of GPU) block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_GPU_PP1_RESET                       0

    * GPU block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_GPU_RESET                           0

    * GT block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_GT_RESET                            0

    * FPD Block level software controlled reset
    * (OFFSET, MASK, VALUE)      (0XFD1A0100, 0x0001807CU ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_RST_FPD_TOP_OFFSET, 0x0001807CU, 0x00000000U);
/*##################################################################### */

    /*
    * RESET BLOCKS
    */
    /*
    * TIMESTAMP
    */
    /*
    * Register : RST_LPD_IOU2 @ 0XFF5E0238

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_TIMESTAMP_RESET                    0

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_IOU_CC_RESET                       0

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_ADMA_RESET                         0

    * Software control register for the IOU block. Each bit will cause a singl
    * erperipheral or part of the peripheral to be reset.
    * (OFFSET, MASK, VALUE)      (0XFF5E0238, 0x001A0000U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_IOU2_OFFSET,
		0x001A0000U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : RST_LPD_TOP @ 0XFF5E023C

    * Reset entire full power domain.
    *  PSU_CRL_APB_RST_LPD_TOP_FPD_RESET                           0

    * LPD SWDT
    *  PSU_CRL_APB_RST_LPD_TOP_LPD_SWDT_RESET                      0

    * Sysmonitor reset
    *  PSU_CRL_APB_RST_LPD_TOP_SYSMON_RESET                        0

    * Real Time Clock reset
    *  PSU_CRL_APB_RST_LPD_TOP_RTC_RESET                           0

    * APM reset
    *  PSU_CRL_APB_RST_LPD_TOP_APM_RESET                           0

    * IPI reset
    *  PSU_CRL_APB_RST_LPD_TOP_IPI_RESET                           0

    * reset entire RPU power island
    *  PSU_CRL_APB_RST_LPD_TOP_RPU_PGE_RESET                       0

    * reset ocm
    *  PSU_CRL_APB_RST_LPD_TOP_OCM_RESET                           0

    * Software control register for the LPD block.
    * (OFFSET, MASK, VALUE)      (0XFF5E023C, 0x0093C018U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_TOP_OFFSET, 0x0093C018U, 0x00000000U);
/*##################################################################### */

    /*
    * ENET
    */
    /*
    * QSPI
    */
    /*
    * NAND
    */
    /*
    * USB RESET
    */
    /*
    * Register : RST_LPD_TOP @ 0XFF5E023C

    * USB 0 reset for control registers
    *  PSU_CRL_APB_RST_LPD_TOP_USB0_APB_RESET                      0

    * USB 1 reset for control registers
    *  PSU_CRL_APB_RST_LPD_TOP_USB1_APB_RESET                      0

    * Software control register for the LPD block.
    * (OFFSET, MASK, VALUE)      (0XFF5E023C, 0x00000C00U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_TOP_OFFSET, 0x00000C00U, 0x00000000U);
/*##################################################################### */

    /*
    * SD
    */
    /*
    * Register : RST_LPD_IOU2 @ 0XFF5E0238

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_SDIO0_RESET                        0

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_SDIO1_RESET                        0

    * Software control register for the IOU block. Each bit will cause a singl
    * erperipheral or part of the peripheral to be reset.
    * (OFFSET, MASK, VALUE)      (0XFF5E0238, 0x00000060U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_IOU2_OFFSET,
		0x00000060U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : CTRL_REG_SD @ 0XFF180310

    * SD or eMMC selection on SDIO0 0: SD enabled 1: eMMC enabled
    *  PSU_IOU_SLCR_CTRL_REG_SD_SD0_EMMC_SEL                       0

    * SD or eMMC selection on SDIO1 0: SD enabled 1: eMMC enabled
    *  PSU_IOU_SLCR_CTRL_REG_SD_SD1_EMMC_SEL                       0

    * SD eMMC selection
    * (OFFSET, MASK, VALUE)      (0XFF180310, 0x00008001U ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_CTRL_REG_SD_OFFSET,
		0x00008001U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : SD_CONFIG_REG2 @ 0XFF180320

    * Should be set based on the final product usage 00 - Removable SCard Slot
    *  01 - Embedded Slot for One Device 10 - Shared Bus Slot 11 - Reserved
    *  PSU_IOU_SLCR_SD_CONFIG_REG2_SD0_SLOTTYPE                    0

    * Should be set based on the final product usage 00 - Removable SCard Slot
    *  01 - Embedded Slot for One Device 10 - Shared Bus Slot 11 - Reserved
    *  PSU_IOU_SLCR_SD_CONFIG_REG2_SD1_SLOTTYPE                    0

    * 8-bit Support for Embedded Device 1: The Core supports 8-bit Interface 0
    * : Supports only 4-bit SD Interface
    *  PSU_IOU_SLCR_SD_CONFIG_REG2_SD1_8BIT                        0

    * 8-bit Support for Embedded Device 1: The Core supports 8-bit Interface 0
    * : Supports only 4-bit SD Interface
    *  PSU_IOU_SLCR_SD_CONFIG_REG2_SD0_8BIT                        0

    * 1.8V Support 1: 1.8V supported 0: 1.8V not supported support
    *  PSU_IOU_SLCR_SD_CONFIG_REG2_SD0_1P8V                        0

    * 3.0V Support 1: 3.0V supported 0: 3.0V not supported support
    *  PSU_IOU_SLCR_SD_CONFIG_REG2_SD0_3P0V                        0

    * 3.3V Support 1: 3.3V supported 0: 3.3V not supported support
    *  PSU_IOU_SLCR_SD_CONFIG_REG2_SD0_3P3V                        1

    * 1.8V Support 1: 1.8V supported 0: 1.8V not supported support
    *  PSU_IOU_SLCR_SD_CONFIG_REG2_SD1_1P8V                        0

    * 3.0V Support 1: 3.0V supported 0: 3.0V not supported support
    *  PSU_IOU_SLCR_SD_CONFIG_REG2_SD1_3P0V                        0

    * 3.3V Support 1: 3.3V supported 0: 3.3V not supported support
    *  PSU_IOU_SLCR_SD_CONFIG_REG2_SD1_3P3V                        1

    * SD Config Register 2
    * (OFFSET, MASK, VALUE)      (0XFF180320, 0x33843384U ,0x00800080U)
    */
	PSU_Mask_Write(IOU_SLCR_SD_CONFIG_REG2_OFFSET,
		0x33843384U, 0x00800080U);
/*##################################################################### */

    /*
    * SD0 BASE CLOCK
    */
    /*
    * Register : SD_CONFIG_REG1 @ 0XFF18031C

    * Base Clock Frequency for SD Clock. This is the frequency of the xin_clk.
    *  PSU_IOU_SLCR_SD_CONFIG_REG1_SD0_BASECLK                     0xc8

    * Configures the Number of Taps (Phases) of the rxclk_in that is supported
    *  for auto tuning mode
    *  PSU_IOU_SLCR_SD_CONFIG_REG1_SD0_TUNIGCOUNT                  0x28

    * SD Config Register 1
    * (OFFSET, MASK, VALUE)      (0XFF18031C, 0x00007FFEU ,0x00006450U)
    */
	PSU_Mask_Write(IOU_SLCR_SD_CONFIG_REG1_OFFSET,
		0x00007FFEU, 0x00006450U);
/*##################################################################### */

    /*
    * Register : SD_DLL_CTRL @ 0XFF180358

    * Reserved.
    *  PSU_IOU_SLCR_SD_DLL_CTRL_RESERVED_2                         1

    * SDIO status register
    * (OFFSET, MASK, VALUE)      (0XFF180358, 0x00080000U ,0x00080000U)
    */
	PSU_Mask_Write(IOU_SLCR_SD_DLL_CTRL_OFFSET,
		0x00080000U, 0x00080000U);
/*##################################################################### */

    /*
    * SD1 BASE CLOCK
    */
    /*
    * Register : SD_CONFIG_REG1 @ 0XFF18031C

    * Base Clock Frequency for SD Clock. This is the frequency of the xin_clk.
    *  PSU_IOU_SLCR_SD_CONFIG_REG1_SD1_BASECLK                     0xc8

    * Configures the Number of Taps (Phases) of the rxclk_in that is supported
    * .
    *  PSU_IOU_SLCR_SD_CONFIG_REG1_SD1_TUNIGCOUNT                  0x28

    * SD Config Register 1
    * (OFFSET, MASK, VALUE)      (0XFF18031C, 0x7FFE0000U ,0x64500000U)
    */
	PSU_Mask_Write(IOU_SLCR_SD_CONFIG_REG1_OFFSET,
		0x7FFE0000U, 0x64500000U);
/*##################################################################### */

    /*
    * Register : SD_DLL_CTRL @ 0XFF180358

    * Reserved.
    *  PSU_IOU_SLCR_SD_DLL_CTRL_RESERVED                           1

    * SDIO status register
    * (OFFSET, MASK, VALUE)      (0XFF180358, 0x00000008U ,0x00000008U)
    */
	PSU_Mask_Write(IOU_SLCR_SD_DLL_CTRL_OFFSET,
		0x00000008U, 0x00000008U);
/*##################################################################### */

    /*
    * SD0 RETUNER
    */
    /*
    * Register : SD_CONFIG_REG3 @ 0XFF180324

    * This is the Timer Count for Re-Tuning Timer for Re-Tuning Mode 1 to 3. S
    * etting to 4'b0 disables Re-Tuning Timer. 0h - Get information via other
    * source 1h = 1 seconds 2h = 2 seconds 3h = 4 seconds 4h = 8 seconds -- n
    * = 2(n-1) seconds -- Bh = 1024 seconds Fh - Ch = Reserved
    *  PSU_IOU_SLCR_SD_CONFIG_REG3_SD0_RETUNETMR                   0X0

    * SD Config Register 3
    * (OFFSET, MASK, VALUE)      (0XFF180324, 0x000003C0U ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_SD_CONFIG_REG3_OFFSET,
		0x000003C0U, 0x00000000U);
/*##################################################################### */

    /*
    * SD1 RETUNER
    */
    /*
    * Register : SD_CONFIG_REG3 @ 0XFF180324

    * This is the Timer Count for Re-Tuning Timer for Re-Tuning Mode 1 to 3. S
    * etting to 4'b0 disables Re-Tuning Timer. 0h - Get information via other
    * source 1h = 1 seconds 2h = 2 seconds 3h = 4 seconds 4h = 8 seconds -- n
    * = 2(n-1) seconds -- Bh = 1024 seconds Fh - Ch = Reserved
    *  PSU_IOU_SLCR_SD_CONFIG_REG3_SD1_RETUNETMR                   0X0

    * SD Config Register 3
    * (OFFSET, MASK, VALUE)      (0XFF180324, 0x03C00000U ,0x00000000U)
    */
	PSU_Mask_Write(IOU_SLCR_SD_CONFIG_REG3_OFFSET,
		0x03C00000U, 0x00000000U);
/*##################################################################### */

    /*
    * CAN
    */
    /*
    * I2C
    */
    /*
    * Register : RST_LPD_IOU2 @ 0XFF5E0238

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_I2C1_RESET                         0

    * Software control register for the IOU block. Each bit will cause a singl
    * erperipheral or part of the peripheral to be reset.
    * (OFFSET, MASK, VALUE)      (0XFF5E0238, 0x00000400U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_IOU2_OFFSET,
		0x00000400U, 0x00000000U);
/*##################################################################### */

    /*
    * SWDT
    */
    /*
    * Register : RST_LPD_IOU2 @ 0XFF5E0238

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_SWDT_RESET                         0

    * Software control register for the IOU block. Each bit will cause a singl
    * erperipheral or part of the peripheral to be reset.
    * (OFFSET, MASK, VALUE)      (0XFF5E0238, 0x00008000U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_IOU2_OFFSET,
		0x00008000U, 0x00000000U);
/*##################################################################### */

    /*
    * SPI
    */
    /*
    * Register : RST_LPD_IOU2 @ 0XFF5E0238

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_SPI0_RESET                         0

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_SPI1_RESET                         0

    * Software control register for the IOU block. Each bit will cause a singl
    * erperipheral or part of the peripheral to be reset.
    * (OFFSET, MASK, VALUE)      (0XFF5E0238, 0x00000018U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_IOU2_OFFSET,
		0x00000018U, 0x00000000U);
/*##################################################################### */

    /*
    * TTC
    */
    /*
    * Register : RST_LPD_IOU2 @ 0XFF5E0238

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_TTC0_RESET                         0

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_TTC1_RESET                         0

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_TTC2_RESET                         0

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_TTC3_RESET                         0

    * Software control register for the IOU block. Each bit will cause a singl
    * erperipheral or part of the peripheral to be reset.
    * (OFFSET, MASK, VALUE)      (0XFF5E0238, 0x00007800U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_IOU2_OFFSET,
		0x00007800U, 0x00000000U);
/*##################################################################### */

    /*
    * UART
    */
    /*
    * Register : RST_LPD_IOU2 @ 0XFF5E0238

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_UART0_RESET                        0

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_UART1_RESET                        0

    * Software control register for the IOU block. Each bit will cause a singl
    * erperipheral or part of the peripheral to be reset.
    * (OFFSET, MASK, VALUE)      (0XFF5E0238, 0x00000006U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_IOU2_OFFSET,
		0x00000006U, 0x00000000U);
/*##################################################################### */

    /*
    * UART BAUD RATE
    */
    /*
    * Register : Baud_rate_divider_reg0 @ 0XFF000034

    * Baud rate divider value: 0 - 3: ignored 4 - 255: Baud rate
    *  PSU_UART0_BAUD_RATE_DIVIDER_REG0_BDIV                       0x6

    * Baud Rate Divider Register
    * (OFFSET, MASK, VALUE)      (0XFF000034, 0x000000FFU ,0x00000006U)
    */
	PSU_Mask_Write(UART0_BAUD_RATE_DIVIDER_REG0_OFFSET,
		0x000000FFU, 0x00000006U);
/*##################################################################### */

    /*
    * Register : Baud_rate_gen_reg0 @ 0XFF000018

    * Baud Rate Clock Divisor Value: 0: Disables baud_sample 1: Clock divisor
    * bypass (baud_sample = sel_clk) 2 - 65535: baud_sample
    *  PSU_UART0_BAUD_RATE_GEN_REG0_CD                             0x7c

    * Baud Rate Generator Register.
    * (OFFSET, MASK, VALUE)      (0XFF000018, 0x0000FFFFU ,0x0000007CU)
    */
	PSU_Mask_Write(UART0_BAUD_RATE_GEN_REG0_OFFSET,
		0x0000FFFFU, 0x0000007CU);
/*##################################################################### */

    /*
    * Register : Control_reg0 @ 0XFF000000

    * Stop transmitter break: 0: no affect 1: stop transmission of the break a
    * fter a minimum of one character length and transmit a high level during
    * 12 bit periods. It can be set regardless of the value of STTBRK.
    *  PSU_UART0_CONTROL_REG0_STPBRK                               0x0

    * Start transmitter break: 0: no affect 1: start to transmit a break after
    *  the characters currently present in the FIFO and the transmit shift reg
    * ister have been transmitted. It can only be set if STPBRK (Stop transmit
    * ter break) is not high.
    *  PSU_UART0_CONTROL_REG0_STTBRK                               0x0

    * Restart receiver timeout counter: 1: receiver timeout counter is restart
    * ed. This bit is self clearing once the restart has completed.
    *  PSU_UART0_CONTROL_REG0_RSTTO                                0x0

    * Transmit disable: 0: enable transmitter 1: disable transmitter
    *  PSU_UART0_CONTROL_REG0_TXDIS                                0x0

    * Transmit enable: 0: disable transmitter 1: enable transmitter, provided
    * the TXDIS field is set to 0.
    *  PSU_UART0_CONTROL_REG0_TXEN                                 0x1

    * Receive disable: 0: enable 1: disable, regardless of the value of RXEN
    *  PSU_UART0_CONTROL_REG0_RXDIS                                0x0

    * Receive enable: 0: disable 1: enable When set to one, the receiver logic
    *  is enabled, provided the RXDIS field is set to zero.
    *  PSU_UART0_CONTROL_REG0_RXEN                                 0x1

    * Software reset for Tx data path: 0: no affect 1: transmitter logic is re
    * set and all pending transmitter data is discarded This bit is self clear
    * ing once the reset has completed.
    *  PSU_UART0_CONTROL_REG0_TXRES                                0x1

    * Software reset for Rx data path: 0: no affect 1: receiver logic is reset
    *  and all pending receiver data is discarded. This bit is self clearing o
    * nce the reset has completed.
    *  PSU_UART0_CONTROL_REG0_RXRES                                0x1

    * UART Control Register
    * (OFFSET, MASK, VALUE)      (0XFF000000, 0x000001FFU ,0x00000017U)
    */
	PSU_Mask_Write(UART0_CONTROL_REG0_OFFSET, 0x000001FFU, 0x00000017U);
/*##################################################################### */

    /*
    * Register : mode_reg0 @ 0XFF000004

    * Channel mode: Defines the mode of operation of the UART. 00: normal 01:
    * automatic echo 10: local loopback 11: remote loopback
    *  PSU_UART0_MODE_REG0_CHMODE                                  0x0

    * Number of stop bits: Defines the number of stop bits to detect on receiv
    * e and to generate on transmit. 00: 1 stop bit 01: 1.5 stop bits 10: 2 st
    * op bits 11: reserved
    *  PSU_UART0_MODE_REG0_NBSTOP                                  0x0

    * Parity type select: Defines the expected parity to check on receive and
    * the parity to generate on transmit. 000: even parity 001: odd parity 010
    * : forced to 0 parity (space) 011: forced to 1 parity (mark) 1xx: no pari
    * ty
    *  PSU_UART0_MODE_REG0_PAR                                     0x4

    * Character length select: Defines the number of bits in each character. 1
    * 1: 6 bits 10: 7 bits 0x: 8 bits
    *  PSU_UART0_MODE_REG0_CHRL                                    0x0

    * Clock source select: This field defines whether a pre-scalar of 8 is app
    * lied to the baud rate generator input clock. 0: clock source is uart_ref
    * _clk 1: clock source is uart_ref_clk/8
    *  PSU_UART0_MODE_REG0_CLKS                                    0x0

    * UART Mode Register
    * (OFFSET, MASK, VALUE)      (0XFF000004, 0x000003FFU ,0x00000020U)
    */
	PSU_Mask_Write(UART0_MODE_REG0_OFFSET, 0x000003FFU, 0x00000020U);
/*##################################################################### */

    /*
    * Register : Baud_rate_divider_reg0 @ 0XFF010034

    * Baud rate divider value: 0 - 3: ignored 4 - 255: Baud rate
    *  PSU_UART1_BAUD_RATE_DIVIDER_REG0_BDIV                       0x6

    * Baud Rate Divider Register
    * (OFFSET, MASK, VALUE)      (0XFF010034, 0x000000FFU ,0x00000006U)
    */
	PSU_Mask_Write(UART1_BAUD_RATE_DIVIDER_REG0_OFFSET,
		0x000000FFU, 0x00000006U);
/*##################################################################### */

    /*
    * Register : Baud_rate_gen_reg0 @ 0XFF010018

    * Baud Rate Clock Divisor Value: 0: Disables baud_sample 1: Clock divisor
    * bypass (baud_sample = sel_clk) 2 - 65535: baud_sample
    *  PSU_UART1_BAUD_RATE_GEN_REG0_CD                             0x7c

    * Baud Rate Generator Register.
    * (OFFSET, MASK, VALUE)      (0XFF010018, 0x0000FFFFU ,0x0000007CU)
    */
	PSU_Mask_Write(UART1_BAUD_RATE_GEN_REG0_OFFSET,
		0x0000FFFFU, 0x0000007CU);
/*##################################################################### */

    /*
    * Register : Control_reg0 @ 0XFF010000

    * Stop transmitter break: 0: no affect 1: stop transmission of the break a
    * fter a minimum of one character length and transmit a high level during
    * 12 bit periods. It can be set regardless of the value of STTBRK.
    *  PSU_UART1_CONTROL_REG0_STPBRK                               0x0

    * Start transmitter break: 0: no affect 1: start to transmit a break after
    *  the characters currently present in the FIFO and the transmit shift reg
    * ister have been transmitted. It can only be set if STPBRK (Stop transmit
    * ter break) is not high.
    *  PSU_UART1_CONTROL_REG0_STTBRK                               0x0

    * Restart receiver timeout counter: 1: receiver timeout counter is restart
    * ed. This bit is self clearing once the restart has completed.
    *  PSU_UART1_CONTROL_REG0_RSTTO                                0x0

    * Transmit disable: 0: enable transmitter 1: disable transmitter
    *  PSU_UART1_CONTROL_REG0_TXDIS                                0x0

    * Transmit enable: 0: disable transmitter 1: enable transmitter, provided
    * the TXDIS field is set to 0.
    *  PSU_UART1_CONTROL_REG0_TXEN                                 0x1

    * Receive disable: 0: enable 1: disable, regardless of the value of RXEN
    *  PSU_UART1_CONTROL_REG0_RXDIS                                0x0

    * Receive enable: 0: disable 1: enable When set to one, the receiver logic
    *  is enabled, provided the RXDIS field is set to zero.
    *  PSU_UART1_CONTROL_REG0_RXEN                                 0x1

    * Software reset for Tx data path: 0: no affect 1: transmitter logic is re
    * set and all pending transmitter data is discarded This bit is self clear
    * ing once the reset has completed.
    *  PSU_UART1_CONTROL_REG0_TXRES                                0x1

    * Software reset for Rx data path: 0: no affect 1: receiver logic is reset
    *  and all pending receiver data is discarded. This bit is self clearing o
    * nce the reset has completed.
    *  PSU_UART1_CONTROL_REG0_RXRES                                0x1

    * UART Control Register
    * (OFFSET, MASK, VALUE)      (0XFF010000, 0x000001FFU ,0x00000017U)
    */
	PSU_Mask_Write(UART1_CONTROL_REG0_OFFSET, 0x000001FFU, 0x00000017U);
/*##################################################################### */

    /*
    * Register : mode_reg0 @ 0XFF010004

    * Channel mode: Defines the mode of operation of the UART. 00: normal 01:
    * automatic echo 10: local loopback 11: remote loopback
    *  PSU_UART1_MODE_REG0_CHMODE                                  0x0

    * Number of stop bits: Defines the number of stop bits to detect on receiv
    * e and to generate on transmit. 00: 1 stop bit 01: 1.5 stop bits 10: 2 st
    * op bits 11: reserved
    *  PSU_UART1_MODE_REG0_NBSTOP                                  0x0

    * Parity type select: Defines the expected parity to check on receive and
    * the parity to generate on transmit. 000: even parity 001: odd parity 010
    * : forced to 0 parity (space) 011: forced to 1 parity (mark) 1xx: no pari
    * ty
    *  PSU_UART1_MODE_REG0_PAR                                     0x4

    * Character length select: Defines the number of bits in each character. 1
    * 1: 6 bits 10: 7 bits 0x: 8 bits
    *  PSU_UART1_MODE_REG0_CHRL                                    0x0

    * Clock source select: This field defines whether a pre-scalar of 8 is app
    * lied to the baud rate generator input clock. 0: clock source is uart_ref
    * _clk 1: clock source is uart_ref_clk/8
    *  PSU_UART1_MODE_REG0_CLKS                                    0x0

    * UART Mode Register
    * (OFFSET, MASK, VALUE)      (0XFF010004, 0x000003FFU ,0x00000020U)
    */
	PSU_Mask_Write(UART1_MODE_REG0_OFFSET, 0x000003FFU, 0x00000020U);
/*##################################################################### */

    /*
    * GPIO
    */
    /*
    * Register : RST_LPD_IOU2 @ 0XFF5E0238

    * Block level reset
    *  PSU_CRL_APB_RST_LPD_IOU2_GPIO_RESET                         0

    * Software control register for the IOU block. Each bit will cause a singl
    * erperipheral or part of the peripheral to be reset.
    * (OFFSET, MASK, VALUE)      (0XFF5E0238, 0x00040000U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_IOU2_OFFSET,
		0x00040000U, 0x00000000U);
/*##################################################################### */

    /*
    * ADMA TZ
    */
    /*
    * Register : slcr_adma @ 0XFF4B0024

    * TrustZone Classification for ADMA
    *  PSU_LPD_SLCR_SECURE_SLCR_ADMA_TZ                            0XFF

    * RPU TrustZone settings
    * (OFFSET, MASK, VALUE)      (0XFF4B0024, 0x000000FFU ,0x000000FFU)
    */
	PSU_Mask_Write(LPD_SLCR_SECURE_SLCR_ADMA_OFFSET,
		0x000000FFU, 0x000000FFU);
/*##################################################################### */

    /*
    * CSU TAMPERING
    */
    /*
    * CSU TAMPER STATUS
    */
    /*
    * Register : tamper_status @ 0XFFCA5000

    * CSU regsiter
    *  PSU_CSU_TAMPER_STATUS_TAMPER_0                              0

    * External MIO
    *  PSU_CSU_TAMPER_STATUS_TAMPER_1                              0

    * JTAG toggle detect
    *  PSU_CSU_TAMPER_STATUS_TAMPER_2                              0

    * PL SEU error
    *  PSU_CSU_TAMPER_STATUS_TAMPER_3                              0

    * AMS over temperature alarm for LPD
    *  PSU_CSU_TAMPER_STATUS_TAMPER_4                              0

    * AMS over temperature alarm for APU
    *  PSU_CSU_TAMPER_STATUS_TAMPER_5                              0

    * AMS voltage alarm for VCCPINT_FPD
    *  PSU_CSU_TAMPER_STATUS_TAMPER_6                              0

    * AMS voltage alarm for VCCPINT_LPD
    *  PSU_CSU_TAMPER_STATUS_TAMPER_7                              0

    * AMS voltage alarm for VCCPAUX
    *  PSU_CSU_TAMPER_STATUS_TAMPER_8                              0

    * AMS voltage alarm for DDRPHY
    *  PSU_CSU_TAMPER_STATUS_TAMPER_9                              0

    * AMS voltage alarm for PSIO bank 0/1/2
    *  PSU_CSU_TAMPER_STATUS_TAMPER_10                             0

    * AMS voltage alarm for PSIO bank 3 (dedicated pins)
    *  PSU_CSU_TAMPER_STATUS_TAMPER_11                             0

    * AMS voltaage alarm for GT
    *  PSU_CSU_TAMPER_STATUS_TAMPER_12                             0

    * Tamper Response Status
    * (OFFSET, MASK, VALUE)      (0XFFCA5000, 0x00001FFFU ,0x00000000U)
    */
	PSU_Mask_Write(CSU_TAMPER_STATUS_OFFSET, 0x00001FFFU, 0x00000000U);
/*##################################################################### */

    /*
    * CSU TAMPER RESPONSE
    */
    /*
    * CPU QOS DEFAULT
    */
    /*
    * Register : ACE_CTRL @ 0XFD5C0060

    * Set ACE outgoing AWQOS value
    *  PSU_APU_ACE_CTRL_AWQOS                                      0X0

    * Set ACE outgoing ARQOS value
    *  PSU_APU_ACE_CTRL_ARQOS                                      0X0

    * ACE Control Register
    * (OFFSET, MASK, VALUE)      (0XFD5C0060, 0x000F000FU ,0x00000000U)
    */
	PSU_Mask_Write(APU_ACE_CTRL_OFFSET, 0x000F000FU, 0x00000000U);
/*##################################################################### */

    /*
    * ENABLES RTC SWITCH TO BATTERY WHEN VCC_PSAUX IS NOT AVAILABLE
    */
    /*
    * Register : CONTROL @ 0XFFA60040

    * Enables the RTC. By writing a 0 to this bit, RTC will be powered off and
    *  the only module that potentially draws current from the battery will be
    *  BBRAM. The value read through this bit does not necessarily reflect whe
    * ther RTC is enabled or not. It is expected that RTC is enabled every tim
    * e it is being configured. If RTC is not used in the design, FSBL will di
    * sable it by writing a 0 to this bit.
    *  PSU_RTC_CONTROL_BATTERY_DISABLE                             0X1

    * This register controls various functionalities within the RTC
    * (OFFSET, MASK, VALUE)      (0XFFA60040, 0x80000000U ,0x80000000U)
    */
	PSU_Mask_Write(RTC_CONTROL_OFFSET, 0x80000000U, 0x80000000U);
/*##################################################################### */

    /*
    * TIMESTAMP COUNTER
    */
    /*
    * Register : base_frequency_ID_register @ 0XFF260020

    * Frequency in number of ticks per second. Valid range from 10 MHz to 100
    * MHz.
    *  PSU_IOU_SCNTRS_BASE_FREQUENCY_ID_REGISTER_FREQ              0x5f5e0ff

    * Program this register to match the clock frequency of the timestamp gene
    * rator, in ticks per second. For example, for a 50 MHz clock, program 0x0
    * 2FAF080. This register is not accessible to the read-only programming in
    * terface.
    * (OFFSET, MASK, VALUE)      (0XFF260020, 0xFFFFFFFFU ,0x05F5E0FFU)
    */
	PSU_Mask_Write(IOU_SCNTRS_BASE_FREQUENCY_ID_REGISTER_OFFSET,
		0xFFFFFFFFU, 0x05F5E0FFU);
/*##################################################################### */

    /*
    * Register : counter_control_register @ 0XFF260000

    * Enable 0: The counter is disabled and not incrementing. 1: The counter i
    * s enabled and is incrementing.
    *  PSU_IOU_SCNTRS_COUNTER_CONTROL_REGISTER_EN                  0x1

    * Controls the counter increments. This register is not accessible to the
    * read-only programming interface.
    * (OFFSET, MASK, VALUE)      (0XFF260000, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(IOU_SCNTRS_COUNTER_CONTROL_REGISTER_OFFSET,
		0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * TTC SRC SELECT
    */

	return 1;
}
unsigned long psu_post_config_data(void)
{
    /*
    * POST_CONFIG
    */

	return 1;
}
unsigned long psu_peripherals_powerdwn_data(void)
{
    /*
    * POWER DOWN REQUEST INTERRUPT ENABLE
    */
    /*
    * POWER DOWN TRIGGER
    */

	return 1;
}
unsigned long psu_lpd_xppu_data(void)
{
    /*
    * MASTER ID LIST
    */
    /*
    * APERTURE PERMISIION LIST
    */
    /*
    * APERTURE NAME: UART0, START ADDRESS: FF000000, END ADDRESS: FF00FFFF
    */
    /*
    * APERTURE NAME: UART1, START ADDRESS: FF010000, END ADDRESS: FF01FFFF
    */
    /*
    * APERTURE NAME: I2C0, START ADDRESS: FF020000, END ADDRESS: FF02FFFF
    */
    /*
    * APERTURE NAME: I2C1, START ADDRESS: FF030000, END ADDRESS: FF03FFFF
    */
    /*
    * APERTURE NAME: SPI0, START ADDRESS: FF040000, END ADDRESS: FF04FFFF
    */
    /*
    * APERTURE NAME: SPI1, START ADDRESS: FF050000, END ADDRESS: FF05FFFF
    */
    /*
    * APERTURE NAME: CAN0, START ADDRESS: FF060000, END ADDRESS: FF06FFFF
    */
    /*
    * APERTURE NAME: CAN1, START ADDRESS: FF070000, END ADDRESS: FF07FFFF
    */
    /*
    * APERTURE NAME: RPU_UNUSED_12, START ADDRESS: FF080000, END ADDRESS: FF09
    * FFFF
    */
    /*
    * APERTURE NAME: RPU_UNUSED_12, START ADDRESS: FF080000, END ADDRESS: FF09
    * FFFF
    */
    /*
    * APERTURE NAME: GPIO, START ADDRESS: FF0A0000, END ADDRESS: FF0AFFFF
    */
    /*
    * APERTURE NAME: GEM0, START ADDRESS: FF0B0000, END ADDRESS: FF0BFFFF
    */
    /*
    * APERTURE NAME: GEM1, START ADDRESS: FF0C0000, END ADDRESS: FF0CFFFF
    */
    /*
    * APERTURE NAME: GEM2, START ADDRESS: FF0D0000, END ADDRESS: FF0DFFFF
    */
    /*
    * APERTURE NAME: GEM3, START ADDRESS: FF0E0000, END ADDRESS: FF0EFFFF
    */
    /*
    * APERTURE NAME: QSPI, START ADDRESS: FF0F0000, END ADDRESS: FF0FFFFF
    */
    /*
    * APERTURE NAME: NAND, START ADDRESS: FF100000, END ADDRESS: FF10FFFF
    */
    /*
    * APERTURE NAME: TTC0, START ADDRESS: FF110000, END ADDRESS: FF11FFFF
    */
    /*
    * APERTURE NAME: TTC1, START ADDRESS: FF120000, END ADDRESS: FF12FFFF
    */
    /*
    * APERTURE NAME: TTC2, START ADDRESS: FF130000, END ADDRESS: FF13FFFF
    */
    /*
    * APERTURE NAME: TTC3, START ADDRESS: FF140000, END ADDRESS: FF14FFFF
    */
    /*
    * APERTURE NAME: SWDT, START ADDRESS: FF150000, END ADDRESS: FF15FFFF
    */
    /*
    * APERTURE NAME: SD0, START ADDRESS: FF160000, END ADDRESS: FF16FFFF
    */
    /*
    * APERTURE NAME: SD1, START ADDRESS: FF170000, END ADDRESS: FF17FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SLCR, START ADDRESS: FF180000, END ADDRESS: FF23FFFF
    */
    /*
    * APERTURE NAME: IOU_SECURE_SLCR, START ADDRESS: FF240000, END ADDRESS: FF
    * 24FFFF
    */
    /*
    * APERTURE NAME: IOU_SCNTR, START ADDRESS: FF250000, END ADDRESS: FF25FFFF
    */
    /*
    * APERTURE NAME: IOU_SCNTRS, START ADDRESS: FF260000, END ADDRESS: FF26FFF
    * F
    */
    /*
    * APERTURE NAME: RPU_UNUSED_11, START ADDRESS: FF270000, END ADDRESS: FF2A
    * FFFF
    */
    /*
    * APERTURE NAME: RPU_UNUSED_11, START ADDRESS: FF270000, END ADDRESS: FF2A
    * FFFF
    */
    /*
    * APERTURE NAME: RPU_UNUSED_11, START ADDRESS: FF270000, END ADDRESS: FF2A
    * FFFF
    */
    /*
    * APERTURE NAME: RPU_UNUSED_11, START ADDRESS: FF270000, END ADDRESS: FF2A
    * FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_14, START ADDRESS: FF2B0000, END ADDRESS: FF2F
    * FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_14, START ADDRESS: FF2B0000, END ADDRESS: FF2F
    * FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_14, START ADDRESS: FF2B0000, END ADDRESS: FF2F
    * FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_14, START ADDRESS: FF2B0000, END ADDRESS: FF2F
    * FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_14, START ADDRESS: FF2B0000, END ADDRESS: FF2F
    * FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_CTRL, START ADDRESS: FF380000, END ADDRESS: FF3FFFFF
    */
    /*
    * APERTURE NAME: IPI_CTRL, START ADDRESS: FF380000, END ADDRESS: FF3FFFFF
    */
    /*
    * APERTURE NAME: IPI_CTRL, START ADDRESS: FF380000, END ADDRESS: FF3FFFFF
    */
    /*
    * APERTURE NAME: IPI_CTRL, START ADDRESS: FF380000, END ADDRESS: FF3FFFFF
    */
    /*
    * APERTURE NAME: IPI_CTRL, START ADDRESS: FF380000, END ADDRESS: FF3FFFFF
    */
    /*
    * APERTURE NAME: IPI_CTRL, START ADDRESS: FF380000, END ADDRESS: FF3FFFFF
    */
    /*
    * APERTURE NAME: IPI_CTRL, START ADDRESS: FF380000, END ADDRESS: FF3FFFFF
    */
    /*
    * APERTURE NAME: IPI_CTRL, START ADDRESS: FF380000, END ADDRESS: FF3FFFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_1, START ADDRESS: FF400000, END ADDRESS: FF40F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_SLCR, START ADDRESS: FF410000, END ADDRESS: FF4AFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR, START ADDRESS: FF410000, END ADDRESS: FF4AFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR, START ADDRESS: FF410000, END ADDRESS: FF4AFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR, START ADDRESS: FF410000, END ADDRESS: FF4AFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR, START ADDRESS: FF410000, END ADDRESS: FF4AFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR, START ADDRESS: FF410000, END ADDRESS: FF4AFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR, START ADDRESS: FF410000, END ADDRESS: FF4AFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR, START ADDRESS: FF410000, END ADDRESS: FF4AFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR, START ADDRESS: FF410000, END ADDRESS: FF4AFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR, START ADDRESS: FF410000, END ADDRESS: FF4AFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR_SECURE, START ADDRESS: FF4B0000, END ADDRESS: FF
    * 4DFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR_SECURE, START ADDRESS: FF4B0000, END ADDRESS: FF
    * 4DFFFF
    */
    /*
    * APERTURE NAME: LPD_SLCR_SECURE, START ADDRESS: FF4B0000, END ADDRESS: FF
    * 4DFFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_2, START ADDRESS: FF4E0000, END ADDRESS: FF5DF
    * FFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: CRL_APB, START ADDRESS: FF5E0000, END ADDRESS: FF85FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_3, START ADDRESS: FF860000, END ADDRESS: FF95F
    * FFF
    */
    /*
    * APERTURE NAME: OCM_SLCR, START ADDRESS: FF960000, END ADDRESS: FF96FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_4, START ADDRESS: FF970000, END ADDRESS: FF97F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_XPPU, START ADDRESS: FF980000, END ADDRESS: FF99FFFF
    */
    /*
    * APERTURE NAME: RPU, START ADDRESS: FF9A0000, END ADDRESS: FF9AFFFF
    */
    /*
    * APERTURE NAME: AFIFM6, START ADDRESS: FF9B0000, END ADDRESS: FF9BFFFF
    */
    /*
    * APERTURE NAME: LPD_XPPU_SINK, START ADDRESS: FF9C0000, END ADDRESS: FF9C
    * FFFF
    */
    /*
    * APERTURE NAME: USB3_0, START ADDRESS: FF9D0000, END ADDRESS: FF9DFFFF
    */
    /*
    * APERTURE NAME: USB3_1, START ADDRESS: FF9E0000, END ADDRESS: FF9EFFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_5, START ADDRESS: FF9F0000, END ADDRESS: FF9FF
    * FFF
    */
    /*
    * APERTURE NAME: APM0, START ADDRESS: FFA00000, END ADDRESS: FFA0FFFF
    */
    /*
    * APERTURE NAME: APM1, START ADDRESS: FFA10000, END ADDRESS: FFA1FFFF
    */
    /*
    * APERTURE NAME: APM_INTC_IOU, START ADDRESS: FFA20000, END ADDRESS: FFA2F
    * FFF
    */
    /*
    * APERTURE NAME: APM_FPD_LPD, START ADDRESS: FFA30000, END ADDRESS: FFA3FF
    * FF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_6, START ADDRESS: FFA40000, END ADDRESS: FFA4F
    * FFF
    */
    /*
    * APERTURE NAME: AMS, START ADDRESS: FFA50000, END ADDRESS: FFA5FFFF
    */
    /*
    * APERTURE NAME: RTC, START ADDRESS: FFA60000, END ADDRESS: FFA6FFFF
    */
    /*
    * APERTURE NAME: OCM_XMPU_CFG, START ADDRESS: FFA70000, END ADDRESS: FFA7F
    * FFF
    */
    /*
    * APERTURE NAME: ADMA_0, START ADDRESS: FFA80000, END ADDRESS: FFA8FFFF
    */
    /*
    * APERTURE NAME: ADMA_1, START ADDRESS: FFA90000, END ADDRESS: FFA9FFFF
    */
    /*
    * APERTURE NAME: ADMA_2, START ADDRESS: FFAA0000, END ADDRESS: FFAAFFFF
    */
    /*
    * APERTURE NAME: ADMA_3, START ADDRESS: FFAB0000, END ADDRESS: FFABFFFF
    */
    /*
    * APERTURE NAME: ADMA_4, START ADDRESS: FFAC0000, END ADDRESS: FFACFFFF
    */
    /*
    * APERTURE NAME: ADMA_5, START ADDRESS: FFAD0000, END ADDRESS: FFADFFFF
    */
    /*
    * APERTURE NAME: ADMA_6, START ADDRESS: FFAE0000, END ADDRESS: FFAEFFFF
    */
    /*
    * APERTURE NAME: ADMA_7, START ADDRESS: FFAF0000, END ADDRESS: FFAFFFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_7, START ADDRESS: FFB00000, END ADDRESS: FFBFF
    * FFF
    */
    /*
    * APERTURE NAME: CSU_ROM, START ADDRESS: FFC00000, END ADDRESS: FFC1FFFF
    */
    /*
    * APERTURE NAME: CSU_ROM, START ADDRESS: FFC00000, END ADDRESS: FFC1FFFF
    */
    /*
    * APERTURE NAME: CSU_LOCAL, START ADDRESS: FFC20000, END ADDRESS: FFC2FFFF
    */
    /*
    * APERTURE NAME: PUF, START ADDRESS: FFC30000, END ADDRESS: FFC3FFFF
    */
    /*
    * APERTURE NAME: CSU_RAM, START ADDRESS: FFC40000, END ADDRESS: FFC5FFFF
    */
    /*
    * APERTURE NAME: CSU_RAM, START ADDRESS: FFC40000, END ADDRESS: FFC5FFFF
    */
    /*
    * APERTURE NAME: CSU_IOMODULE, START ADDRESS: FFC60000, END ADDRESS: FFC7F
    * FFF
    */
    /*
    * APERTURE NAME: CSU_IOMODULE, START ADDRESS: FFC60000, END ADDRESS: FFC7F
    * FFF
    */
    /*
    * APERTURE NAME: CSUDMA, START ADDRESS: FFC80000, END ADDRESS: FFC9FFFF
    */
    /*
    * APERTURE NAME: CSUDMA, START ADDRESS: FFC80000, END ADDRESS: FFC9FFFF
    */
    /*
    * APERTURE NAME: CSU, START ADDRESS: FFCA0000, END ADDRESS: FFCAFFFF
    */
    /*
    * APERTURE NAME: CSU_WDT, START ADDRESS: FFCB0000, END ADDRESS: FFCBFFFF
    */
    /*
    * APERTURE NAME: EFUSE, START ADDRESS: FFCC0000, END ADDRESS: FFCCFFFF
    */
    /*
    * APERTURE NAME: BBRAM, START ADDRESS: FFCD0000, END ADDRESS: FFCDFFFF
    */
    /*
    * APERTURE NAME: RSA_CORE, START ADDRESS: FFCE0000, END ADDRESS: FFCEFFFF
    */
    /*
    * APERTURE NAME: MBISTJTAG, START ADDRESS: FFCF0000, END ADDRESS: FFCFFFFF
    */
    /*
    * APERTURE NAME: PMU_ROM, START ADDRESS: FFD00000, END ADDRESS: FFD3FFFF
    */
    /*
    * APERTURE NAME: PMU_ROM, START ADDRESS: FFD00000, END ADDRESS: FFD3FFFF
    */
    /*
    * APERTURE NAME: PMU_ROM, START ADDRESS: FFD00000, END ADDRESS: FFD3FFFF
    */
    /*
    * APERTURE NAME: PMU_ROM, START ADDRESS: FFD00000, END ADDRESS: FFD3FFFF
    */
    /*
    * APERTURE NAME: PMU_IOMODULE, START ADDRESS: FFD40000, END ADDRESS: FFD5F
    * FFF
    */
    /*
    * APERTURE NAME: PMU_IOMODULE, START ADDRESS: FFD40000, END ADDRESS: FFD5F
    * FFF
    */
    /*
    * APERTURE NAME: PMU_LOCAL, START ADDRESS: FFD60000, END ADDRESS: FFD7FFFF
    */
    /*
    * APERTURE NAME: PMU_LOCAL, START ADDRESS: FFD60000, END ADDRESS: FFD7FFFF
    */
    /*
    * APERTURE NAME: PMU_GLOBAL, START ADDRESS: FFD80000, END ADDRESS: FFDBFFF
    * F
    */
    /*
    * APERTURE NAME: PMU_GLOBAL, START ADDRESS: FFD80000, END ADDRESS: FFDBFFF
    * F
    */
    /*
    * APERTURE NAME: PMU_GLOBAL, START ADDRESS: FFD80000, END ADDRESS: FFDBFFF
    * F
    */
    /*
    * APERTURE NAME: PMU_GLOBAL, START ADDRESS: FFD80000, END ADDRESS: FFDBFFF
    * F
    */
    /*
    * APERTURE NAME: PMU_RAM, START ADDRESS: FFDC0000, END ADDRESS: FFDFFFFF
    */
    /*
    * APERTURE NAME: PMU_RAM, START ADDRESS: FFDC0000, END ADDRESS: FFDFFFFF
    */
    /*
    * APERTURE NAME: PMU_RAM, START ADDRESS: FFDC0000, END ADDRESS: FFDFFFFF
    */
    /*
    * APERTURE NAME: PMU_RAM, START ADDRESS: FFDC0000, END ADDRESS: FFDFFFFF
    */
    /*
    * APERTURE NAME: R5_0_ATCM, START ADDRESS: FFE00000, END ADDRESS: FFE0FFFF
    */
    /*
    * APERTURE NAME: R5_0_ATCM_LOCKSTEP, START ADDRESS: FFE10000, END ADDRESS:
    *  FFE1FFFF
    */
    /*
    * APERTURE NAME: R5_0_BTCM, START ADDRESS: FFE20000, END ADDRESS: FFE2FFFF
    */
    /*
    * APERTURE NAME: R5_0_BTCM_LOCKSTEP, START ADDRESS: FFE30000, END ADDRESS:
    *  FFE3FFFF
    */
    /*
    * APERTURE NAME: R5_0_INSTRUCTION_CACHE, START ADDRESS: FFE40000, END ADDR
    * ESS: FFE4FFFF
    */
    /*
    * APERTURE NAME: R5_0_DATA_CACHE, START ADDRESS: FFE50000, END ADDRESS: FF
    * E5FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_8, START ADDRESS: FFE60000, END ADDRESS: FFE8F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_8, START ADDRESS: FFE60000, END ADDRESS: FFE8F
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_8, START ADDRESS: FFE60000, END ADDRESS: FFE8F
    * FFF
    */
    /*
    * APERTURE NAME: R5_1_ATCM_, START ADDRESS: FFE90000, END ADDRESS: FFE9FFF
    * F
    */
    /*
    * APERTURE NAME: RPU_UNUSED_10, START ADDRESS: FFEA0000, END ADDRESS: FFEA
    * FFFF
    */
    /*
    * APERTURE NAME: R5_1_BTCM_, START ADDRESS: FFEB0000, END ADDRESS: FFEBFFF
    * F
    */
    /*
    * APERTURE NAME: R5_1_INSTRUCTION_CACHE, START ADDRESS: FFEC0000, END ADDR
    * ESS: FFECFFFF
    */
    /*
    * APERTURE NAME: R5_1_DATA_CACHE, START ADDRESS: FFED0000, END ADDRESS: FF
    * EDFFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_9, START ADDRESS: FFEE0000, END ADDRESS: FFFBF
    * FFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_15, START ADDRESS: FFFD0000, END ADDRESS: FFFF
    * FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_15, START ADDRESS: FFFD0000, END ADDRESS: FFFF
    * FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_15, START ADDRESS: FFFD0000, END ADDRESS: FFFF
    * FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_1, START ADDRESS: FF310000, END ADDRESS: FF31FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_2, START ADDRESS: FF320000, END ADDRESS: FF32FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_0, START ADDRESS: FF300000, END ADDRESS: FF30FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_7, START ADDRESS: FF340000, END ADDRESS: FF34FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_8, START ADDRESS: FF350000, END ADDRESS: FF35FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_9, START ADDRESS: FF360000, END ADDRESS: FF36FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_10, START ADDRESS: FF370000, END ADDRESS: FF37FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IPI_PMU, START ADDRESS: FF330000, END ADDRESS: FF33FFFF
    */
    /*
    * APERTURE NAME: IOU_GPV, START ADDRESS: FE000000, END ADDRESS: FE0FFFFF
    */
    /*
    * APERTURE NAME: LPD_GPV, START ADDRESS: FE100000, END ADDRESS: FE1FFFFF
    */
    /*
    * APERTURE NAME: USB3_0_XHCI, START ADDRESS: FE200000, END ADDRESS: FE2FFF
    * FF
    */
    /*
    * APERTURE NAME: USB3_1_XHCI, START ADDRESS: FE300000, END ADDRESS: FE3FFF
    * FF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_13, START ADDRESS: FE400000, END ADDRESS: FE7F
    * FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_13, START ADDRESS: FE400000, END ADDRESS: FE7F
    * FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_13, START ADDRESS: FE400000, END ADDRESS: FE7F
    * FFFF
    */
    /*
    * APERTURE NAME: LPD_UNUSED_13, START ADDRESS: FE400000, END ADDRESS: FE7F
    * FFFF
    */
    /*
    * APERTURE NAME: CORESIGHT, START ADDRESS: FE800000, END ADDRESS: FEFFFFFF
    */
    /*
    * APERTURE NAME: CORESIGHT, START ADDRESS: FE800000, END ADDRESS: FEFFFFFF
    */
    /*
    * APERTURE NAME: CORESIGHT, START ADDRESS: FE800000, END ADDRESS: FEFFFFFF
    */
    /*
    * APERTURE NAME: CORESIGHT, START ADDRESS: FE800000, END ADDRESS: FEFFFFFF
    */
    /*
    * APERTURE NAME: CORESIGHT, START ADDRESS: FE800000, END ADDRESS: FEFFFFFF
    */
    /*
    * APERTURE NAME: CORESIGHT, START ADDRESS: FE800000, END ADDRESS: FEFFFFFF
    */
    /*
    * APERTURE NAME: CORESIGHT, START ADDRESS: FE800000, END ADDRESS: FEFFFFFF
    */
    /*
    * APERTURE NAME: CORESIGHT, START ADDRESS: FE800000, END ADDRESS: FEFFFFFF
    */
    /*
    * APERTURE NAME: QSPI_LINEAR_ADDRESS, START ADDRESS: C0000000, END ADDRESS
    * : DFFFFFFF
    */
    /*
    * XPPU CONTROL
    */

	return 1;
}
unsigned long psu_ddr_xmpu0_data(void)
{
    /*
    * DDR XMPU0
    */

	return 1;
}
unsigned long psu_ddr_xmpu1_data(void)
{
    /*
    * DDR XMPU1
    */

	return 1;
}
unsigned long psu_ddr_xmpu2_data(void)
{
    /*
    * DDR XMPU2
    */

	return 1;
}
unsigned long psu_ddr_xmpu3_data(void)
{
    /*
    * DDR XMPU3
    */

	return 1;
}
unsigned long psu_ddr_xmpu4_data(void)
{
    /*
    * DDR XMPU4
    */

	return 1;
}
unsigned long psu_ddr_xmpu5_data(void)
{
    /*
    * DDR XMPU5
    */

	return 1;
}
unsigned long psu_ocm_xmpu_data(void)
{
    /*
    * OCM XMPU
    */

	return 1;
}
unsigned long psu_fpd_xmpu_data(void)
{
    /*
    * FPD XMPU
    */

	return 1;
}
unsigned long psu_protection_lock_data(void)
{
    /*
    * LOCKING PROTECTION MODULE
    */
    /*
    * XPPU LOCK
    */
    /*
    * APERTURE NAME: LPD_XPPU, START ADDRESS: FF980000, END ADDRESS: FF99FFFF
    */
    /*
    * XMPU LOCK
    */
    /*
    * LOCK OCM XMPU ONLY IF IT IS NOT PROTECTED BY ANY MASTER
    */
    /*
    * LOCK FPD XMPU ONLY IF IT IS NOT PROTECTED BY ANY MASTER
    */
    /*
    * LOCK DDR XMPU ONLY IF IT IS NOT PROTECTED BY ANY MASTER
    */
    /*
    * LOCK DDR XMPU ONLY IF IT IS NOT PROTECTED BY ANY MASTER
    */
    /*
    * LOCK DDR XMPU ONLY IF IT IS NOT PROTECTED BY ANY MASTER
    */
    /*
    * LOCK DDR XMPU ONLY IF IT IS NOT PROTECTED BY ANY MASTER
    */
    /*
    * LOCK DDR XMPU ONLY IF IT IS NOT PROTECTED BY ANY MASTER
    */
    /*
    * LOCK DDR XMPU ONLY IF IT IS NOT PROTECTED BY ANY MASTER
    */

	return 1;
}
unsigned long psu_apply_master_tz(void)
{
    /*
    * RPU
    */
    /*
    * DP TZ
    */
    /*
    * Register : slcr_dpdma @ 0XFD690040

    * TrustZone classification for DisplayPort DMA
    *  PSU_FPD_SLCR_SECURE_SLCR_DPDMA_TZ                           1

    * DPDMA TrustZone Settings
    * (OFFSET, MASK, VALUE)      (0XFD690040, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(FPD_SLCR_SECURE_SLCR_DPDMA_OFFSET,
		0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * SATA TZ
    */
    /*
    * PCIE TZ
    */
    /*
    * Register : slcr_pcie @ 0XFD690030

    * TrustZone classification for DMA Channel 0
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_DMA_0                      1

    * TrustZone classification for DMA Channel 1
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_DMA_1                      1

    * TrustZone classification for DMA Channel 2
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_DMA_2                      1

    * TrustZone classification for DMA Channel 3
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_DMA_3                      1

    * TrustZone classification for Ingress Address Translation 0
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_INGR_0                  1

    * TrustZone classification for Ingress Address Translation 1
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_INGR_1                  1

    * TrustZone classification for Ingress Address Translation 2
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_INGR_2                  1

    * TrustZone classification for Ingress Address Translation 3
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_INGR_3                  1

    * TrustZone classification for Ingress Address Translation 4
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_INGR_4                  1

    * TrustZone classification for Ingress Address Translation 5
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_INGR_5                  1

    * TrustZone classification for Ingress Address Translation 6
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_INGR_6                  1

    * TrustZone classification for Ingress Address Translation 7
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_INGR_7                  1

    * TrustZone classification for Egress Address Translation 0
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_EGR_0                   1

    * TrustZone classification for Egress Address Translation 1
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_EGR_1                   1

    * TrustZone classification for Egress Address Translation 2
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_EGR_2                   1

    * TrustZone classification for Egress Address Translation 3
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_EGR_3                   1

    * TrustZone classification for Egress Address Translation 4
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_EGR_4                   1

    * TrustZone classification for Egress Address Translation 5
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_EGR_5                   1

    * TrustZone classification for Egress Address Translation 6
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_EGR_6                   1

    * TrustZone classification for Egress Address Translation 7
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_AT_EGR_7                   1

    * TrustZone classification for DMA Registers
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_DMA_REGS                   1

    * TrustZone classification for MSIx Table
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_MSIX_TABLE                 1

    * TrustZone classification for MSIx PBA
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_MSIX_PBA                   1

    * TrustZone classification for ECAM
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_ECAM                       1

    * TrustZone classification for Bridge Common Registers
    *  PSU_FPD_SLCR_SECURE_SLCR_PCIE_TZ_BRIDGE_REGS                1

    * PCIe TrustZone settings. This register may only be modified during bootu
    * p (while PCIe block is disabled)
    * (OFFSET, MASK, VALUE)      (0XFD690030, 0x01FFFFFFU ,0x01FFFFFFU)
    */
	PSU_Mask_Write(FPD_SLCR_SECURE_SLCR_PCIE_OFFSET,
		0x01FFFFFFU, 0x01FFFFFFU);
/*##################################################################### */

    /*
    * USB TZ
    */
    /*
    * Register : slcr_usb @ 0XFF4B0034

    * TrustZone Classification for USB3_0
    *  PSU_LPD_SLCR_SECURE_SLCR_USB_TZ_USB3_0                      1

    * TrustZone Classification for USB3_1
    *  PSU_LPD_SLCR_SECURE_SLCR_USB_TZ_USB3_1                      1

    * USB3 TrustZone settings
    * (OFFSET, MASK, VALUE)      (0XFF4B0034, 0x00000003U ,0x00000003U)
    */
	PSU_Mask_Write(LPD_SLCR_SECURE_SLCR_USB_OFFSET,
		0x00000003U, 0x00000003U);
/*##################################################################### */

    /*
    * SD TZ
    */
    /*
    * Register : IOU_AXI_RPRTCN @ 0XFF240004

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_RPRTCN_SD0_AXI_ARPROT           2

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_RPRTCN_SD1_AXI_ARPROT           2

    * AXI read protection type selection
    * (OFFSET, MASK, VALUE)      (0XFF240004, 0x003F0000U ,0x00120000U)
    */
	PSU_Mask_Write(IOU_SECURE_SLCR_IOU_AXI_RPRTCN_OFFSET,
		0x003F0000U, 0x00120000U);
/*##################################################################### */

    /*
    * Register : IOU_AXI_WPRTCN @ 0XFF240000

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_WPRTCN_SD0_AXI_AWPROT           2

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_WPRTCN_SD1_AXI_AWPROT           2

    * AXI write protection type selection
    * (OFFSET, MASK, VALUE)      (0XFF240000, 0x003F0000U ,0x00120000U)
    */
	PSU_Mask_Write(IOU_SECURE_SLCR_IOU_AXI_WPRTCN_OFFSET,
		0x003F0000U, 0x00120000U);
/*##################################################################### */

    /*
    * GEM TZ
    */
    /*
    * Register : IOU_AXI_RPRTCN @ 0XFF240004

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_RPRTCN_GEM0_AXI_ARPROT          2

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_RPRTCN_GEM1_AXI_ARPROT          2

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_RPRTCN_GEM2_AXI_ARPROT          2

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_RPRTCN_GEM3_AXI_ARPROT          2

    * AXI read protection type selection
    * (OFFSET, MASK, VALUE)      (0XFF240004, 0x00000FFFU ,0x00000492U)
    */
	PSU_Mask_Write(IOU_SECURE_SLCR_IOU_AXI_RPRTCN_OFFSET,
		0x00000FFFU, 0x00000492U);
/*##################################################################### */

    /*
    * Register : IOU_AXI_WPRTCN @ 0XFF240000

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_WPRTCN_GEM0_AXI_AWPROT          2

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_WPRTCN_GEM1_AXI_AWPROT          2

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_WPRTCN_GEM2_AXI_AWPROT          2

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_WPRTCN_GEM3_AXI_AWPROT          2

    * AXI write protection type selection
    * (OFFSET, MASK, VALUE)      (0XFF240000, 0x00000FFFU ,0x00000492U)
    */
	PSU_Mask_Write(IOU_SECURE_SLCR_IOU_AXI_WPRTCN_OFFSET,
		0x00000FFFU, 0x00000492U);
/*##################################################################### */

    /*
    * QSPI TZ
    */
    /*
    * Register : IOU_AXI_WPRTCN @ 0XFF240000

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_WPRTCN_QSPI_AXI_AWPROT          2

    * AXI write protection type selection
    * (OFFSET, MASK, VALUE)      (0XFF240000, 0x0E000000U ,0x04000000U)
    */
	PSU_Mask_Write(IOU_SECURE_SLCR_IOU_AXI_WPRTCN_OFFSET,
		0x0E000000U, 0x04000000U);
/*##################################################################### */

    /*
    * NAND TZ
    */
    /*
    * Register : IOU_AXI_RPRTCN @ 0XFF240004

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_RPRTCN_NAND_AXI_ARPROT          2

    * AXI read protection type selection
    * (OFFSET, MASK, VALUE)      (0XFF240004, 0x01C00000U ,0x00800000U)
    */
	PSU_Mask_Write(IOU_SECURE_SLCR_IOU_AXI_RPRTCN_OFFSET,
		0x01C00000U, 0x00800000U);
/*##################################################################### */

    /*
    * Register : IOU_AXI_WPRTCN @ 0XFF240000

    * AXI protection [0] = '0' : Normal access [0] = '1' : Previleged access [
    * 1] = '0' : Secure access [1] = '1' : No secure access [2] = '0' : Data a
    * ccess [2] = '1'' : Instruction access
    *  PSU_IOU_SECURE_SLCR_IOU_AXI_WPRTCN_NAND_AXI_AWPROT          2

    * AXI write protection type selection
    * (OFFSET, MASK, VALUE)      (0XFF240000, 0x01C00000U ,0x00800000U)
    */
	PSU_Mask_Write(IOU_SECURE_SLCR_IOU_AXI_WPRTCN_OFFSET,
		0x01C00000U, 0x00800000U);
/*##################################################################### */

    /*
    * DMA TZ
    */
    /*
    * Register : slcr_adma @ 0XFF4B0024

    * TrustZone Classification for ADMA
    *  PSU_LPD_SLCR_SECURE_SLCR_ADMA_TZ                            0xFF

    * RPU TrustZone settings
    * (OFFSET, MASK, VALUE)      (0XFF4B0024, 0x000000FFU ,0x000000FFU)
    */
	PSU_Mask_Write(LPD_SLCR_SECURE_SLCR_ADMA_OFFSET,
		0x000000FFU, 0x000000FFU);
/*##################################################################### */

    /*
    * Register : slcr_gdma @ 0XFD690050

    * TrustZone Classification for GDMA
    *  PSU_FPD_SLCR_SECURE_SLCR_GDMA_TZ                            0xFF

    * GDMA Trustzone Settings
    * (OFFSET, MASK, VALUE)      (0XFD690050, 0x000000FFU ,0x000000FFU)
    */
	PSU_Mask_Write(FPD_SLCR_SECURE_SLCR_GDMA_OFFSET,
		0x000000FFU, 0x000000FFU);
/*##################################################################### */


	return 1;
}
unsigned long psu_serdes_init_data(void)
{
    /*
    * SERDES INITIALIZATION
    */
    /*
    * GT REFERENCE CLOCK SOURCE SELECTION
    */
    /*
    * Register : PLL_REF_SEL0 @ 0XFD410000

    * PLL0 Reference Selection. 0x0 - 5MHz, 0x1 - 9.6MHz, 0x2 - 10MHz, 0x3 - 1
    * 2MHz, 0x4 - 13MHz, 0x5 - 19.2MHz, 0x6 - 20MHz, 0x7 - 24MHz, 0x8 - 26MHz,
    *  0x9 - 27MHz, 0xA - 38.4MHz, 0xB - 40MHz, 0xC - 52MHz, 0xD - 100MHz, 0xE
    *  - 108MHz, 0xF - 125MHz, 0x10 - 135MHz, 0x11 - 150 MHz. 0x12 to 0x1F - R
    * eserved
    *  PSU_SERDES_PLL_REF_SEL0_PLLREFSEL0                          0x9

    * PLL0 Reference Selection Register
    * (OFFSET, MASK, VALUE)      (0XFD410000, 0x0000001FU ,0x00000009U)
    */
	PSU_Mask_Write(SERDES_PLL_REF_SEL0_OFFSET, 0x0000001FU, 0x00000009U);
/*##################################################################### */

    /*
    * Register : PLL_REF_SEL1 @ 0XFD410004

    * PLL1 Reference Selection. 0x0 - 5MHz, 0x1 - 9.6MHz, 0x2 - 10MHz, 0x3 - 1
    * 2MHz, 0x4 - 13MHz, 0x5 - 19.2MHz, 0x6 - 20MHz, 0x7 - 24MHz, 0x8 - 26MHz,
    *  0x9 - 27MHz, 0xA - 38.4MHz, 0xB - 40MHz, 0xC - 52MHz, 0xD - 100MHz, 0xE
    *  - 108MHz, 0xF - 125MHz, 0x10 - 135MHz, 0x11 - 150 MHz. 0x12 to 0x1F - R
    * eserved
    *  PSU_SERDES_PLL_REF_SEL1_PLLREFSEL1                          0x9

    * PLL1 Reference Selection Register
    * (OFFSET, MASK, VALUE)      (0XFD410004, 0x0000001FU ,0x00000009U)
    */
	PSU_Mask_Write(SERDES_PLL_REF_SEL1_OFFSET, 0x0000001FU, 0x00000009U);
/*##################################################################### */

    /*
    * Register : PLL_REF_SEL2 @ 0XFD410008

    * PLL2 Reference Selection. 0x0 - 5MHz, 0x1 - 9.6MHz, 0x2 - 10MHz, 0x3 - 1
    * 2MHz, 0x4 - 13MHz, 0x5 - 19.2MHz, 0x6 - 20MHz, 0x7 - 24MHz, 0x8 - 26MHz,
    *  0x9 - 27MHz, 0xA - 38.4MHz, 0xB - 40MHz, 0xC - 52MHz, 0xD - 100MHz, 0xE
    *  - 108MHz, 0xF - 125MHz, 0x10 - 135MHz, 0x11 - 150 MHz. 0x12 to 0x1F - R
    * eserved
    *  PSU_SERDES_PLL_REF_SEL2_PLLREFSEL2                          0x8

    * PLL2 Reference Selection Register
    * (OFFSET, MASK, VALUE)      (0XFD410008, 0x0000001FU ,0x00000008U)
    */
	PSU_Mask_Write(SERDES_PLL_REF_SEL2_OFFSET, 0x0000001FU, 0x00000008U);
/*##################################################################### */

    /*
    * Register : PLL_REF_SEL3 @ 0XFD41000C

    * PLL3 Reference Selection. 0x0 - 5MHz, 0x1 - 9.6MHz, 0x2 - 10MHz, 0x3 - 1
    * 2MHz, 0x4 - 13MHz, 0x5 - 19.2MHz, 0x6 - 20MHz, 0x7 - 24MHz, 0x8 - 26MHz,
    *  0x9 - 27MHz, 0xA - 38.4MHz, 0xB - 40MHz, 0xC - 52MHz, 0xD - 100MHz, 0xE
    *  - 108MHz, 0xF - 125MHz, 0x10 - 135MHz, 0x11 - 150 MHz. 0x12 to 0x1F - R
    * eserved
    *  PSU_SERDES_PLL_REF_SEL3_PLLREFSEL3                          0x8

    * PLL3 Reference Selection Register
    * (OFFSET, MASK, VALUE)      (0XFD41000C, 0x0000001FU ,0x00000008U)
    */
	PSU_Mask_Write(SERDES_PLL_REF_SEL3_OFFSET, 0x0000001FU, 0x00000008U);
/*##################################################################### */

    /*
    * GT REFERENCE CLOCK FREQUENCY SELECTION
    */
    /*
    * Register : L0_L0_REF_CLK_SEL @ 0XFD402860

    * Sel of lane 0 ref clock local mux. Set to 1 to select lane 0 slicer outp
    * ut. Set to 0 to select lane0 ref clock mux output.
    *  PSU_SERDES_L0_L0_REF_CLK_SEL_L0_REF_CLK_LCL_SEL             0x0

    * Bit 1 of lane 0 ref clock mux one hot sel. Set to 1 to select lane 1 sli
    * cer output from ref clock network
    *  PSU_SERDES_L0_L0_REF_CLK_SEL_L0_REF_CLK_SEL_1               0x1

    * Lane0 Ref Clock Selection Register
    * (OFFSET, MASK, VALUE)      (0XFD402860, 0x00000082U ,0x00000002U)
    */
	PSU_Mask_Write(SERDES_L0_L0_REF_CLK_SEL_OFFSET,
		0x00000082U, 0x00000002U);
/*##################################################################### */

    /*
    * Register : L0_L1_REF_CLK_SEL @ 0XFD402864

    * Sel of lane 1 ref clock local mux. Set to 1 to select lane 1 slicer outp
    * ut. Set to 0 to select lane1 ref clock mux output.
    *  PSU_SERDES_L0_L1_REF_CLK_SEL_L1_REF_CLK_LCL_SEL             0x1

    * Lane1 Ref Clock Selection Register
    * (OFFSET, MASK, VALUE)      (0XFD402864, 0x00000080U ,0x00000080U)
    */
	PSU_Mask_Write(SERDES_L0_L1_REF_CLK_SEL_OFFSET,
		0x00000080U, 0x00000080U);
/*##################################################################### */

    /*
    * Register : L0_L2_REF_CLK_SEL @ 0XFD402868

    * Sel of lane 2 ref clock local mux. Set to 1 to select lane 1 slicer outp
    * ut. Set to 0 to select lane2 ref clock mux output.
    *  PSU_SERDES_L0_L2_REF_CLK_SEL_L2_REF_CLK_LCL_SEL             0x0

    * Bit 0 of lane 2 ref clock mux one hot sel. Set to 1 to select lane 0 sli
    * cer output from ref clock network
    *  PSU_SERDES_L0_L2_REF_CLK_SEL_L2_REF_CLK_SEL_0               0x1

    * Lane2 Ref Clock Selection Register
    * (OFFSET, MASK, VALUE)      (0XFD402868, 0x00000081U ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L0_L2_REF_CLK_SEL_OFFSET,
		0x00000081U, 0x00000001U);
/*##################################################################### */

    /*
    * Register : L0_L3_REF_CLK_SEL @ 0XFD40286C

    * Sel of lane 3 ref clock local mux. Set to 1 to select lane 3 slicer outp
    * ut. Set to 0 to select lane3 ref clock mux output.
    *  PSU_SERDES_L0_L3_REF_CLK_SEL_L3_REF_CLK_LCL_SEL             0x0

    * Bit 0 of lane 3 ref clock mux one hot sel. Set to 1 to select lane 0 sli
    * cer output from ref clock network
    *  PSU_SERDES_L0_L3_REF_CLK_SEL_L3_REF_CLK_SEL_0               0x1

    * Lane3 Ref Clock Selection Register
    * (OFFSET, MASK, VALUE)      (0XFD40286C, 0x00000081U ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L0_L3_REF_CLK_SEL_OFFSET,
		0x00000081U, 0x00000001U);
/*##################################################################### */

    /*
    * ENABLE SPREAD SPECTRUM
    */
    /*
    * Register : L2_TM_PLL_DIG_37 @ 0XFD40A094

    * Enable/Disable coarse code satureation limiting logic
    *  PSU_SERDES_L2_TM_PLL_DIG_37_TM_ENABLE_COARSE_SATURATION     0x1

    * Test mode register 37
    * (OFFSET, MASK, VALUE)      (0XFD40A094, 0x00000010U ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L2_TM_PLL_DIG_37_OFFSET,
		0x00000010U, 0x00000010U);
/*##################################################################### */

    /*
    * Register : L3_TM_PLL_DIG_37 @ 0XFD40E094

    * Enable/Disable coarse code satureation limiting logic
    *  PSU_SERDES_L3_TM_PLL_DIG_37_TM_ENABLE_COARSE_SATURATION     0x1

    * Test mode register 37
    * (OFFSET, MASK, VALUE)      (0XFD40E094, 0x00000010U ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L3_TM_PLL_DIG_37_OFFSET,
		0x00000010U, 0x00000010U);
/*##################################################################### */

    /*
    * Register : L2_PLL_SS_STEPS_0_LSB @ 0XFD40A368

    * Spread Spectrum No of Steps [7:0]
    *  PSU_SERDES_L2_PLL_SS_STEPS_0_LSB_SS_NUM_OF_STEPS_0_LSB      0x38

    * Spread Spectrum No of Steps bits 7:0
    * (OFFSET, MASK, VALUE)      (0XFD40A368, 0x000000FFU ,0x00000038U)
    */
	PSU_Mask_Write(SERDES_L2_PLL_SS_STEPS_0_LSB_OFFSET,
		0x000000FFU, 0x00000038U);
/*##################################################################### */

    /*
    * Register : L2_PLL_SS_STEPS_1_MSB @ 0XFD40A36C

    * Spread Spectrum No of Steps [10:8]
    *  PSU_SERDES_L2_PLL_SS_STEPS_1_MSB_SS_NUM_OF_STEPS_1_MSB      0x03

    * Spread Spectrum No of Steps bits 10:8
    * (OFFSET, MASK, VALUE)      (0XFD40A36C, 0x00000007U ,0x00000003U)
    */
	PSU_Mask_Write(SERDES_L2_PLL_SS_STEPS_1_MSB_OFFSET,
		0x00000007U, 0x00000003U);
/*##################################################################### */

    /*
    * Register : L3_PLL_SS_STEPS_0_LSB @ 0XFD40E368

    * Spread Spectrum No of Steps [7:0]
    *  PSU_SERDES_L3_PLL_SS_STEPS_0_LSB_SS_NUM_OF_STEPS_0_LSB      0x38

    * Spread Spectrum No of Steps bits 7:0
    * (OFFSET, MASK, VALUE)      (0XFD40E368, 0x000000FFU ,0x00000038U)
    */
	PSU_Mask_Write(SERDES_L3_PLL_SS_STEPS_0_LSB_OFFSET,
		0x000000FFU, 0x00000038U);
/*##################################################################### */

    /*
    * Register : L3_PLL_SS_STEPS_1_MSB @ 0XFD40E36C

    * Spread Spectrum No of Steps [10:8]
    *  PSU_SERDES_L3_PLL_SS_STEPS_1_MSB_SS_NUM_OF_STEPS_1_MSB      0x03

    * Spread Spectrum No of Steps bits 10:8
    * (OFFSET, MASK, VALUE)      (0XFD40E36C, 0x00000007U ,0x00000003U)
    */
	PSU_Mask_Write(SERDES_L3_PLL_SS_STEPS_1_MSB_OFFSET,
		0x00000007U, 0x00000003U);
/*##################################################################### */

    /*
    * Register : L0_PLL_SS_STEPS_0_LSB @ 0XFD402368

    * Spread Spectrum No of Steps [7:0]
    *  PSU_SERDES_L0_PLL_SS_STEPS_0_LSB_SS_NUM_OF_STEPS_0_LSB      0x58

    * Spread Spectrum No of Steps bits 7:0
    * (OFFSET, MASK, VALUE)      (0XFD402368, 0x000000FFU ,0x00000058U)
    */
	PSU_Mask_Write(SERDES_L0_PLL_SS_STEPS_0_LSB_OFFSET,
		0x000000FFU, 0x00000058U);
/*##################################################################### */

    /*
    * Register : L0_PLL_SS_STEPS_1_MSB @ 0XFD40236C

    * Spread Spectrum No of Steps [10:8]
    *  PSU_SERDES_L0_PLL_SS_STEPS_1_MSB_SS_NUM_OF_STEPS_1_MSB      0x3

    * Spread Spectrum No of Steps bits 10:8
    * (OFFSET, MASK, VALUE)      (0XFD40236C, 0x00000007U ,0x00000003U)
    */
	PSU_Mask_Write(SERDES_L0_PLL_SS_STEPS_1_MSB_OFFSET,
		0x00000007U, 0x00000003U);
/*##################################################################### */

    /*
    * Register : L1_PLL_SS_STEPS_0_LSB @ 0XFD406368

    * Spread Spectrum No of Steps [7:0]
    *  PSU_SERDES_L1_PLL_SS_STEPS_0_LSB_SS_NUM_OF_STEPS_0_LSB      0x58

    * Spread Spectrum No of Steps bits 7:0
    * (OFFSET, MASK, VALUE)      (0XFD406368, 0x000000FFU ,0x00000058U)
    */
	PSU_Mask_Write(SERDES_L1_PLL_SS_STEPS_0_LSB_OFFSET,
		0x000000FFU, 0x00000058U);
/*##################################################################### */

    /*
    * Register : L1_PLL_SS_STEPS_1_MSB @ 0XFD40636C

    * Spread Spectrum No of Steps [10:8]
    *  PSU_SERDES_L1_PLL_SS_STEPS_1_MSB_SS_NUM_OF_STEPS_1_MSB      0x3

    * Spread Spectrum No of Steps bits 10:8
    * (OFFSET, MASK, VALUE)      (0XFD40636C, 0x00000007U ,0x00000003U)
    */
	PSU_Mask_Write(SERDES_L1_PLL_SS_STEPS_1_MSB_OFFSET,
		0x00000007U, 0x00000003U);
/*##################################################################### */

    /*
    * Register : L0_PLL_SS_STEP_SIZE_0_LSB @ 0XFD402370

    * Step Size for Spread Spectrum [7:0]
    *  PSU_SERDES_L0_PLL_SS_STEP_SIZE_0_LSB_SS_STEP_SIZE_0_LSB     0x7C

    * Step Size for Spread Spectrum LSB
    * (OFFSET, MASK, VALUE)      (0XFD402370, 0x000000FFU ,0x0000007CU)
    */
	PSU_Mask_Write(SERDES_L0_PLL_SS_STEP_SIZE_0_LSB_OFFSET,
		0x000000FFU, 0x0000007CU);
/*##################################################################### */

    /*
    * Register : L0_PLL_SS_STEP_SIZE_1 @ 0XFD402374

    * Step Size for Spread Spectrum [15:8]
    *  PSU_SERDES_L0_PLL_SS_STEP_SIZE_1_SS_STEP_SIZE_1             0x33

    * Step Size for Spread Spectrum 1
    * (OFFSET, MASK, VALUE)      (0XFD402374, 0x000000FFU ,0x00000033U)
    */
	PSU_Mask_Write(SERDES_L0_PLL_SS_STEP_SIZE_1_OFFSET,
		0x000000FFU, 0x00000033U);
/*##################################################################### */

    /*
    * Register : L0_PLL_SS_STEP_SIZE_2 @ 0XFD402378

    * Step Size for Spread Spectrum [23:16]
    *  PSU_SERDES_L0_PLL_SS_STEP_SIZE_2_SS_STEP_SIZE_2             0x2

    * Step Size for Spread Spectrum 2
    * (OFFSET, MASK, VALUE)      (0XFD402378, 0x000000FFU ,0x00000002U)
    */
	PSU_Mask_Write(SERDES_L0_PLL_SS_STEP_SIZE_2_OFFSET,
		0x000000FFU, 0x00000002U);
/*##################################################################### */

    /*
    * Register : L0_PLL_SS_STEP_SIZE_3_MSB @ 0XFD40237C

    * Step Size for Spread Spectrum [25:24]
    *  PSU_SERDES_L0_PLL_SS_STEP_SIZE_3_MSB_SS_STEP_SIZE_3_MSB     0x0

    * Enable/Disable test mode force on SS step size
    *  PSU_SERDES_L0_PLL_SS_STEP_SIZE_3_MSB_FORCE_SS_STEP_SIZE     0x1

    * Enable/Disable test mode force on SS no of steps
    *  PSU_SERDES_L0_PLL_SS_STEP_SIZE_3_MSB_FORCE_SS_NUM_OF_STEPS  0x1

    * Enable force on enable Spread Spectrum
    * (OFFSET, MASK, VALUE)      (0XFD40237C, 0x00000033U ,0x00000030U)
    */
	PSU_Mask_Write(SERDES_L0_PLL_SS_STEP_SIZE_3_MSB_OFFSET,
		0x00000033U, 0x00000030U);
/*##################################################################### */

    /*
    * Register : L1_PLL_SS_STEP_SIZE_0_LSB @ 0XFD406370

    * Step Size for Spread Spectrum [7:0]
    *  PSU_SERDES_L1_PLL_SS_STEP_SIZE_0_LSB_SS_STEP_SIZE_0_LSB     0x7C

    * Step Size for Spread Spectrum LSB
    * (OFFSET, MASK, VALUE)      (0XFD406370, 0x000000FFU ,0x0000007CU)
    */
	PSU_Mask_Write(SERDES_L1_PLL_SS_STEP_SIZE_0_LSB_OFFSET,
		0x000000FFU, 0x0000007CU);
/*##################################################################### */

    /*
    * Register : L1_PLL_SS_STEP_SIZE_1 @ 0XFD406374

    * Step Size for Spread Spectrum [15:8]
    *  PSU_SERDES_L1_PLL_SS_STEP_SIZE_1_SS_STEP_SIZE_1             0x33

    * Step Size for Spread Spectrum 1
    * (OFFSET, MASK, VALUE)      (0XFD406374, 0x000000FFU ,0x00000033U)
    */
	PSU_Mask_Write(SERDES_L1_PLL_SS_STEP_SIZE_1_OFFSET,
		0x000000FFU, 0x00000033U);
/*##################################################################### */

    /*
    * Register : L1_PLL_SS_STEP_SIZE_2 @ 0XFD406378

    * Step Size for Spread Spectrum [23:16]
    *  PSU_SERDES_L1_PLL_SS_STEP_SIZE_2_SS_STEP_SIZE_2             0x2

    * Step Size for Spread Spectrum 2
    * (OFFSET, MASK, VALUE)      (0XFD406378, 0x000000FFU ,0x00000002U)
    */
	PSU_Mask_Write(SERDES_L1_PLL_SS_STEP_SIZE_2_OFFSET,
		0x000000FFU, 0x00000002U);
/*##################################################################### */

    /*
    * Register : L1_PLL_SS_STEP_SIZE_3_MSB @ 0XFD40637C

    * Step Size for Spread Spectrum [25:24]
    *  PSU_SERDES_L1_PLL_SS_STEP_SIZE_3_MSB_SS_STEP_SIZE_3_MSB     0x0

    * Enable/Disable test mode force on SS step size
    *  PSU_SERDES_L1_PLL_SS_STEP_SIZE_3_MSB_FORCE_SS_STEP_SIZE     0x1

    * Enable/Disable test mode force on SS no of steps
    *  PSU_SERDES_L1_PLL_SS_STEP_SIZE_3_MSB_FORCE_SS_NUM_OF_STEPS  0x1

    * Enable force on enable Spread Spectrum
    * (OFFSET, MASK, VALUE)      (0XFD40637C, 0x00000033U ,0x00000030U)
    */
	PSU_Mask_Write(SERDES_L1_PLL_SS_STEP_SIZE_3_MSB_OFFSET,
		0x00000033U, 0x00000030U);
/*##################################################################### */

    /*
    * Register : L2_PLL_SS_STEP_SIZE_0_LSB @ 0XFD40A370

    * Step Size for Spread Spectrum [7:0]
    *  PSU_SERDES_L2_PLL_SS_STEP_SIZE_0_LSB_SS_STEP_SIZE_0_LSB     0xF4

    * Step Size for Spread Spectrum LSB
    * (OFFSET, MASK, VALUE)      (0XFD40A370, 0x000000FFU ,0x000000F4U)
    */
	PSU_Mask_Write(SERDES_L2_PLL_SS_STEP_SIZE_0_LSB_OFFSET,
		0x000000FFU, 0x000000F4U);
/*##################################################################### */

    /*
    * Register : L2_PLL_SS_STEP_SIZE_1 @ 0XFD40A374

    * Step Size for Spread Spectrum [15:8]
    *  PSU_SERDES_L2_PLL_SS_STEP_SIZE_1_SS_STEP_SIZE_1             0x31

    * Step Size for Spread Spectrum 1
    * (OFFSET, MASK, VALUE)      (0XFD40A374, 0x000000FFU ,0x00000031U)
    */
	PSU_Mask_Write(SERDES_L2_PLL_SS_STEP_SIZE_1_OFFSET,
		0x000000FFU, 0x00000031U);
/*##################################################################### */

    /*
    * Register : L2_PLL_SS_STEP_SIZE_2 @ 0XFD40A378

    * Step Size for Spread Spectrum [23:16]
    *  PSU_SERDES_L2_PLL_SS_STEP_SIZE_2_SS_STEP_SIZE_2             0x2

    * Step Size for Spread Spectrum 2
    * (OFFSET, MASK, VALUE)      (0XFD40A378, 0x000000FFU ,0x00000002U)
    */
	PSU_Mask_Write(SERDES_L2_PLL_SS_STEP_SIZE_2_OFFSET,
		0x000000FFU, 0x00000002U);
/*##################################################################### */

    /*
    * Register : L2_PLL_SS_STEP_SIZE_3_MSB @ 0XFD40A37C

    * Step Size for Spread Spectrum [25:24]
    *  PSU_SERDES_L2_PLL_SS_STEP_SIZE_3_MSB_SS_STEP_SIZE_3_MSB     0x0

    * Enable/Disable test mode force on SS step size
    *  PSU_SERDES_L2_PLL_SS_STEP_SIZE_3_MSB_FORCE_SS_STEP_SIZE     0x1

    * Enable/Disable test mode force on SS no of steps
    *  PSU_SERDES_L2_PLL_SS_STEP_SIZE_3_MSB_FORCE_SS_NUM_OF_STEPS  0x1

    * Enable force on enable Spread Spectrum
    * (OFFSET, MASK, VALUE)      (0XFD40A37C, 0x00000033U ,0x00000030U)
    */
	PSU_Mask_Write(SERDES_L2_PLL_SS_STEP_SIZE_3_MSB_OFFSET,
		0x00000033U, 0x00000030U);
/*##################################################################### */

    /*
    * Register : L3_PLL_SS_STEP_SIZE_0_LSB @ 0XFD40E370

    * Step Size for Spread Spectrum [7:0]
    *  PSU_SERDES_L3_PLL_SS_STEP_SIZE_0_LSB_SS_STEP_SIZE_0_LSB     0xF4

    * Step Size for Spread Spectrum LSB
    * (OFFSET, MASK, VALUE)      (0XFD40E370, 0x000000FFU ,0x000000F4U)
    */
	PSU_Mask_Write(SERDES_L3_PLL_SS_STEP_SIZE_0_LSB_OFFSET,
		0x000000FFU, 0x000000F4U);
/*##################################################################### */

    /*
    * Register : L3_PLL_SS_STEP_SIZE_1 @ 0XFD40E374

    * Step Size for Spread Spectrum [15:8]
    *  PSU_SERDES_L3_PLL_SS_STEP_SIZE_1_SS_STEP_SIZE_1             0x31

    * Step Size for Spread Spectrum 1
    * (OFFSET, MASK, VALUE)      (0XFD40E374, 0x000000FFU ,0x00000031U)
    */
	PSU_Mask_Write(SERDES_L3_PLL_SS_STEP_SIZE_1_OFFSET,
		0x000000FFU, 0x00000031U);
/*##################################################################### */

    /*
    * Register : L3_PLL_SS_STEP_SIZE_2 @ 0XFD40E378

    * Step Size for Spread Spectrum [23:16]
    *  PSU_SERDES_L3_PLL_SS_STEP_SIZE_2_SS_STEP_SIZE_2             0x2

    * Step Size for Spread Spectrum 2
    * (OFFSET, MASK, VALUE)      (0XFD40E378, 0x000000FFU ,0x00000002U)
    */
	PSU_Mask_Write(SERDES_L3_PLL_SS_STEP_SIZE_2_OFFSET,
		0x000000FFU, 0x00000002U);
/*##################################################################### */

    /*
    * Register : L3_PLL_SS_STEP_SIZE_3_MSB @ 0XFD40E37C

    * Step Size for Spread Spectrum [25:24]
    *  PSU_SERDES_L3_PLL_SS_STEP_SIZE_3_MSB_SS_STEP_SIZE_3_MSB     0x0

    * Enable/Disable test mode force on SS step size
    *  PSU_SERDES_L3_PLL_SS_STEP_SIZE_3_MSB_FORCE_SS_STEP_SIZE     0x1

    * Enable/Disable test mode force on SS no of steps
    *  PSU_SERDES_L3_PLL_SS_STEP_SIZE_3_MSB_FORCE_SS_NUM_OF_STEPS  0x1

    * Enable force on enable Spread Spectrum
    * (OFFSET, MASK, VALUE)      (0XFD40E37C, 0x00000033U ,0x00000030U)
    */
	PSU_Mask_Write(SERDES_L3_PLL_SS_STEP_SIZE_3_MSB_OFFSET,
		0x00000033U, 0x00000030U);
/*##################################################################### */

    /*
    * Register : L2_TM_DIG_6 @ 0XFD40906C

    * Bypass Descrambler
    *  PSU_SERDES_L2_TM_DIG_6_BYPASS_DESCRAM                       0x1

    * Enable Bypass for <1> TM_DIG_CTRL_6
    *  PSU_SERDES_L2_TM_DIG_6_FORCE_BYPASS_DESCRAM                 0x1

    * Data path test modes in decoder and descram
    * (OFFSET, MASK, VALUE)      (0XFD40906C, 0x00000003U ,0x00000003U)
    */
	PSU_Mask_Write(SERDES_L2_TM_DIG_6_OFFSET, 0x00000003U, 0x00000003U);
/*##################################################################### */

    /*
    * Register : L2_TX_DIG_TM_61 @ 0XFD4080F4

    * Bypass scrambler signal
    *  PSU_SERDES_L2_TX_DIG_TM_61_BYPASS_SCRAM                     0x1

    * Enable/disable scrambler bypass signal
    *  PSU_SERDES_L2_TX_DIG_TM_61_FORCE_BYPASS_SCRAM               0x1

    * MPHY PLL Gear and bypass scrambler
    * (OFFSET, MASK, VALUE)      (0XFD4080F4, 0x00000003U ,0x00000003U)
    */
	PSU_Mask_Write(SERDES_L2_TX_DIG_TM_61_OFFSET,
		0x00000003U, 0x00000003U);
/*##################################################################### */

    /*
    * Register : L3_TM_DIG_6 @ 0XFD40D06C

    * Bypass Descrambler
    *  PSU_SERDES_L3_TM_DIG_6_BYPASS_DESCRAM                       0x1

    * Enable Bypass for <1> TM_DIG_CTRL_6
    *  PSU_SERDES_L3_TM_DIG_6_FORCE_BYPASS_DESCRAM                 0x1

    * Data path test modes in decoder and descram
    * (OFFSET, MASK, VALUE)      (0XFD40D06C, 0x00000003U ,0x00000003U)
    */
	PSU_Mask_Write(SERDES_L3_TM_DIG_6_OFFSET, 0x00000003U, 0x00000003U);
/*##################################################################### */

    /*
    * Register : L3_TX_DIG_TM_61 @ 0XFD40C0F4

    * Bypass scrambler signal
    *  PSU_SERDES_L3_TX_DIG_TM_61_BYPASS_SCRAM                     0x1

    * Enable/disable scrambler bypass signal
    *  PSU_SERDES_L3_TX_DIG_TM_61_FORCE_BYPASS_SCRAM               0x1

    * MPHY PLL Gear and bypass scrambler
    * (OFFSET, MASK, VALUE)      (0XFD40C0F4, 0x00000003U ,0x00000003U)
    */
	PSU_Mask_Write(SERDES_L3_TX_DIG_TM_61_OFFSET,
		0x00000003U, 0x00000003U);
/*##################################################################### */

    /*
    * ENABLE CHICKEN BIT FOR PCIE AND USB
    */
    /*
    * Register : L2_TM_AUX_0 @ 0XFD4090CC

    * Spare- not used
    *  PSU_SERDES_L2_TM_AUX_0_BIT_2                                1

    * Spare registers
    * (OFFSET, MASK, VALUE)      (0XFD4090CC, 0x00000020U ,0x00000020U)
    */
	PSU_Mask_Write(SERDES_L2_TM_AUX_0_OFFSET, 0x00000020U, 0x00000020U);
/*##################################################################### */

    /*
    * Register : L3_TM_AUX_0 @ 0XFD40D0CC

    * Spare- not used
    *  PSU_SERDES_L3_TM_AUX_0_BIT_2                                1

    * Spare registers
    * (OFFSET, MASK, VALUE)      (0XFD40D0CC, 0x00000020U ,0x00000020U)
    */
	PSU_Mask_Write(SERDES_L3_TM_AUX_0_OFFSET, 0x00000020U, 0x00000020U);
/*##################################################################### */

    /*
    * ENABLING EYE SURF
    */
    /*
    * Register : L0_TM_DIG_8 @ 0XFD401074

    * Enable Eye Surf
    *  PSU_SERDES_L0_TM_DIG_8_EYESURF_ENABLE                       0x1

    * Test modes for Elastic buffer and enabling Eye Surf
    * (OFFSET, MASK, VALUE)      (0XFD401074, 0x00000010U ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L0_TM_DIG_8_OFFSET, 0x00000010U, 0x00000010U);
/*##################################################################### */

    /*
    * Register : L1_TM_DIG_8 @ 0XFD405074

    * Enable Eye Surf
    *  PSU_SERDES_L1_TM_DIG_8_EYESURF_ENABLE                       0x1

    * Test modes for Elastic buffer and enabling Eye Surf
    * (OFFSET, MASK, VALUE)      (0XFD405074, 0x00000010U ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L1_TM_DIG_8_OFFSET, 0x00000010U, 0x00000010U);
/*##################################################################### */

    /*
    * Register : L2_TM_DIG_8 @ 0XFD409074

    * Enable Eye Surf
    *  PSU_SERDES_L2_TM_DIG_8_EYESURF_ENABLE                       0x1

    * Test modes for Elastic buffer and enabling Eye Surf
    * (OFFSET, MASK, VALUE)      (0XFD409074, 0x00000010U ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L2_TM_DIG_8_OFFSET, 0x00000010U, 0x00000010U);
/*##################################################################### */

    /*
    * Register : L3_TM_DIG_8 @ 0XFD40D074

    * Enable Eye Surf
    *  PSU_SERDES_L3_TM_DIG_8_EYESURF_ENABLE                       0x1

    * Test modes for Elastic buffer and enabling Eye Surf
    * (OFFSET, MASK, VALUE)      (0XFD40D074, 0x00000010U ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L3_TM_DIG_8_OFFSET, 0x00000010U, 0x00000010U);
/*##################################################################### */

    /*
    * ILL SETTINGS FOR GAIN AND LOCK SETTINGS
    */
    /*
    * Register : L0_TM_ILL13 @ 0XFD401994

    * ILL cal idle val refcnt
    *  PSU_SERDES_L0_TM_ILL13_ILL_CAL_IDLE_VAL_REFCNT              0x7

    * ill cal idle value count
    * (OFFSET, MASK, VALUE)      (0XFD401994, 0x00000007U ,0x00000007U)
    */
	PSU_Mask_Write(SERDES_L0_TM_ILL13_OFFSET, 0x00000007U, 0x00000007U);
/*##################################################################### */

    /*
    * Register : L1_TM_ILL13 @ 0XFD405994

    * ILL cal idle val refcnt
    *  PSU_SERDES_L1_TM_ILL13_ILL_CAL_IDLE_VAL_REFCNT              0x7

    * ill cal idle value count
    * (OFFSET, MASK, VALUE)      (0XFD405994, 0x00000007U ,0x00000007U)
    */
	PSU_Mask_Write(SERDES_L1_TM_ILL13_OFFSET, 0x00000007U, 0x00000007U);
/*##################################################################### */

    /*
    * Register : L2_TM_MISC2 @ 0XFD40989C

    * ILL calib counts BYPASSED with calcode bits
    *  PSU_SERDES_L2_TM_MISC2_ILL_CAL_BYPASS_COUNTS                0x1

    * sampler cal
    * (OFFSET, MASK, VALUE)      (0XFD40989C, 0x00000080U ,0x00000080U)
    */
	PSU_Mask_Write(SERDES_L2_TM_MISC2_OFFSET, 0x00000080U, 0x00000080U);
/*##################################################################### */

    /*
    * Register : L2_TM_IQ_ILL1 @ 0XFD4098F8

    * IQ ILL F0 CALCODE bypass value. MPHY : G1a, PCIE : Gen 1, SATA : Gen1 ,
    * USB3 : SS
    *  PSU_SERDES_L2_TM_IQ_ILL1_ILL_BYPASS_IQ_CALCODE_F0           0x1A

    * iqpi cal code
    * (OFFSET, MASK, VALUE)      (0XFD4098F8, 0x000000FFU ,0x0000001AU)
    */
	PSU_Mask_Write(SERDES_L2_TM_IQ_ILL1_OFFSET,
		0x000000FFU, 0x0000001AU);
/*##################################################################### */

    /*
    * Register : L2_TM_IQ_ILL2 @ 0XFD4098FC

    * IQ ILL F1 CALCODE bypass value. MPHY : G1b, PCIE : Gen2, SATA: Gen2
    *  PSU_SERDES_L2_TM_IQ_ILL2_ILL_BYPASS_IQ_CALCODE_F1           0x1A

    * iqpi cal code
    * (OFFSET, MASK, VALUE)      (0XFD4098FC, 0x000000FFU ,0x0000001AU)
    */
	PSU_Mask_Write(SERDES_L2_TM_IQ_ILL2_OFFSET,
		0x000000FFU, 0x0000001AU);
/*##################################################################### */

    /*
    * Register : L2_TM_ILL12 @ 0XFD409990

    * G1A pll ctr bypass value
    *  PSU_SERDES_L2_TM_ILL12_G1A_PLL_CTR_BYP_VAL                  0x10

    * ill pll counter values
    * (OFFSET, MASK, VALUE)      (0XFD409990, 0x000000FFU ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L2_TM_ILL12_OFFSET, 0x000000FFU, 0x00000010U);
/*##################################################################### */

    /*
    * Register : L2_TM_E_ILL1 @ 0XFD409924

    * E ILL F0 CALCODE bypass value. MPHY : G1a, PCIE : Gen 1, SATA : Gen1 , U
    * SB3 : SS
    *  PSU_SERDES_L2_TM_E_ILL1_ILL_BYPASS_E_CALCODE_F0             0xFE

    * epi cal code
    * (OFFSET, MASK, VALUE)      (0XFD409924, 0x000000FFU ,0x000000FEU)
    */
	PSU_Mask_Write(SERDES_L2_TM_E_ILL1_OFFSET, 0x000000FFU, 0x000000FEU);
/*##################################################################### */

    /*
    * Register : L2_TM_E_ILL2 @ 0XFD409928

    * E ILL F1 CALCODE bypass value. MPHY : G1b, PCIE : Gen2, SATA: Gen2
    *  PSU_SERDES_L2_TM_E_ILL2_ILL_BYPASS_E_CALCODE_F1             0x0

    * epi cal code
    * (OFFSET, MASK, VALUE)      (0XFD409928, 0x000000FFU ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L2_TM_E_ILL2_OFFSET, 0x000000FFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : L2_TM_IQ_ILL3 @ 0XFD409900

    * IQ ILL F2CALCODE bypass value. MPHY : G2a, SATA : Gen3
    *  PSU_SERDES_L2_TM_IQ_ILL3_ILL_BYPASS_IQ_CALCODE_F2           0x1A

    * iqpi cal code
    * (OFFSET, MASK, VALUE)      (0XFD409900, 0x000000FFU ,0x0000001AU)
    */
	PSU_Mask_Write(SERDES_L2_TM_IQ_ILL3_OFFSET,
		0x000000FFU, 0x0000001AU);
/*##################################################################### */

    /*
    * Register : L2_TM_E_ILL3 @ 0XFD40992C

    * E ILL F2CALCODE bypass value. MPHY : G2a, SATA : Gen3
    *  PSU_SERDES_L2_TM_E_ILL3_ILL_BYPASS_E_CALCODE_F2             0x0

    * epi cal code
    * (OFFSET, MASK, VALUE)      (0XFD40992C, 0x000000FFU ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L2_TM_E_ILL3_OFFSET, 0x000000FFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : L2_TM_ILL8 @ 0XFD409980

    * ILL calibration code change wait time
    *  PSU_SERDES_L2_TM_ILL8_ILL_CAL_ITER_WAIT                     0xFF

    * ILL cal routine control
    * (OFFSET, MASK, VALUE)      (0XFD409980, 0x000000FFU ,0x000000FFU)
    */
	PSU_Mask_Write(SERDES_L2_TM_ILL8_OFFSET, 0x000000FFU, 0x000000FFU);
/*##################################################################### */

    /*
    * Register : L2_TM_IQ_ILL8 @ 0XFD409914

    * IQ ILL polytrim bypass value
    *  PSU_SERDES_L2_TM_IQ_ILL8_ILL_BYPASS_IQ_POLYTRIM_VAL         0xF7

    * iqpi polytrim
    * (OFFSET, MASK, VALUE)      (0XFD409914, 0x000000FFU ,0x000000F7U)
    */
	PSU_Mask_Write(SERDES_L2_TM_IQ_ILL8_OFFSET,
		0x000000FFU, 0x000000F7U);
/*##################################################################### */

    /*
    * Register : L2_TM_IQ_ILL9 @ 0XFD409918

    * bypass IQ polytrim
    *  PSU_SERDES_L2_TM_IQ_ILL9_ILL_BYPASS_IQ_POLYTIM              0x1

    * enables for lf,constant gm trim and polytirm
    * (OFFSET, MASK, VALUE)      (0XFD409918, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L2_TM_IQ_ILL9_OFFSET,
		0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * Register : L2_TM_E_ILL8 @ 0XFD409940

    * E ILL polytrim bypass value
    *  PSU_SERDES_L2_TM_E_ILL8_ILL_BYPASS_E_POLYTRIM_VAL           0xF7

    * epi polytrim
    * (OFFSET, MASK, VALUE)      (0XFD409940, 0x000000FFU ,0x000000F7U)
    */
	PSU_Mask_Write(SERDES_L2_TM_E_ILL8_OFFSET, 0x000000FFU, 0x000000F7U);
/*##################################################################### */

    /*
    * Register : L2_TM_E_ILL9 @ 0XFD409944

    * bypass E polytrim
    *  PSU_SERDES_L2_TM_E_ILL9_ILL_BYPASS_E_POLYTIM                0x1

    * enables for lf,constant gm trim and polytirm
    * (OFFSET, MASK, VALUE)      (0XFD409944, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L2_TM_E_ILL9_OFFSET, 0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * Register : L2_TM_ILL13 @ 0XFD409994

    * ILL cal idle val refcnt
    *  PSU_SERDES_L2_TM_ILL13_ILL_CAL_IDLE_VAL_REFCNT              0x7

    * ill cal idle value count
    * (OFFSET, MASK, VALUE)      (0XFD409994, 0x00000007U ,0x00000007U)
    */
	PSU_Mask_Write(SERDES_L2_TM_ILL13_OFFSET, 0x00000007U, 0x00000007U);
/*##################################################################### */

    /*
    * Register : L3_TM_MISC2 @ 0XFD40D89C

    * ILL calib counts BYPASSED with calcode bits
    *  PSU_SERDES_L3_TM_MISC2_ILL_CAL_BYPASS_COUNTS                0x1

    * sampler cal
    * (OFFSET, MASK, VALUE)      (0XFD40D89C, 0x00000080U ,0x00000080U)
    */
	PSU_Mask_Write(SERDES_L3_TM_MISC2_OFFSET, 0x00000080U, 0x00000080U);
/*##################################################################### */

    /*
    * Register : L3_TM_IQ_ILL1 @ 0XFD40D8F8

    * IQ ILL F0 CALCODE bypass value. MPHY : G1a, PCIE : Gen 1, SATA : Gen1 ,
    * USB3 : SS
    *  PSU_SERDES_L3_TM_IQ_ILL1_ILL_BYPASS_IQ_CALCODE_F0           0x1A

    * iqpi cal code
    * (OFFSET, MASK, VALUE)      (0XFD40D8F8, 0x000000FFU ,0x0000001AU)
    */
	PSU_Mask_Write(SERDES_L3_TM_IQ_ILL1_OFFSET,
		0x000000FFU, 0x0000001AU);
/*##################################################################### */

    /*
    * Register : L3_TM_IQ_ILL2 @ 0XFD40D8FC

    * IQ ILL F1 CALCODE bypass value. MPHY : G1b, PCIE : Gen2, SATA: Gen2
    *  PSU_SERDES_L3_TM_IQ_ILL2_ILL_BYPASS_IQ_CALCODE_F1           0x1A

    * iqpi cal code
    * (OFFSET, MASK, VALUE)      (0XFD40D8FC, 0x000000FFU ,0x0000001AU)
    */
	PSU_Mask_Write(SERDES_L3_TM_IQ_ILL2_OFFSET,
		0x000000FFU, 0x0000001AU);
/*##################################################################### */

    /*
    * Register : L3_TM_ILL12 @ 0XFD40D990

    * G1A pll ctr bypass value
    *  PSU_SERDES_L3_TM_ILL12_G1A_PLL_CTR_BYP_VAL                  0x10

    * ill pll counter values
    * (OFFSET, MASK, VALUE)      (0XFD40D990, 0x000000FFU ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L3_TM_ILL12_OFFSET, 0x000000FFU, 0x00000010U);
/*##################################################################### */

    /*
    * Register : L3_TM_E_ILL1 @ 0XFD40D924

    * E ILL F0 CALCODE bypass value. MPHY : G1a, PCIE : Gen 1, SATA : Gen1 , U
    * SB3 : SS
    *  PSU_SERDES_L3_TM_E_ILL1_ILL_BYPASS_E_CALCODE_F0             0xFE

    * epi cal code
    * (OFFSET, MASK, VALUE)      (0XFD40D924, 0x000000FFU ,0x000000FEU)
    */
	PSU_Mask_Write(SERDES_L3_TM_E_ILL1_OFFSET, 0x000000FFU, 0x000000FEU);
/*##################################################################### */

    /*
    * Register : L3_TM_E_ILL2 @ 0XFD40D928

    * E ILL F1 CALCODE bypass value. MPHY : G1b, PCIE : Gen2, SATA: Gen2
    *  PSU_SERDES_L3_TM_E_ILL2_ILL_BYPASS_E_CALCODE_F1             0x0

    * epi cal code
    * (OFFSET, MASK, VALUE)      (0XFD40D928, 0x000000FFU ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L3_TM_E_ILL2_OFFSET, 0x000000FFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : L3_TM_IQ_ILL3 @ 0XFD40D900

    * IQ ILL F2CALCODE bypass value. MPHY : G2a, SATA : Gen3
    *  PSU_SERDES_L3_TM_IQ_ILL3_ILL_BYPASS_IQ_CALCODE_F2           0x1A

    * iqpi cal code
    * (OFFSET, MASK, VALUE)      (0XFD40D900, 0x000000FFU ,0x0000001AU)
    */
	PSU_Mask_Write(SERDES_L3_TM_IQ_ILL3_OFFSET,
		0x000000FFU, 0x0000001AU);
/*##################################################################### */

    /*
    * Register : L3_TM_E_ILL3 @ 0XFD40D92C

    * E ILL F2CALCODE bypass value. MPHY : G2a, SATA : Gen3
    *  PSU_SERDES_L3_TM_E_ILL3_ILL_BYPASS_E_CALCODE_F2             0x0

    * epi cal code
    * (OFFSET, MASK, VALUE)      (0XFD40D92C, 0x000000FFU ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L3_TM_E_ILL3_OFFSET, 0x000000FFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : L3_TM_ILL8 @ 0XFD40D980

    * ILL calibration code change wait time
    *  PSU_SERDES_L3_TM_ILL8_ILL_CAL_ITER_WAIT                     0xFF

    * ILL cal routine control
    * (OFFSET, MASK, VALUE)      (0XFD40D980, 0x000000FFU ,0x000000FFU)
    */
	PSU_Mask_Write(SERDES_L3_TM_ILL8_OFFSET, 0x000000FFU, 0x000000FFU);
/*##################################################################### */

    /*
    * Register : L3_TM_IQ_ILL8 @ 0XFD40D914

    * IQ ILL polytrim bypass value
    *  PSU_SERDES_L3_TM_IQ_ILL8_ILL_BYPASS_IQ_POLYTRIM_VAL         0xF7

    * iqpi polytrim
    * (OFFSET, MASK, VALUE)      (0XFD40D914, 0x000000FFU ,0x000000F7U)
    */
	PSU_Mask_Write(SERDES_L3_TM_IQ_ILL8_OFFSET,
		0x000000FFU, 0x000000F7U);
/*##################################################################### */

    /*
    * Register : L3_TM_IQ_ILL9 @ 0XFD40D918

    * bypass IQ polytrim
    *  PSU_SERDES_L3_TM_IQ_ILL9_ILL_BYPASS_IQ_POLYTIM              0x1

    * enables for lf,constant gm trim and polytirm
    * (OFFSET, MASK, VALUE)      (0XFD40D918, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L3_TM_IQ_ILL9_OFFSET,
		0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * Register : L3_TM_E_ILL8 @ 0XFD40D940

    * E ILL polytrim bypass value
    *  PSU_SERDES_L3_TM_E_ILL8_ILL_BYPASS_E_POLYTRIM_VAL           0xF7

    * epi polytrim
    * (OFFSET, MASK, VALUE)      (0XFD40D940, 0x000000FFU ,0x000000F7U)
    */
	PSU_Mask_Write(SERDES_L3_TM_E_ILL8_OFFSET, 0x000000FFU, 0x000000F7U);
/*##################################################################### */

    /*
    * Register : L3_TM_E_ILL9 @ 0XFD40D944

    * bypass E polytrim
    *  PSU_SERDES_L3_TM_E_ILL9_ILL_BYPASS_E_POLYTIM                0x1

    * enables for lf,constant gm trim and polytirm
    * (OFFSET, MASK, VALUE)      (0XFD40D944, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L3_TM_E_ILL9_OFFSET, 0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * Register : L3_TM_ILL13 @ 0XFD40D994

    * ILL cal idle val refcnt
    *  PSU_SERDES_L3_TM_ILL13_ILL_CAL_IDLE_VAL_REFCNT              0x7

    * ill cal idle value count
    * (OFFSET, MASK, VALUE)      (0XFD40D994, 0x00000007U ,0x00000007U)
    */
	PSU_Mask_Write(SERDES_L3_TM_ILL13_OFFSET, 0x00000007U, 0x00000007U);
/*##################################################################### */

    /*
    * SYMBOL LOCK AND WAIT
    */
    /*
    * Register : L0_TM_DIG_10 @ 0XFD40107C

    * CDR lock wait time. (1-16 us). cdr_lock_wait_time = 4'b xxxx + 4'b 0001
    *  PSU_SERDES_L0_TM_DIG_10_CDR_BIT_LOCK_TIME                   0x1

    * test control for changing cdr lock wait time
    * (OFFSET, MASK, VALUE)      (0XFD40107C, 0x0000000FU ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L0_TM_DIG_10_OFFSET, 0x0000000FU, 0x00000001U);
/*##################################################################### */

    /*
    * Register : L1_TM_DIG_10 @ 0XFD40507C

    * CDR lock wait time. (1-16 us). cdr_lock_wait_time = 4'b xxxx + 4'b 0001
    *  PSU_SERDES_L1_TM_DIG_10_CDR_BIT_LOCK_TIME                   0x1

    * test control for changing cdr lock wait time
    * (OFFSET, MASK, VALUE)      (0XFD40507C, 0x0000000FU ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L1_TM_DIG_10_OFFSET, 0x0000000FU, 0x00000001U);
/*##################################################################### */

    /*
    * Register : L2_TM_DIG_10 @ 0XFD40907C

    * CDR lock wait time. (1-16 us). cdr_lock_wait_time = 4'b xxxx + 4'b 0001
    *  PSU_SERDES_L2_TM_DIG_10_CDR_BIT_LOCK_TIME                   0x1

    * test control for changing cdr lock wait time
    * (OFFSET, MASK, VALUE)      (0XFD40907C, 0x0000000FU ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L2_TM_DIG_10_OFFSET, 0x0000000FU, 0x00000001U);
/*##################################################################### */

    /*
    * Register : L3_TM_DIG_10 @ 0XFD40D07C

    * CDR lock wait time. (1-16 us). cdr_lock_wait_time = 4'b xxxx + 4'b 0001
    *  PSU_SERDES_L3_TM_DIG_10_CDR_BIT_LOCK_TIME                   0x1

    * test control for changing cdr lock wait time
    * (OFFSET, MASK, VALUE)      (0XFD40D07C, 0x0000000FU ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L3_TM_DIG_10_OFFSET, 0x0000000FU, 0x00000001U);
/*##################################################################### */

    /*
    * SIOU SETTINGS FOR BYPASS CONTROL,HSRX-DIG
    */
    /*
    * Register : L0_TM_RST_DLY @ 0XFD4019A4

    * Delay apb reset by specified amount
    *  PSU_SERDES_L0_TM_RST_DLY_APB_RST_DLY                        0xFF

    * reset delay for apb reset w.r.t pso of hsrx
    * (OFFSET, MASK, VALUE)      (0XFD4019A4, 0x000000FFU ,0x000000FFU)
    */
	PSU_Mask_Write(SERDES_L0_TM_RST_DLY_OFFSET,
		0x000000FFU, 0x000000FFU);
/*##################################################################### */

    /*
    * Register : L0_TM_ANA_BYP_15 @ 0XFD401038

    * Enable Bypass for <7> of TM_ANA_BYPS_15
    *  PSU_SERDES_L0_TM_ANA_BYP_15_FORCE_UPHY_ENABLE_LOW_LEAKAGE   0x1

    * Bypass control for pcs-pma interface. EQ supplies, main master supply an
    * d ps for samp c2c
    * (OFFSET, MASK, VALUE)      (0XFD401038, 0x00000040U ,0x00000040U)
    */
	PSU_Mask_Write(SERDES_L0_TM_ANA_BYP_15_OFFSET,
		0x00000040U, 0x00000040U);
/*##################################################################### */

    /*
    * Register : L0_TM_ANA_BYP_12 @ 0XFD40102C

    * Enable Bypass for <7> of TM_ANA_BYPS_12
    *  PSU_SERDES_L0_TM_ANA_BYP_12_FORCE_UPHY_PSO_HSRXDIG          0x1

    * Bypass control for pcs-pma interface. Hsrx supply, hsrx des, and cdr ena
    * ble controls
    * (OFFSET, MASK, VALUE)      (0XFD40102C, 0x00000040U ,0x00000040U)
    */
	PSU_Mask_Write(SERDES_L0_TM_ANA_BYP_12_OFFSET,
		0x00000040U, 0x00000040U);
/*##################################################################### */

    /*
    * Register : L1_TM_RST_DLY @ 0XFD4059A4

    * Delay apb reset by specified amount
    *  PSU_SERDES_L1_TM_RST_DLY_APB_RST_DLY                        0xFF

    * reset delay for apb reset w.r.t pso of hsrx
    * (OFFSET, MASK, VALUE)      (0XFD4059A4, 0x000000FFU ,0x000000FFU)
    */
	PSU_Mask_Write(SERDES_L1_TM_RST_DLY_OFFSET,
		0x000000FFU, 0x000000FFU);
/*##################################################################### */

    /*
    * Register : L1_TM_ANA_BYP_15 @ 0XFD405038

    * Enable Bypass for <7> of TM_ANA_BYPS_15
    *  PSU_SERDES_L1_TM_ANA_BYP_15_FORCE_UPHY_ENABLE_LOW_LEAKAGE   0x1

    * Bypass control for pcs-pma interface. EQ supplies, main master supply an
    * d ps for samp c2c
    * (OFFSET, MASK, VALUE)      (0XFD405038, 0x00000040U ,0x00000040U)
    */
	PSU_Mask_Write(SERDES_L1_TM_ANA_BYP_15_OFFSET,
		0x00000040U, 0x00000040U);
/*##################################################################### */

    /*
    * Register : L1_TM_ANA_BYP_12 @ 0XFD40502C

    * Enable Bypass for <7> of TM_ANA_BYPS_12
    *  PSU_SERDES_L1_TM_ANA_BYP_12_FORCE_UPHY_PSO_HSRXDIG          0x1

    * Bypass control for pcs-pma interface. Hsrx supply, hsrx des, and cdr ena
    * ble controls
    * (OFFSET, MASK, VALUE)      (0XFD40502C, 0x00000040U ,0x00000040U)
    */
	PSU_Mask_Write(SERDES_L1_TM_ANA_BYP_12_OFFSET,
		0x00000040U, 0x00000040U);
/*##################################################################### */

    /*
    * Register : L2_TM_RST_DLY @ 0XFD4099A4

    * Delay apb reset by specified amount
    *  PSU_SERDES_L2_TM_RST_DLY_APB_RST_DLY                        0xFF

    * reset delay for apb reset w.r.t pso of hsrx
    * (OFFSET, MASK, VALUE)      (0XFD4099A4, 0x000000FFU ,0x000000FFU)
    */
	PSU_Mask_Write(SERDES_L2_TM_RST_DLY_OFFSET,
		0x000000FFU, 0x000000FFU);
/*##################################################################### */

    /*
    * Register : L2_TM_ANA_BYP_15 @ 0XFD409038

    * Enable Bypass for <7> of TM_ANA_BYPS_15
    *  PSU_SERDES_L2_TM_ANA_BYP_15_FORCE_UPHY_ENABLE_LOW_LEAKAGE   0x1

    * Bypass control for pcs-pma interface. EQ supplies, main master supply an
    * d ps for samp c2c
    * (OFFSET, MASK, VALUE)      (0XFD409038, 0x00000040U ,0x00000040U)
    */
	PSU_Mask_Write(SERDES_L2_TM_ANA_BYP_15_OFFSET,
		0x00000040U, 0x00000040U);
/*##################################################################### */

    /*
    * Register : L2_TM_ANA_BYP_12 @ 0XFD40902C

    * Enable Bypass for <7> of TM_ANA_BYPS_12
    *  PSU_SERDES_L2_TM_ANA_BYP_12_FORCE_UPHY_PSO_HSRXDIG          0x1

    * Bypass control for pcs-pma interface. Hsrx supply, hsrx des, and cdr ena
    * ble controls
    * (OFFSET, MASK, VALUE)      (0XFD40902C, 0x00000040U ,0x00000040U)
    */
	PSU_Mask_Write(SERDES_L2_TM_ANA_BYP_12_OFFSET,
		0x00000040U, 0x00000040U);
/*##################################################################### */

    /*
    * Register : L3_TM_RST_DLY @ 0XFD40D9A4

    * Delay apb reset by specified amount
    *  PSU_SERDES_L3_TM_RST_DLY_APB_RST_DLY                        0xFF

    * reset delay for apb reset w.r.t pso of hsrx
    * (OFFSET, MASK, VALUE)      (0XFD40D9A4, 0x000000FFU ,0x000000FFU)
    */
	PSU_Mask_Write(SERDES_L3_TM_RST_DLY_OFFSET,
		0x000000FFU, 0x000000FFU);
/*##################################################################### */

    /*
    * Register : L3_TM_ANA_BYP_15 @ 0XFD40D038

    * Enable Bypass for <7> of TM_ANA_BYPS_15
    *  PSU_SERDES_L3_TM_ANA_BYP_15_FORCE_UPHY_ENABLE_LOW_LEAKAGE   0x1

    * Bypass control for pcs-pma interface. EQ supplies, main master supply an
    * d ps for samp c2c
    * (OFFSET, MASK, VALUE)      (0XFD40D038, 0x00000040U ,0x00000040U)
    */
	PSU_Mask_Write(SERDES_L3_TM_ANA_BYP_15_OFFSET,
		0x00000040U, 0x00000040U);
/*##################################################################### */

    /*
    * Register : L3_TM_ANA_BYP_12 @ 0XFD40D02C

    * Enable Bypass for <7> of TM_ANA_BYPS_12
    *  PSU_SERDES_L3_TM_ANA_BYP_12_FORCE_UPHY_PSO_HSRXDIG          0x1

    * Bypass control for pcs-pma interface. Hsrx supply, hsrx des, and cdr ena
    * ble controls
    * (OFFSET, MASK, VALUE)      (0XFD40D02C, 0x00000040U ,0x00000040U)
    */
	PSU_Mask_Write(SERDES_L3_TM_ANA_BYP_12_OFFSET,
		0x00000040U, 0x00000040U);
/*##################################################################### */

    /*
    * DISABLE FPL/FFL
    */
    /*
    * Register : L0_TM_MISC3 @ 0XFD4019AC

    * CDR fast phase lock control
    *  PSU_SERDES_L0_TM_MISC3_CDR_EN_FPL                           0x0

    * CDR fast frequency lock control
    *  PSU_SERDES_L0_TM_MISC3_CDR_EN_FFL                           0x0

    * debug bus selection bit, cdr fast phase and freq controls
    * (OFFSET, MASK, VALUE)      (0XFD4019AC, 0x00000003U ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L0_TM_MISC3_OFFSET, 0x00000003U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : L1_TM_MISC3 @ 0XFD4059AC

    * CDR fast phase lock control
    *  PSU_SERDES_L1_TM_MISC3_CDR_EN_FPL                           0x0

    * CDR fast frequency lock control
    *  PSU_SERDES_L1_TM_MISC3_CDR_EN_FFL                           0x0

    * debug bus selection bit, cdr fast phase and freq controls
    * (OFFSET, MASK, VALUE)      (0XFD4059AC, 0x00000003U ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L1_TM_MISC3_OFFSET, 0x00000003U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : L2_TM_MISC3 @ 0XFD4099AC

    * CDR fast phase lock control
    *  PSU_SERDES_L2_TM_MISC3_CDR_EN_FPL                           0x0

    * CDR fast frequency lock control
    *  PSU_SERDES_L2_TM_MISC3_CDR_EN_FFL                           0x0

    * debug bus selection bit, cdr fast phase and freq controls
    * (OFFSET, MASK, VALUE)      (0XFD4099AC, 0x00000003U ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L2_TM_MISC3_OFFSET, 0x00000003U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : L3_TM_MISC3 @ 0XFD40D9AC

    * CDR fast phase lock control
    *  PSU_SERDES_L3_TM_MISC3_CDR_EN_FPL                           0x0

    * CDR fast frequency lock control
    *  PSU_SERDES_L3_TM_MISC3_CDR_EN_FFL                           0x0

    * debug bus selection bit, cdr fast phase and freq controls
    * (OFFSET, MASK, VALUE)      (0XFD40D9AC, 0x00000003U ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L3_TM_MISC3_OFFSET, 0x00000003U, 0x00000000U);
/*##################################################################### */

    /*
    * DISABLE DYNAMIC OFFSET CALIBRATION
    */
    /*
    * Register : L0_TM_EQ11 @ 0XFD401978

    * Force EQ offset correction algo off if not forced on
    *  PSU_SERDES_L0_TM_EQ11_FORCE_EQ_OFFS_OFF                     0x1

    * eq dynamic offset correction
    * (OFFSET, MASK, VALUE)      (0XFD401978, 0x00000010U ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L0_TM_EQ11_OFFSET, 0x00000010U, 0x00000010U);
/*##################################################################### */

    /*
    * Register : L1_TM_EQ11 @ 0XFD405978

    * Force EQ offset correction algo off if not forced on
    *  PSU_SERDES_L1_TM_EQ11_FORCE_EQ_OFFS_OFF                     0x1

    * eq dynamic offset correction
    * (OFFSET, MASK, VALUE)      (0XFD405978, 0x00000010U ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L1_TM_EQ11_OFFSET, 0x00000010U, 0x00000010U);
/*##################################################################### */

    /*
    * Register : L2_TM_EQ11 @ 0XFD409978

    * Force EQ offset correction algo off if not forced on
    *  PSU_SERDES_L2_TM_EQ11_FORCE_EQ_OFFS_OFF                     0x1

    * eq dynamic offset correction
    * (OFFSET, MASK, VALUE)      (0XFD409978, 0x00000010U ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L2_TM_EQ11_OFFSET, 0x00000010U, 0x00000010U);
/*##################################################################### */

    /*
    * Register : L3_TM_EQ11 @ 0XFD40D978

    * Force EQ offset correction algo off if not forced on
    *  PSU_SERDES_L3_TM_EQ11_FORCE_EQ_OFFS_OFF                     0x1

    * eq dynamic offset correction
    * (OFFSET, MASK, VALUE)      (0XFD40D978, 0x00000010U ,0x00000010U)
    */
	PSU_Mask_Write(SERDES_L3_TM_EQ11_OFFSET, 0x00000010U, 0x00000010U);
/*##################################################################### */

    /*
    * DISABLE ECO FOR PCIE
    */
    /*
    * GT LANE SETTINGS
    */
    /*
    * Register : ICM_CFG0 @ 0XFD410010

    * Controls UPHY Lane 0 protocol configuration. 0 - PowerDown, 1 - PCIe .0,
    *  2 - Sata0, 3 - USB0, 4 - DP.1, 5 - SGMII0, 6 - Unused, 7 - Unused
    *  PSU_SERDES_ICM_CFG0_L0_ICM_CFG                              4

    * Controls UPHY Lane 1 protocol configuration. 0 - PowerDown, 1 - PCIe.1,
    * 2 - Sata1, 3 - USB0, 4 - DP.0, 5 - SGMII1, 6 - Unused, 7 - Unused
    *  PSU_SERDES_ICM_CFG0_L1_ICM_CFG                              4

    * ICM Configuration Register 0
    * (OFFSET, MASK, VALUE)      (0XFD410010, 0x00000077U ,0x00000044U)
    */
	PSU_Mask_Write(SERDES_ICM_CFG0_OFFSET, 0x00000077U, 0x00000044U);
/*##################################################################### */

    /*
    * Register : ICM_CFG1 @ 0XFD410014

    * Controls UPHY Lane 2 protocol configuration. 0 - PowerDown, 1 - PCIe.1,
    * 2 - Sata0, 3 - USB0, 4 - DP.1, 5 - SGMII2, 6 - Unused, 7 - Unused
    *  PSU_SERDES_ICM_CFG1_L2_ICM_CFG                              3

    * Controls UPHY Lane 3 protocol configuration. 0 - PowerDown, 1 - PCIe.3,
    * 2 - Sata1, 3 - USB1, 4 - DP.0, 5 - SGMII3, 6 - Unused, 7 - Unused
    *  PSU_SERDES_ICM_CFG1_L3_ICM_CFG                              3

    * ICM Configuration Register 1
    * (OFFSET, MASK, VALUE)      (0XFD410014, 0x00000077U ,0x00000033U)
    */
	PSU_Mask_Write(SERDES_ICM_CFG1_OFFSET, 0x00000077U, 0x00000033U);
/*##################################################################### */

    /*
    * CHECKING PLL LOCK
    */
    /*
    * ENABLE SERIAL DATA MUX DEEMPH
    */
    /*
    * Register : L0_TXPMD_TM_45 @ 0XFD400CB4

    * Enable/disable DP post2 path
    *  PSU_SERDES_L0_TXPMD_TM_45_DP_TM_TX_DP_ENABLE_POST2_PATH     0x1

    * Override enable/disable of DP post2 path
    *  PSU_SERDES_L0_TXPMD_TM_45_DP_TM_TX_OVRD_DP_ENABLE_POST2_PATH 0x1

    * Override enable/disable of DP post1 path
    *  PSU_SERDES_L0_TXPMD_TM_45_DP_TM_TX_OVRD_DP_ENABLE_POST1_PATH 0x1

    * Enable/disable DP main path
    *  PSU_SERDES_L0_TXPMD_TM_45_DP_TM_TX_DP_ENABLE_MAIN_PATH      0x1

    * Override enable/disable of DP main path
    *  PSU_SERDES_L0_TXPMD_TM_45_DP_TM_TX_OVRD_DP_ENABLE_MAIN_PATH 0x1

    * Post or pre or main DP path selection
    * (OFFSET, MASK, VALUE)      (0XFD400CB4, 0x00000037U ,0x00000037U)
    */
	PSU_Mask_Write(SERDES_L0_TXPMD_TM_45_OFFSET,
		0x00000037U, 0x00000037U);
/*##################################################################### */

    /*
    * Register : L1_TXPMD_TM_45 @ 0XFD404CB4

    * Enable/disable DP post2 path
    *  PSU_SERDES_L1_TXPMD_TM_45_DP_TM_TX_DP_ENABLE_POST2_PATH     0x1

    * Override enable/disable of DP post2 path
    *  PSU_SERDES_L1_TXPMD_TM_45_DP_TM_TX_OVRD_DP_ENABLE_POST2_PATH 0x1

    * Override enable/disable of DP post1 path
    *  PSU_SERDES_L1_TXPMD_TM_45_DP_TM_TX_OVRD_DP_ENABLE_POST1_PATH 0x1

    * Enable/disable DP main path
    *  PSU_SERDES_L1_TXPMD_TM_45_DP_TM_TX_DP_ENABLE_MAIN_PATH      0x1

    * Override enable/disable of DP main path
    *  PSU_SERDES_L1_TXPMD_TM_45_DP_TM_TX_OVRD_DP_ENABLE_MAIN_PATH 0x1

    * Post or pre or main DP path selection
    * (OFFSET, MASK, VALUE)      (0XFD404CB4, 0x00000037U ,0x00000037U)
    */
	PSU_Mask_Write(SERDES_L1_TXPMD_TM_45_OFFSET,
		0x00000037U, 0x00000037U);
/*##################################################################### */

    /*
    * Register : L0_TX_ANA_TM_118 @ 0XFD4001D8

    * Test register force for enabling/disablign TX deemphasis bits <17:0>
    *  PSU_SERDES_L0_TX_ANA_TM_118_FORCE_TX_DEEMPH_17_0            0x1

    * Enable Override of TX deemphasis
    * (OFFSET, MASK, VALUE)      (0XFD4001D8, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L0_TX_ANA_TM_118_OFFSET,
		0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * Register : L1_TX_ANA_TM_118 @ 0XFD4041D8

    * Test register force for enabling/disablign TX deemphasis bits <17:0>
    *  PSU_SERDES_L1_TX_ANA_TM_118_FORCE_TX_DEEMPH_17_0            0x1

    * Enable Override of TX deemphasis
    * (OFFSET, MASK, VALUE)      (0XFD4041D8, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(SERDES_L1_TX_ANA_TM_118_OFFSET,
		0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * CDR AND RX EQUALIZATION SETTINGS
    */
    /*
    * GEM SERDES SETTINGS
    */
    /*
    * ENABLE PRE EMPHAIS AND VOLTAGE SWING
    */
    /*
    * Register : L1_TXPMD_TM_48 @ 0XFD404CC0

    * Margining factor value
    *  PSU_SERDES_L1_TXPMD_TM_48_TM_RESULTANT_MARGINING_FACTOR     0

    * Margining factor
    * (OFFSET, MASK, VALUE)      (0XFD404CC0, 0x0000001FU ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L1_TXPMD_TM_48_OFFSET,
		0x0000001FU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : L0_TXPMD_TM_48 @ 0XFD400CC0

    * Margining factor value
    *  PSU_SERDES_L0_TXPMD_TM_48_TM_RESULTANT_MARGINING_FACTOR     0

    * Margining factor
    * (OFFSET, MASK, VALUE)      (0XFD400CC0, 0x0000001FU ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L0_TXPMD_TM_48_OFFSET,
		0x0000001FU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : L1_TX_ANA_TM_18 @ 0XFD404048

    * pipe_TX_Deemph. 0: -6dB de-emphasis, 1: -3.5dB de-emphasis, 2 : No de-em
    * phasis, Others: reserved
    *  PSU_SERDES_L1_TX_ANA_TM_18_PIPE_TX_DEEMPH_7_0               0

    * Override for PIPE TX de-emphasis
    * (OFFSET, MASK, VALUE)      (0XFD404048, 0x000000FFU ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L1_TX_ANA_TM_18_OFFSET,
		0x000000FFU, 0x00000000U);
/*##################################################################### */

    /*
    * Register : L0_TX_ANA_TM_18 @ 0XFD400048

    * pipe_TX_Deemph. 0: -6dB de-emphasis, 1: -3.5dB de-emphasis, 2 : No de-em
    * phasis, Others: reserved
    *  PSU_SERDES_L0_TX_ANA_TM_18_PIPE_TX_DEEMPH_7_0               0

    * Override for PIPE TX de-emphasis
    * (OFFSET, MASK, VALUE)      (0XFD400048, 0x000000FFU ,0x00000000U)
    */
	PSU_Mask_Write(SERDES_L0_TX_ANA_TM_18_OFFSET,
		0x000000FFU, 0x00000000U);
/*##################################################################### */


	return 1;
}
unsigned long psu_resetout_init_data(void)
{
    /*
    * TAKING SERDES PERIPHERAL OUT OF RESET RESET
    */
    /*
    * PUTTING USB0 IN RESET
    */
    /*
    * Register : RST_LPD_TOP @ 0XFF5E023C

    * USB 0 reset for control registers
    *  PSU_CRL_APB_RST_LPD_TOP_USB0_APB_RESET                      0X0

    * Software control register for the LPD block.
    * (OFFSET, MASK, VALUE)      (0XFF5E023C, 0x00000400U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_TOP_OFFSET, 0x00000400U, 0x00000000U);
/*##################################################################### */

    /*
    * USB0 PIPE POWER PRESENT
    */
    /*
    * Register : fpd_power_prsnt @ 0XFF9D0080

    * This bit is used to choose between PIPE power present and 1'b1
    *  PSU_USB3_0_FPD_POWER_PRSNT_OPTION                           0X1

    * fpd_power_prsnt
    * (OFFSET, MASK, VALUE)      (0XFF9D0080, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(USB3_0_FPD_POWER_PRSNT_OFFSET,
		0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * Register : fpd_pipe_clk @ 0XFF9D007C

    * This bit is used to choose between PIPE clock coming from SerDes and the
    *  suspend clk
    *  PSU_USB3_0_FPD_PIPE_CLK_OPTION                              0x0

    * fpd_pipe_clk
    * (OFFSET, MASK, VALUE)      (0XFF9D007C, 0x00000001U ,0x00000000U)
    */
	PSU_Mask_Write(USB3_0_FPD_PIPE_CLK_OFFSET, 0x00000001U, 0x00000000U);
/*##################################################################### */

    /*
    * HIBERREST
    */
    /*
    * Register : RST_LPD_TOP @ 0XFF5E023C

    * USB 0 sleep circuit reset
    *  PSU_CRL_APB_RST_LPD_TOP_USB0_HIBERRESET                     0X0

    * USB 0 reset
    *  PSU_CRL_APB_RST_LPD_TOP_USB0_CORERESET                      0X0

    * Software control register for the LPD block.
    * (OFFSET, MASK, VALUE)      (0XFF5E023C, 0x00000140U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_TOP_OFFSET, 0x00000140U, 0x00000000U);
/*##################################################################### */

    /*
    * PUTTING USB1 IN RESET
    */
    /*
    * Register : RST_LPD_TOP @ 0XFF5E023C

    * USB 1 reset for control registers
    *  PSU_CRL_APB_RST_LPD_TOP_USB1_APB_RESET                      0X0

    * Software control register for the LPD block.
    * (OFFSET, MASK, VALUE)      (0XFF5E023C, 0x00000800U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_TOP_OFFSET, 0x00000800U, 0x00000000U);
/*##################################################################### */

    /*
    * USB1 PIPE POWER PRESENT
    */
    /*
    * Register : fpd_power_prsnt @ 0XFF9E0080

    * This bit is used to choose between PIPE power present and 1'b1
    *  PSU_USB3_1_FPD_POWER_PRSNT_OPTION                           0X1

    * fpd_power_prsnt
    * (OFFSET, MASK, VALUE)      (0XFF9E0080, 0x00000001U ,0x00000001U)
    */
	PSU_Mask_Write(USB3_1_FPD_POWER_PRSNT_OFFSET,
		0x00000001U, 0x00000001U);
/*##################################################################### */

    /*
    * Register : fpd_pipe_clk @ 0XFF9E007C

    * This bit is used to choose between PIPE clock coming from SerDes and the
    *  suspend clk
    *  PSU_USB3_1_FPD_PIPE_CLK_OPTION                              0x0

    * fpd_pipe_clk
    * (OFFSET, MASK, VALUE)      (0XFF9E007C, 0x00000001U ,0x00000000U)
    */
	PSU_Mask_Write(USB3_1_FPD_PIPE_CLK_OFFSET, 0x00000001U, 0x00000000U);
/*##################################################################### */

    /*
    * HIBERREST
    */
    /*
    * Register : RST_LPD_TOP @ 0XFF5E023C

    * USB 1 sleep circuit reset
    *  PSU_CRL_APB_RST_LPD_TOP_USB1_HIBERRESET                     0X0

    * USB 1 reset
    *  PSU_CRL_APB_RST_LPD_TOP_USB1_CORERESET                      0X0

    * Software control register for the LPD block.
    * (OFFSET, MASK, VALUE)      (0XFF5E023C, 0x00000280U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_TOP_OFFSET, 0x00000280U, 0x00000000U);
/*##################################################################### */

    /*
    * PUTTING DP IN RESET
    */
    /*
    * Register : RST_FPD_TOP @ 0XFD1A0100

    * Display Port block level reset (includes DPDMA)
    *  PSU_CRF_APB_RST_FPD_TOP_DP_RESET                            0X0

    * FPD Block level software controlled reset
    * (OFFSET, MASK, VALUE)      (0XFD1A0100, 0x00010000U ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_RST_FPD_TOP_OFFSET, 0x00010000U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : DP_PHY_RESET @ 0XFD4A0200

    * Set to '1' to hold the GT in reset. Clear to release.
    *  PSU_DP_DP_PHY_RESET_GT_RESET                                0X0

    * Reset the transmitter PHY.
    * (OFFSET, MASK, VALUE)      (0XFD4A0200, 0x00000002U ,0x00000000U)
    */
	PSU_Mask_Write(DP_DP_PHY_RESET_OFFSET, 0x00000002U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : DP_TX_PHY_POWER_DOWN @ 0XFD4A0238

    * Two bits per lane. When set to 11, moves the GT to power down mode. When
    *  set to 00, GT will be in active state. bits [1:0] - lane0 Bits [3:2] -
    * lane 1
    *  PSU_DP_DP_TX_PHY_POWER_DOWN_POWER_DWN                       0X0

    * Control PHY Power down
    * (OFFSET, MASK, VALUE)      (0XFD4A0238, 0x0000000FU ,0x00000000U)
    */
	PSU_Mask_Write(DP_DP_TX_PHY_POWER_DOWN_OFFSET,
		0x0000000FU, 0x00000000U);
/*##################################################################### */

    /*
    * USB0 GFLADJ
    */
    /*
    * Register : GUSB2PHYCFG @ 0XFE20C200

    * USB 2.0 Turnaround Time (USBTrdTim) Sets the turnaround time in PHY cloc
    * ks. Specifies the response time for a MAC request to the Packet FIFO Con
    * troller (PFC) to fetch data from the DFIFO (SPRAM). The following are th
    * e required values for the minimum SoC bus frequency of 60 MHz. USB turna
    * round time is a critical certification criteria when using long cables a
    * nd five hub levels. The required values for this field: - 4'h5: When the
    *  MAC interface is 16-bit UTMI+. - 4'h9: When the MAC interface is 8-bit
    * UTMI+/ULPI. If SoC bus clock is less than 60 MHz, and USB turnaround tim
    * e is not critical, this field can be set to a larger value. Note: This f
    * ield is valid only in device mode.
    *  PSU_USB3_0_XHCI_GUSB2PHYCFG_USBTRDTIM                       0x9

    * Transceiver Delay: Enables a delay between the assertion of the UTMI/ULP
    * I Transceiver Select signal (for HS) and the assertion of the TxValid si
    * gnal during a HS Chirp. When this bit is set to 1, a delay (of approxima
    * tely 2.5 us) is introduced from the time when the Transceiver Select is
    * set to 2'b00 (HS) to the time the TxValid is driven to 0 for sending the
    *  chirp-K. This delay is required for some UTMI/ULPI PHYs. Note: - If you
    *  enable the hibernation feature when the device core comes out of power-
    * off, you must re-initialize this bit with the appropriate value because
    * the core does not save and restore this bit value during hibernation. -
    * This bit is valid only in device mode.
    *  PSU_USB3_0_XHCI_GUSB2PHYCFG_XCVRDLY                         0x0

    * Enable utmi_sleep_n and utmi_l1_suspend_n (EnblSlpM) The application use
    * s this bit to control utmi_sleep_n and utmi_l1_suspend_n assertion to th
    * e PHY in the L1 state. - 1'b0: utmi_sleep_n and utmi_l1_suspend_n assert
    * ion from the core is not transferred to the external PHY. - 1'b1: utmi_s
    * leep_n and utmi_l1_suspend_n assertion from the core is transferred to t
    * he external PHY. Note: This bit must be set high for Port0 if PHY is use
    * d. Note: In Device mode - Before issuing any device endpoint command whe
    * n operating in 2.0 speeds, disable this bit and enable it after the comm
    * and completes. Without disabling this bit, if a command is issued when t
    * he device is in L1 state and if mac2_clk (utmi_clk/ulpi_clk) is gated of
    * f, the command will not get completed.
    *  PSU_USB3_0_XHCI_GUSB2PHYCFG_ENBLSLPM                        0x0

    * USB 2.0 High-Speed PHY or USB 1.1 Full-Speed Serial Transceiver Select T
    * he application uses this bit to select a high-speed PHY or a full-speed
    * transceiver. - 1'b0: USB 2.0 high-speed UTMI+ or ULPI PHY. This bit is a
    * lways 0, with Write Only access. - 1'b1: USB 1.1 full-speed serial trans
    * ceiver. This bit is always 1, with Write Only access. If both interface
    * types are selected in coreConsultant (that is, parameters' values are no
    * t zero), the application uses this bit to select the active interface is
    *  active, with Read-Write bit access. Note: USB 1.1 full-serial transceiv
    * er is not supported. This bit always reads as 1'b0.
    *  PSU_USB3_0_XHCI_GUSB2PHYCFG_PHYSEL                          0x0

    * Suspend USB2.0 HS/FS/LS PHY (SusPHY) When set, USB2.0 PHY enters Suspend
    *  mode if Suspend conditions are valid. For DRD/OTG configurations, it is
    *  recommended that this bit is set to 0 during coreConsultant configurati
    * on. If it is set to 1, then the application must clear this bit after po
    * wer-on reset. Application needs to set it to 1 after the core initializa
    * tion completes. For all other configurations, this bit can be set to 1 d
    * uring core configuration. Note: - In host mode, on reset, this bit is se
    * t to 1. Software can override this bit after reset. - In device mode, be
    * fore issuing any device endpoint command when operating in 2.0 speeds, d
    * isable this bit and enable it after the command completes. If you issue
    * a command without disabling this bit when the device is in L2 state and
    * if mac2_clk (utmi_clk/ulpi_clk) is gated off, the command will not get c
    * ompleted.
    *  PSU_USB3_0_XHCI_GUSB2PHYCFG_SUSPENDUSB20                    0x1

    * Full-Speed Serial Interface Select (FSIntf) The application uses this bi
    * t to select a unidirectional or bidirectional USB 1.1 full-speed serial
    * transceiver interface. - 1'b0: 6-pin unidirectional full-speed serial in
    * terface. This bit is set to 0 with Read Only access. - 1'b1: 3-pin bidir
    * ectional full-speed serial interface. This bit is set to 0 with Read Onl
    * y access. Note: USB 1.1 full-speed serial interface is not supported. Th
    * is bit always reads as 1'b0.
    *  PSU_USB3_0_XHCI_GUSB2PHYCFG_FSINTF                          0x0

    * ULPI or UTMI+ Select (ULPI_UTMI_Sel) The application uses this bit to se
    * lect a UTMI+ or ULPI Interface. - 1'b0: UTMI+ Interface - 1'b1: ULPI Int
    * erface This bit is writable only if UTMI+ and ULPI is specified for High
    * -Speed PHY Interface(s) in coreConsultant configuration (DWC_USB3_HSPHY_
    * INTERFACE = 3). Otherwise, this bit is read-only and the value depends o
    * n the interface selected through DWC_USB3_HSPHY_INTERFACE.
    *  PSU_USB3_0_XHCI_GUSB2PHYCFG_ULPI_UTMI_SEL                   0x1

    * PHY Interface (PHYIf) If UTMI+ is selected, the application uses this bi
    * t to configure the core to support a UTMI+ PHY with an 8- or 16-bit inte
    * rface. - 1'b0: 8 bits - 1'b1: 16 bits ULPI Mode: 1'b0 Note: - All the en
    * abled 2.0 ports must have the same clock frequency as Port0 clock freque
    * ncy (utmi_clk[0]). - The UTMI 8-bit and 16-bit modes cannot be used toge
    * ther for different ports at the same time (that is, all the ports must b
    * e in 8-bit mode, or all of them must be in 16-bit mode, at a time). - If
    *  any of the USB 2.0 ports is selected as ULPI port for operation, then a
    * ll the USB 2.0 ports must be operating at 60 MHz.
    *  PSU_USB3_0_XHCI_GUSB2PHYCFG_PHYIF                           0x0

    * HS/FS Timeout Calibration (TOutCal) The number of PHY clocks, as indicat
    * ed by the application in this field, is multiplied by a bit-time factor;
    *  this factor is added to the high-speed/full-speed interpacket timeout d
    * uration in the core to account for additional delays introduced by the P
    * HY. This may be required, since the delay introduced by the PHY in gener
    * ating the linestate condition may vary among PHYs. The USB standard time
    * out value for high-speed operation is 736 to 816 (inclusive) bit times.
    * The USB standard timeout value for full-speed operation is 16 to 18 (inc
    * lusive) bit times. The application must program this field based on the
    * speed of connection. The number of bit times added per PHY clock are: Hi
    * gh-speed operation: - One 30-MHz PHY clock = 16 bit times - One 60-MHz P
    * HY clock = 8 bit times Full-speed operation: - One 30-MHz PHY clock = 0.
    * 4 bit times - One 60-MHz PHY clock = 0.2 bit times - One 48-MHz PHY cloc
    * k = 0.25 bit times
    *  PSU_USB3_0_XHCI_GUSB2PHYCFG_TOUTCAL                         0x7

    * ULPI External VBUS Drive (ULPIExtVbusDrv) Selects supply source to drive
    *  5V on VBUS, in the ULPI PHY. - 1'b0: PHY drives VBUS with internal char
    * ge pump (default). - 1'b1: PHY drives VBUS with an external supply. (Onl
    * y when RTL parameter DWC_USB3_HSPHY_INTERFACE = 2 or 3)
    *  PSU_USB3_0_XHCI_GUSB2PHYCFG_ULPIEXTVBUSDRV                  0x1

    * Global USB2 PHY Configuration Register The application must program this
    *  register before starting any transactions on either the SoC bus or the
    * USB. In Device-only configurations, only one register is needed. In Host
    *  mode, per-port registers are implemented.
    * (OFFSET, MASK, VALUE)      (0XFE20C200, 0x00023FFFU ,0x00022457U)
    */
	PSU_Mask_Write(USB3_0_XHCI_GUSB2PHYCFG_OFFSET,
		0x00023FFFU, 0x00022457U);
/*##################################################################### */

    /*
    * Register : GFLADJ @ 0XFE20C630

    * This field indicates the frame length adjustment to be applied when SOF/
    * ITP counter is running on the ref_clk. This register value is used to ad
    * just the ITP interval when GCTL[SOFITPSYNC] is set to '1'; SOF and ITP i
    * nterval when GLADJ.GFLADJ_REFCLK_LPM_SEL is set to '1'. This field must
    * be programmed to a non-zero value only if GFLADJ_REFCLK_LPM_SEL is set t
    * o '1' or GCTL.SOFITPSYNC is set to '1'. The value is derived as follows:
    *  FLADJ_REF_CLK_FLADJ=((125000/ref_clk_period_integer)-(125000/ref_clk_pe
    * riod)) * ref_clk_period where - the ref_clk_period_integer is the intege
    * r value of the ref_clk period got by truncating the decimal (fractional)
    *  value that is programmed in the GUCTL.REF_CLK_PERIOD field. - the ref_c
    * lk_period is the ref_clk period including the fractional value. Examples
    * : If the ref_clk is 24 MHz then - GUCTL.REF_CLK_PERIOD = 41 - GFLADJ.GLA
    * DJ_REFCLK_FLADJ = ((125000/41)-(125000/41.6666))*41.6666 = 2032 (ignorin
    * g the fractional value) If the ref_clk is 48 MHz then - GUCTL.REF_CLK_PE
    * RIOD = 20 - GFLADJ.GLADJ_REFCLK_FLADJ = ((125000/20)-(125000/20.8333))*2
    * 0.8333 = 5208 (ignoring the fractional value)
    *  PSU_USB3_0_XHCI_GFLADJ_GFLADJ_REFCLK_FLADJ                  0x0

    * Global Frame Length Adjustment Register This register provides options f
    * or the software to control the core behavior with respect to SOF (Start
    * of Frame) and ITP (Isochronous Timestamp Packet) timers and frame timer
    * functionality. It provides an option to override the fladj_30mhz_reg sid
    * eband signal. In addition, it enables running SOF or ITP frame timer cou
    * nters completely from the ref_clk. This facilitates hardware LPM in host
    *  mode with the SOF or ITP counters being run from the ref_clk signal.
    * (OFFSET, MASK, VALUE)      (0XFE20C630, 0x003FFF00U ,0x00000000U)
    */
	PSU_Mask_Write(USB3_0_XHCI_GFLADJ_OFFSET, 0x003FFF00U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : GUCTL1 @ 0XFE20C11C

    * When this bit is set to '0', termsel, xcvrsel will become 0 during end o
    * f resume while the opmode will become 0 once controller completes end of
    *  resume and enters U0 state (2 separate commandswill be issued). When th
    * is bit is set to '1', all the termsel, xcvrsel, opmode becomes 0 during
    * end of resume itself (only 1 command will be issued)
    *  PSU_USB3_0_XHCI_GUCTL1_RESUME_TERMSEL_XCVRSEL_UNIFY         0x1

    * Reserved
    *  PSU_USB3_0_XHCI_GUCTL1_RESERVED_9                           0x1

    * Global User Control Register 1
    * (OFFSET, MASK, VALUE)      (0XFE20C11C, 0x00000600U ,0x00000600U)
    */
	PSU_Mask_Write(USB3_0_XHCI_GUCTL1_OFFSET, 0x00000600U, 0x00000600U);
/*##################################################################### */

    /*
    * Register : GUCTL @ 0XFE20C12C

    * Host IN Auto Retry (USBHstInAutoRetryEn) When set, this field enables th
    * e Auto Retry feature. For IN transfers (non-isochronous) that encounter
    * data packets with CRC errors or internal overrun scenarios, the auto ret
    * ry feature causes the Host core to reply to the device with a non-termin
    * ating retry ACK (that is, an ACK transaction packet with Retry = 1 and N
    * umP != 0). If the Auto Retry feature is disabled (default), the core wil
    * l respond with a terminating retry ACK (that is, an ACK transaction pack
    * et with Retry = 1 and NumP = 0). - 1'b0: Auto Retry Disabled - 1'b1: Aut
    * o Retry Enabled Note: This bit is also applicable to the device mode.
    *  PSU_USB3_0_XHCI_GUCTL_USBHSTINAUTORETRYEN                   0x1

    * Global User Control Register: This register provides a few options for t
    * he software to control the core behavior in the Host mode. Most of the o
    * ptions are used to improve host inter-operability with different devices
    * .
    * (OFFSET, MASK, VALUE)      (0XFE20C12C, 0x00004000U ,0x00004000U)
    */
	PSU_Mask_Write(USB3_0_XHCI_GUCTL_OFFSET, 0x00004000U, 0x00004000U);
/*##################################################################### */

    /*
    * USB1 GFLADJ
    */
    /*
    * Register : GUSB2PHYCFG @ 0XFE30C200

    * USB 2.0 Turnaround Time (USBTrdTim) Sets the turnaround time in PHY cloc
    * ks. Specifies the response time for a MAC request to the Packet FIFO Con
    * troller (PFC) to fetch data from the DFIFO (SPRAM). The following are th
    * e required values for the minimum SoC bus frequency of 60 MHz. USB turna
    * round time is a critical certification criteria when using long cables a
    * nd five hub levels. The required values for this field: - 4'h5: When the
    *  MAC interface is 16-bit UTMI+. - 4'h9: When the MAC interface is 8-bit
    * UTMI+/ULPI. If SoC bus clock is less than 60 MHz, and USB turnaround tim
    * e is not critical, this field can be set to a larger value. Note: This f
    * ield is valid only in device mode.
    *  PSU_USB3_1_XHCI_GUSB2PHYCFG_USBTRDTIM                       0x9

    * Transceiver Delay: Enables a delay between the assertion of the UTMI/ULP
    * I Transceiver Select signal (for HS) and the assertion of the TxValid si
    * gnal during a HS Chirp. When this bit is set to 1, a delay (of approxima
    * tely 2.5 us) is introduced from the time when the Transceiver Select is
    * set to 2'b00 (HS) to the time the TxValid is driven to 0 for sending the
    *  chirp-K. This delay is required for some UTMI/ULPI PHYs. Note: - If you
    *  enable the hibernation feature when the device core comes out of power-
    * off, you must re-initialize this bit with the appropriate value because
    * the core does not save and restore this bit value during hibernation. -
    * This bit is valid only in device mode.
    *  PSU_USB3_1_XHCI_GUSB2PHYCFG_XCVRDLY                         0x0

    * Enable utmi_sleep_n and utmi_l1_suspend_n (EnblSlpM) The application use
    * s this bit to control utmi_sleep_n and utmi_l1_suspend_n assertion to th
    * e PHY in the L1 state. - 1'b0: utmi_sleep_n and utmi_l1_suspend_n assert
    * ion from the core is not transferred to the external PHY. - 1'b1: utmi_s
    * leep_n and utmi_l1_suspend_n assertion from the core is transferred to t
    * he external PHY. Note: This bit must be set high for Port0 if PHY is use
    * d. Note: In Device mode - Before issuing any device endpoint command whe
    * n operating in 2.0 speeds, disable this bit and enable it after the comm
    * and completes. Without disabling this bit, if a command is issued when t
    * he device is in L1 state and if mac2_clk (utmi_clk/ulpi_clk) is gated of
    * f, the command will not get completed.
    *  PSU_USB3_1_XHCI_GUSB2PHYCFG_ENBLSLPM                        0x0

    * USB 2.0 High-Speed PHY or USB 1.1 Full-Speed Serial Transceiver Select T
    * he application uses this bit to select a high-speed PHY or a full-speed
    * transceiver. - 1'b0: USB 2.0 high-speed UTMI+ or ULPI PHY. This bit is a
    * lways 0, with Write Only access. - 1'b1: USB 1.1 full-speed serial trans
    * ceiver. This bit is always 1, with Write Only access. If both interface
    * types are selected in coreConsultant (that is, parameters' values are no
    * t zero), the application uses this bit to select the active interface is
    *  active, with Read-Write bit access. Note: USB 1.1 full-serial transceiv
    * er is not supported. This bit always reads as 1'b0.
    *  PSU_USB3_1_XHCI_GUSB2PHYCFG_PHYSEL                          0x0

    * Suspend USB2.0 HS/FS/LS PHY (SusPHY) When set, USB2.0 PHY enters Suspend
    *  mode if Suspend conditions are valid. For DRD/OTG configurations, it is
    *  recommended that this bit is set to 0 during coreConsultant configurati
    * on. If it is set to 1, then the application must clear this bit after po
    * wer-on reset. Application needs to set it to 1 after the core initializa
    * tion completes. For all other configurations, this bit can be set to 1 d
    * uring core configuration. Note: - In host mode, on reset, this bit is se
    * t to 1. Software can override this bit after reset. - In device mode, be
    * fore issuing any device endpoint command when operating in 2.0 speeds, d
    * isable this bit and enable it after the command completes. If you issue
    * a command without disabling this bit when the device is in L2 state and
    * if mac2_clk (utmi_clk/ulpi_clk) is gated off, the command will not get c
    * ompleted.
    *  PSU_USB3_1_XHCI_GUSB2PHYCFG_SUSPENDUSB20                    0x1

    * Full-Speed Serial Interface Select (FSIntf) The application uses this bi
    * t to select a unidirectional or bidirectional USB 1.1 full-speed serial
    * transceiver interface. - 1'b0: 6-pin unidirectional full-speed serial in
    * terface. This bit is set to 0 with Read Only access. - 1'b1: 3-pin bidir
    * ectional full-speed serial interface. This bit is set to 0 with Read Onl
    * y access. Note: USB 1.1 full-speed serial interface is not supported. Th
    * is bit always reads as 1'b0.
    *  PSU_USB3_1_XHCI_GUSB2PHYCFG_FSINTF                          0x0

    * ULPI or UTMI+ Select (ULPI_UTMI_Sel) The application uses this bit to se
    * lect a UTMI+ or ULPI Interface. - 1'b0: UTMI+ Interface - 1'b1: ULPI Int
    * erface This bit is writable only if UTMI+ and ULPI is specified for High
    * -Speed PHY Interface(s) in coreConsultant configuration (DWC_USB3_HSPHY_
    * INTERFACE = 3). Otherwise, this bit is read-only and the value depends o
    * n the interface selected through DWC_USB3_HSPHY_INTERFACE.
    *  PSU_USB3_1_XHCI_GUSB2PHYCFG_ULPI_UTMI_SEL                   0x1

    * PHY Interface (PHYIf) If UTMI+ is selected, the application uses this bi
    * t to configure the core to support a UTMI+ PHY with an 8- or 16-bit inte
    * rface. - 1'b0: 8 bits - 1'b1: 16 bits ULPI Mode: 1'b0 Note: - All the en
    * abled 2.0 ports must have the same clock frequency as Port0 clock freque
    * ncy (utmi_clk[0]). - The UTMI 8-bit and 16-bit modes cannot be used toge
    * ther for different ports at the same time (that is, all the ports must b
    * e in 8-bit mode, or all of them must be in 16-bit mode, at a time). - If
    *  any of the USB 2.0 ports is selected as ULPI port for operation, then a
    * ll the USB 2.0 ports must be operating at 60 MHz.
    *  PSU_USB3_1_XHCI_GUSB2PHYCFG_PHYIF                           0x0

    * HS/FS Timeout Calibration (TOutCal) The number of PHY clocks, as indicat
    * ed by the application in this field, is multiplied by a bit-time factor;
    *  this factor is added to the high-speed/full-speed interpacket timeout d
    * uration in the core to account for additional delays introduced by the P
    * HY. This may be required, since the delay introduced by the PHY in gener
    * ating the linestate condition may vary among PHYs. The USB standard time
    * out value for high-speed operation is 736 to 816 (inclusive) bit times.
    * The USB standard timeout value for full-speed operation is 16 to 18 (inc
    * lusive) bit times. The application must program this field based on the
    * speed of connection. The number of bit times added per PHY clock are: Hi
    * gh-speed operation: - One 30-MHz PHY clock = 16 bit times - One 60-MHz P
    * HY clock = 8 bit times Full-speed operation: - One 30-MHz PHY clock = 0.
    * 4 bit times - One 60-MHz PHY clock = 0.2 bit times - One 48-MHz PHY cloc
    * k = 0.25 bit times
    *  PSU_USB3_1_XHCI_GUSB2PHYCFG_TOUTCAL                         0x7

    * ULPI External VBUS Drive (ULPIExtVbusDrv) Selects supply source to drive
    *  5V on VBUS, in the ULPI PHY. - 1'b0: PHY drives VBUS with internal char
    * ge pump (default). - 1'b1: PHY drives VBUS with an external supply. (Onl
    * y when RTL parameter DWC_USB3_HSPHY_INTERFACE = 2 or 3)
    *  PSU_USB3_1_XHCI_GUSB2PHYCFG_ULPIEXTVBUSDRV                  0x1

    * Global USB2 PHY Configuration Register The application must program this
    *  register before starting any transactions on either the SoC bus or the
    * USB. In Device-only configurations, only one register is needed. In Host
    *  mode, per-port registers are implemented.
    * (OFFSET, MASK, VALUE)      (0XFE30C200, 0x00023FFFU ,0x00022457U)
    */
	PSU_Mask_Write(USB3_1_XHCI_GUSB2PHYCFG_OFFSET,
		0x00023FFFU, 0x00022457U);
/*##################################################################### */

    /*
    * Register : GFLADJ @ 0XFE30C630

    * This field indicates the frame length adjustment to be applied when SOF/
    * ITP counter is running on the ref_clk. This register value is used to ad
    * just the ITP interval when GCTL[SOFITPSYNC] is set to '1'; SOF and ITP i
    * nterval when GLADJ.GFLADJ_REFCLK_LPM_SEL is set to '1'. This field must
    * be programmed to a non-zero value only if GFLADJ_REFCLK_LPM_SEL is set t
    * o '1' or GCTL.SOFITPSYNC is set to '1'. The value is derived as follows:
    *  FLADJ_REF_CLK_FLADJ=((125000/ref_clk_period_integer)-(125000/ref_clk_pe
    * riod)) * ref_clk_period where - the ref_clk_period_integer is the intege
    * r value of the ref_clk period got by truncating the decimal (fractional)
    *  value that is programmed in the GUCTL.REF_CLK_PERIOD field. - the ref_c
    * lk_period is the ref_clk period including the fractional value. Examples
    * : If the ref_clk is 24 MHz then - GUCTL.REF_CLK_PERIOD = 41 - GFLADJ.GLA
    * DJ_REFCLK_FLADJ = ((125000/41)-(125000/41.6666))*41.6666 = 2032 (ignorin
    * g the fractional value) If the ref_clk is 48 MHz then - GUCTL.REF_CLK_PE
    * RIOD = 20 - GFLADJ.GLADJ_REFCLK_FLADJ = ((125000/20)-(125000/20.8333))*2
    * 0.8333 = 5208 (ignoring the fractional value)
    *  PSU_USB3_1_XHCI_GFLADJ_GFLADJ_REFCLK_FLADJ                  0x0

    * Global Frame Length Adjustment Register This register provides options f
    * or the software to control the core behavior with respect to SOF (Start
    * of Frame) and ITP (Isochronous Timestamp Packet) timers and frame timer
    * functionality. It provides an option to override the fladj_30mhz_reg sid
    * eband signal. In addition, it enables running SOF or ITP frame timer cou
    * nters completely from the ref_clk. This facilitates hardware LPM in host
    *  mode with the SOF or ITP counters being run from the ref_clk signal.
    * (OFFSET, MASK, VALUE)      (0XFE30C630, 0x003FFF00U ,0x00000000U)
    */
	PSU_Mask_Write(USB3_1_XHCI_GFLADJ_OFFSET, 0x003FFF00U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : GUCTL @ 0XFE30C12C

    * Host IN Auto Retry (USBHstInAutoRetryEn) When set, this field enables th
    * e Auto Retry feature. For IN transfers (non-isochronous) that encounter
    * data packets with CRC errors or internal overrun scenarios, the auto ret
    * ry feature causes the Host core to reply to the device with a non-termin
    * ating retry ACK (that is, an ACK transaction packet with Retry = 1 and N
    * umP != 0). If the Auto Retry feature is disabled (default), the core wil
    * l respond with a terminating retry ACK (that is, an ACK transaction pack
    * et with Retry = 1 and NumP = 0). - 1'b0: Auto Retry Disabled - 1'b1: Aut
    * o Retry Enabled Note: This bit is also applicable to the device mode.
    *  PSU_USB3_1_XHCI_GUCTL_USBHSTINAUTORETRYEN                   0x1

    * Global User Control Register: This register provides a few options for t
    * he software to control the core behavior in the Host mode. Most of the o
    * ptions are used to improve host inter-operability with different devices
    * .
    * (OFFSET, MASK, VALUE)      (0XFE30C12C, 0x00004000U ,0x00004000U)
    */
	PSU_Mask_Write(USB3_1_XHCI_GUCTL_OFFSET, 0x00004000U, 0x00004000U);
/*##################################################################### */

    /*
    * Register : GUCTL1 @ 0XFE30C11C

    * When this bit is set to '0', termsel, xcvrsel will become 0 during end o
    * f resume while the opmode will become 0 once controller completes end of
    *  resume and enters U0 state (2 separate commandswill be issued). When th
    * is bit is set to '1', all the termsel, xcvrsel, opmode becomes 0 during
    * end of resume itself (only 1 command will be issued)
    *  PSU_USB3_1_XHCI_GUCTL1_RESUME_TERMSEL_XCVRSEL_UNIFY         0x1

    * Reserved
    *  PSU_USB3_1_XHCI_GUCTL1_RESERVED_9                           0x1

    * Global User Control Register 1
    * (OFFSET, MASK, VALUE)      (0XFE30C11C, 0x00000600U ,0x00000600U)
    */
	PSU_Mask_Write(USB3_1_XHCI_GUCTL1_OFFSET, 0x00000600U, 0x00000600U);
/*##################################################################### */

    /*
    * UPDATING TWO PCIE REGISTERS DEFAULT VALUES, AS THESE REGISTERS HAVE INCO
    * RRECT RESET VALUES IN SILICON.
    */
    /*
    * Register : ATTR_25 @ 0XFD480064

    * If TRUE Completion Timeout Disable is supported. This is required to be
    * TRUE for Endpoint and either setting allowed for Root ports. Drives Devi
    * ce Capability 2 [4]; EP=0x0001; RP=0x0001
    *  PSU_PCIE_ATTRIB_ATTR_25_ATTR_CPL_TIMEOUT_DISABLE_SUPPORTED  0X1

    * ATTR_25
    * (OFFSET, MASK, VALUE)      (0XFD480064, 0x00000200U ,0x00000200U)
    */
	PSU_Mask_Write(PCIE_ATTRIB_ATTR_25_OFFSET, 0x00000200U, 0x00000200U);
/*##################################################################### */

    /*
    * CHECK PLL LOCK FOR LANE1
    */
    /*
    * Register : L1_PLL_STATUS_READ_1 @ 0XFD4063E4

    * Status Read value of PLL Lock
    *  PSU_SERDES_L1_PLL_STATUS_READ_1_PLL_LOCK_STATUS_READ        1
    * (OFFSET, MASK, VALUE)      (0XFD4063E4, 0x00000010U ,0x00000010U)
		*/
	mask_poll(SERDES_L1_PLL_STATUS_READ_1_OFFSET, 0x00000010U);

/*##################################################################### */

    /*
    * CHECK PLL LOCK FOR LANE2
    */
    /*
    * Register : L2_PLL_STATUS_READ_1 @ 0XFD40A3E4

    * Status Read value of PLL Lock
    *  PSU_SERDES_L2_PLL_STATUS_READ_1_PLL_LOCK_STATUS_READ        1
    * (OFFSET, MASK, VALUE)      (0XFD40A3E4, 0x00000010U ,0x00000010U)
		*/
	mask_poll(SERDES_L2_PLL_STATUS_READ_1_OFFSET, 0x00000010U);

/*##################################################################### */

    /*
    * CHECK PLL LOCK FOR LANE3
    */
    /*
    * Register : L3_PLL_STATUS_READ_1 @ 0XFD40E3E4

    * Status Read value of PLL Lock
    *  PSU_SERDES_L3_PLL_STATUS_READ_1_PLL_LOCK_STATUS_READ        1
    * (OFFSET, MASK, VALUE)      (0XFD40E3E4, 0x00000010U ,0x00000010U)
		*/
	mask_poll(SERDES_L3_PLL_STATUS_READ_1_OFFSET, 0x00000010U);

/*##################################################################### */

    /*
    * SATA AHCI VENDOR SETTING
    */

	return 1;
}
unsigned long psu_resetin_init_data(void)
{
    /*
    * PUTTING SERDES PERIPHERAL IN RESET
    */
    /*
    * PUTTING USB0 IN RESET
    */
    /*
    * Register : RST_LPD_TOP @ 0XFF5E023C

    * USB 0 reset for control registers
    *  PSU_CRL_APB_RST_LPD_TOP_USB0_APB_RESET                      0X1

    * USB 0 sleep circuit reset
    *  PSU_CRL_APB_RST_LPD_TOP_USB0_HIBERRESET                     0X1

    * USB 0 reset
    *  PSU_CRL_APB_RST_LPD_TOP_USB0_CORERESET                      0X1

    * Software control register for the LPD block.
    * (OFFSET, MASK, VALUE)      (0XFF5E023C, 0x00000540U ,0x00000540U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_TOP_OFFSET, 0x00000540U, 0x00000540U);
/*##################################################################### */

    /*
    * PUTTING USB1 IN RESET
    */
    /*
    * Register : RST_LPD_TOP @ 0XFF5E023C

    * USB 1 reset for control registers
    *  PSU_CRL_APB_RST_LPD_TOP_USB1_APB_RESET                      0X1

    * USB 1 sleep circuit reset
    *  PSU_CRL_APB_RST_LPD_TOP_USB1_HIBERRESET                     0X1

    * USB 1 reset
    *  PSU_CRL_APB_RST_LPD_TOP_USB1_CORERESET                      0X1

    * Software control register for the LPD block.
    * (OFFSET, MASK, VALUE)      (0XFF5E023C, 0x00000A80U ,0x00000A80U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_TOP_OFFSET, 0x00000A80U, 0x00000A80U);
/*##################################################################### */

    /*
    * PUTTING DP IN RESET
    */
    /*
    * Register : DP_TX_PHY_POWER_DOWN @ 0XFD4A0238

    * Two bits per lane. When set to 11, moves the GT to power down mode. When
    *  set to 00, GT will be in active state. bits [1:0] - lane0 Bits [3:2] -
    * lane 1
    *  PSU_DP_DP_TX_PHY_POWER_DOWN_POWER_DWN                       0XA

    * Control PHY Power down
    * (OFFSET, MASK, VALUE)      (0XFD4A0238, 0x0000000FU ,0x0000000AU)
    */
	PSU_Mask_Write(DP_DP_TX_PHY_POWER_DOWN_OFFSET,
		0x0000000FU, 0x0000000AU);
/*##################################################################### */

    /*
    * Register : DP_PHY_RESET @ 0XFD4A0200

    * Set to '1' to hold the GT in reset. Clear to release.
    *  PSU_DP_DP_PHY_RESET_GT_RESET                                0X1

    * Reset the transmitter PHY.
    * (OFFSET, MASK, VALUE)      (0XFD4A0200, 0x00000002U ,0x00000002U)
    */
	PSU_Mask_Write(DP_DP_PHY_RESET_OFFSET, 0x00000002U, 0x00000002U);
/*##################################################################### */

    /*
    * Register : RST_FPD_TOP @ 0XFD1A0100

    * Display Port block level reset (includes DPDMA)
    *  PSU_CRF_APB_RST_FPD_TOP_DP_RESET                            0X1

    * FPD Block level software controlled reset
    * (OFFSET, MASK, VALUE)      (0XFD1A0100, 0x00010000U ,0x00010000U)
    */
	PSU_Mask_Write(CRF_APB_RST_FPD_TOP_OFFSET, 0x00010000U, 0x00010000U);
/*##################################################################### */


	return 1;
}
unsigned long psu_ps_pl_isolation_removal_data(void)
{
    /*
    * PS-PL POWER UP REQUEST
    */
    /*
    * Register : REQ_PWRUP_INT_EN @ 0XFFD80118

    * Power-up Request Interrupt Enable for PL
    *  PSU_PMU_GLOBAL_REQ_PWRUP_INT_EN_PL                          1

    * Power-up Request Interrupt Enable Register. Writing a 1 to this location
    *  will unmask the interrupt.
    * (OFFSET, MASK, VALUE)      (0XFFD80118, 0x00800000U ,0x00800000U)
    */
	PSU_Mask_Write(PMU_GLOBAL_REQ_PWRUP_INT_EN_OFFSET,
		0x00800000U, 0x00800000U);
/*##################################################################### */

    /*
    * Register : REQ_PWRUP_TRIG @ 0XFFD80120

    * Power-up Request Trigger for PL
    *  PSU_PMU_GLOBAL_REQ_PWRUP_TRIG_PL                            1

    * Power-up Request Trigger Register. A write of one to this location will
    * generate a power-up request to the PMU.
    * (OFFSET, MASK, VALUE)      (0XFFD80120, 0x00800000U ,0x00800000U)
    */
	PSU_Mask_Write(PMU_GLOBAL_REQ_PWRUP_TRIG_OFFSET,
		0x00800000U, 0x00800000U);
/*##################################################################### */

    /*
    * POLL ON PL POWER STATUS
    */
    /*
    * Register : REQ_PWRUP_STATUS @ 0XFFD80110

    * Power-up Request Status for PL
    *  PSU_PMU_GLOBAL_REQ_PWRUP_STATUS_PL                          1
    * (OFFSET, MASK, VALUE)      (0XFFD80110, 0x00800000U ,0x00000000U)
		*/
	mask_pollOnValue(PMU_GLOBAL_REQ_PWRUP_STATUS_OFFSET,
		0x00800000U, 0x00000000U);

/*##################################################################### */


	return 1;
}
unsigned long psu_afi_config(void)
{
    /*
    * AFI RESET
    */
    /*
    * Register : RST_FPD_TOP @ 0XFD1A0100

    * AF_FM0 block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_AFI_FM0_RESET                       0

    * AF_FM1 block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_AFI_FM1_RESET                       0

    * AF_FM2 block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_AFI_FM2_RESET                       0

    * AF_FM3 block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_AFI_FM3_RESET                       0

    * AF_FM4 block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_AFI_FM4_RESET                       0

    * AF_FM5 block level reset
    *  PSU_CRF_APB_RST_FPD_TOP_AFI_FM5_RESET                       0

    * FPD Block level software controlled reset
    * (OFFSET, MASK, VALUE)      (0XFD1A0100, 0x00001F80U ,0x00000000U)
    */
	PSU_Mask_Write(CRF_APB_RST_FPD_TOP_OFFSET, 0x00001F80U, 0x00000000U);
/*##################################################################### */

    /*
    * Register : RST_LPD_TOP @ 0XFF5E023C

    * AFI FM 6
    *  PSU_CRL_APB_RST_LPD_TOP_AFI_FM6_RESET                       0

    * Software control register for the LPD block.
    * (OFFSET, MASK, VALUE)      (0XFF5E023C, 0x00080000U ,0x00000000U)
    */
	PSU_Mask_Write(CRL_APB_RST_LPD_TOP_OFFSET, 0x00080000U, 0x00000000U);
/*##################################################################### */

    /*
    * AFIFM INTERFACE WIDTH
    */
    /*
    * Register : afi_fs @ 0XFF419000

    * Select the 32/64/128-bit data width selection for the Slave 0 00: 32-bit
    *  AXI data width (default) 01: 64-bit AXI data width 10: 128-bit AXI data
    *  width 11: reserved
    *  PSU_LPD_SLCR_AFI_FS_DW_SS2_SEL                              0x0

    * afi fs SLCR control register. Do not change the bits durin
    * (OFFSET, MASK, VALUE)      (0XFF419000, 0x00000300U ,0x00000000U)
    */
	PSU_Mask_Write(LPD_SLCR_AFI_FS_OFFSET, 0x00000300U, 0x00000000U);
/*##################################################################### */


	return 1;
}
unsigned long psu_ps_pl_reset_config_data(void)
{
    /*
    * PS PL RESET SEQUENCE
    */
    /*
    * FABRIC RESET USING EMIO
    */
    /*
    * Register : MASK_DATA_5_MSW @ 0XFF0A002C

    * Operation is the same as MASK_DATA_0_LSW[MASK_0_LSW]
    *  PSU_GPIO_MASK_DATA_5_MSW_MASK_5_MSW                         0x8000

    * Maskable Output Data (GPIO Bank5, EMIO, Upper 16bits)
    * (OFFSET, MASK, VALUE)      (0XFF0A002C, 0xFFFF0000U ,0x80000000U)
    */
	PSU_Mask_Write(GPIO_MASK_DATA_5_MSW_OFFSET,
		0xFFFF0000U, 0x80000000U);
/*##################################################################### */

    /*
    * Register : DIRM_5 @ 0XFF0A0344

    * Operation is the same as DIRM_0[DIRECTION_0]
    *  PSU_GPIO_DIRM_5_DIRECTION_5                                 0x80000000

    * Direction mode (GPIO Bank5, EMIO)
    * (OFFSET, MASK, VALUE)      (0XFF0A0344, 0xFFFFFFFFU ,0x80000000U)
    */
	PSU_Mask_Write(GPIO_DIRM_5_OFFSET, 0xFFFFFFFFU, 0x80000000U);
/*##################################################################### */

    /*
    * Register : OEN_5 @ 0XFF0A0348

    * Operation is the same as OEN_0[OP_ENABLE_0]
    *  PSU_GPIO_OEN_5_OP_ENABLE_5                                  0x80000000

    * Output enable (GPIO Bank5, EMIO)
    * (OFFSET, MASK, VALUE)      (0XFF0A0348, 0xFFFFFFFFU ,0x80000000U)
    */
	PSU_Mask_Write(GPIO_OEN_5_OFFSET, 0xFFFFFFFFU, 0x80000000U);
/*##################################################################### */

    /*
    * Register : DATA_5 @ 0XFF0A0054

    * Output Data
    *  PSU_GPIO_DATA_5_DATA_5                                      0x80000000

    * Output Data (GPIO Bank5, EMIO)
    * (OFFSET, MASK, VALUE)      (0XFF0A0054, 0xFFFFFFFFU ,0x80000000U)
    */
	PSU_Mask_Write(GPIO_DATA_5_OFFSET, 0xFFFFFFFFU, 0x80000000U);
/*##################################################################### */

		mask_delay(1);

/*##################################################################### */

    /*
    * FABRIC RESET USING DATA_5 TOGGLE
    */
    /*
    * Register : DATA_5 @ 0XFF0A0054

    * Output Data
    *  PSU_GPIO_DATA_5_DATA_5                                      0X00000000

    * Output Data (GPIO Bank5, EMIO)
    * (OFFSET, MASK, VALUE)      (0XFF0A0054, 0xFFFFFFFFU ,0x00000000U)
    */
	PSU_Mask_Write(GPIO_DATA_5_OFFSET, 0xFFFFFFFFU, 0x00000000U);
/*##################################################################### */

		mask_delay(1);

/*##################################################################### */

    /*
    * FABRIC RESET USING DATA_5 TOGGLE
    */
    /*
    * Register : DATA_5 @ 0XFF0A0054

    * Output Data
    *  PSU_GPIO_DATA_5_DATA_5                                      0x80000000

    * Output Data (GPIO Bank5, EMIO)
    * (OFFSET, MASK, VALUE)      (0XFF0A0054, 0xFFFFFFFFU ,0x80000000U)
    */
	PSU_Mask_Write(GPIO_DATA_5_OFFSET, 0xFFFFFFFFU, 0x80000000U);
/*##################################################################### */


	return 1;
}
unsigned long psu_ddr_phybringup_data(void)
{
return 1;
}
unsigned long psu_ddr_init_data()
{
return 1;
}
/**
 * CRL_APB Base Address
 */
#define CRL_APB_BASEADDR      0XFF5E0000U
#define CRL_APB_RST_LPD_IOU0    ((CRL_APB_BASEADDR) + 0X00000230U)
#define CRL_APB_RST_LPD_IOU1    ((CRL_APB_BASEADDR) + 0X00000234U)
#define CRL_APB_RST_LPD_IOU2    ((CRL_APB_BASEADDR) + 0X00000238U)
#define CRL_APB_RST_LPD_TOP    ((CRL_APB_BASEADDR) + 0X0000023CU)
#define CRL_APB_IOU_SWITCH_CTRL    ((CRL_APB_BASEADDR) + 0X0000009CU)

/**
 * CRF_APB Base Address
 */
#define CRF_APB_BASEADDR      0XFD1A0000U

#define CRF_APB_RST_FPD_TOP    ((CRF_APB_BASEADDR) + 0X00000100U)
#define CRF_APB_GPU_REF_CTRL    ((CRF_APB_BASEADDR) + 0X00000084U)
#define CRF_APB_RST_DDR_SS    ((CRF_APB_BASEADDR) + 0X00000108U)
#define PSU_MASK_POLL_TIME 1100000

/**
 *  * Register: CRF_APB_DPLL_CTRL
 */
#define CRF_APB_DPLL_CTRL    ((CRF_APB_BASEADDR) + 0X0000002C)


#define CRF_APB_DPLL_CTRL_DIV2_SHIFT   16
#define CRF_APB_DPLL_CTRL_DIV2_WIDTH   1

#define CRF_APB_DPLL_CTRL_FBDIV_SHIFT   8
#define CRF_APB_DPLL_CTRL_FBDIV_WIDTH   7

#define CRF_APB_DPLL_CTRL_BYPASS_SHIFT   3
#define CRF_APB_DPLL_CTRL_BYPASS_WIDTH   1

#define CRF_APB_DPLL_CTRL_RESET_SHIFT   0
#define CRF_APB_DPLL_CTRL_RESET_WIDTH   1

/**
 *  * Register: CRF_APB_DPLL_CFG
 */
#define CRF_APB_DPLL_CFG    ((CRF_APB_BASEADDR) + 0X00000030)

#define CRF_APB_DPLL_CFG_LOCK_DLY_SHIFT   25
#define CRF_APB_DPLL_CFG_LOCK_DLY_WIDTH   7

#define CRF_APB_DPLL_CFG_LOCK_CNT_SHIFT   13
#define CRF_APB_DPLL_CFG_LOCK_CNT_WIDTH   10

#define CRF_APB_DPLL_CFG_LFHF_SHIFT   10
#define CRF_APB_DPLL_CFG_LFHF_WIDTH   2

#define CRF_APB_DPLL_CFG_CP_SHIFT   5
#define CRF_APB_DPLL_CFG_CP_WIDTH   4

#define CRF_APB_DPLL_CFG_RES_SHIFT   0
#define CRF_APB_DPLL_CFG_RES_WIDTH   4

/**
 * Register: CRF_APB_PLL_STATUS
 */
#define CRF_APB_PLL_STATUS    ((CRF_APB_BASEADDR) + 0X00000044)


static int mask_pollOnValue(u32 add, u32 mask, u32 value)
{
	volatile u32 *addr = (volatile u32 *)(unsigned long) add;
	int i = 0;

	while ((*addr & mask) != value) {
		if (i == PSU_MASK_POLL_TIME)
			return 0;
		i++;
	}
	return 1;
}

static int mask_poll(u32 add, u32 mask)
{
	volatile u32 *addr = (volatile u32 *)(unsigned long) add;
	int i = 0;

	while (!(*addr & mask)) {
		if (i == PSU_MASK_POLL_TIME)
			return 0;
		i++;
	}
	return 1;
}

static void mask_delay(u32 delay)
{
	usleep(delay);
}

static u32 mask_read(u32 add, u32 mask)
{
	volatile u32 *addr = (volatile u32 *)(unsigned long) add;
	u32 val = (*addr & mask);
	return val;
}

static void dpll_prog(int ddr_pll_fbdiv, int d_lock_dly, int d_lock_cnt,
	int d_lfhf, int d_cp, int d_res) {

	unsigned int pll_ctrl_regval;
	unsigned int pll_status_regval;

	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CTRL);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CTRL_DIV2_MASK);
	pll_ctrl_regval = pll_ctrl_regval | (1 << CRF_APB_DPLL_CTRL_DIV2_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CTRL, pll_ctrl_regval);

	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CFG);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CFG_LOCK_DLY_MASK);
	pll_ctrl_regval = pll_ctrl_regval |
		(d_lock_dly << CRF_APB_DPLL_CFG_LOCK_DLY_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CFG, pll_ctrl_regval);

	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CFG);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CFG_LOCK_CNT_MASK);
	pll_ctrl_regval = pll_ctrl_regval |
		(d_lock_cnt << CRF_APB_DPLL_CFG_LOCK_CNT_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CFG, pll_ctrl_regval);

	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CFG);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CFG_LFHF_MASK);
	pll_ctrl_regval = pll_ctrl_regval |
		(d_lfhf << CRF_APB_DPLL_CFG_LFHF_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CFG, pll_ctrl_regval);

	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CFG);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CFG_CP_MASK);
	pll_ctrl_regval = pll_ctrl_regval |
		(d_cp << CRF_APB_DPLL_CFG_CP_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CFG, pll_ctrl_regval);

	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CFG);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CFG_RES_MASK);
	pll_ctrl_regval = pll_ctrl_regval |
		(d_res << CRF_APB_DPLL_CFG_RES_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CFG, pll_ctrl_regval);

	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CTRL);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CTRL_FBDIV_MASK);
	pll_ctrl_regval = pll_ctrl_regval |
		(ddr_pll_fbdiv << CRF_APB_DPLL_CTRL_FBDIV_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CTRL, pll_ctrl_regval);

	/*Setting PLL BYPASS*/
	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CTRL);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CTRL_BYPASS_MASK);
	pll_ctrl_regval = pll_ctrl_regval |
		(1 << CRF_APB_DPLL_CTRL_BYPASS_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CTRL, pll_ctrl_regval);

	/*Setting PLL RESET*/
	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CTRL);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CTRL_RESET_MASK);
	pll_ctrl_regval = pll_ctrl_regval |
		(1 << CRF_APB_DPLL_CTRL_RESET_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CTRL, pll_ctrl_regval);

	/*Clearing PLL RESET*/
	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CTRL);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CTRL_RESET_MASK);
	pll_ctrl_regval = pll_ctrl_regval |
		(0 << CRF_APB_DPLL_CTRL_RESET_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CTRL, pll_ctrl_regval);

	/*Checking PLL lock*/
	pll_status_regval = 0x00000000;
	while ((pll_status_regval & CRF_APB_PLL_STATUS_DPLL_LOCK_MASK) !=
		CRF_APB_PLL_STATUS_DPLL_LOCK_MASK)
		pll_status_regval = Xil_In32(CRF_APB_PLL_STATUS);




	/*Clearing PLL BYPASS*/
	pll_ctrl_regval = Xil_In32(CRF_APB_DPLL_CTRL);
	pll_ctrl_regval = pll_ctrl_regval & (~CRF_APB_DPLL_CTRL_BYPASS_MASK);
	pll_ctrl_regval = pll_ctrl_regval |
		(0 << CRF_APB_DPLL_CTRL_BYPASS_SHIFT);
	Xil_Out32(CRF_APB_DPLL_CTRL, pll_ctrl_regval);

}

/*Following SERDES programming sequences that a user need to follow to work
 * around the known limitation with SERDES. These sequences should done
 * before STEP 1 and STEP 2 as described in previous section. These
 * programming steps are *required for current silicon version and are
 * likely to undergo further changes with subsequent silicon versions.
 */


static int serdes_enb_coarse_saturation(void)
{
  /*Enable PLL Coarse Code saturation Logic*/
	Xil_Out32(0xFD402094, 0x00000010);
	Xil_Out32(0xFD406094, 0x00000010);
	Xil_Out32(0xFD40A094, 0x00000010);
	Xil_Out32(0xFD40E094, 0x00000010);
		return 1;
}

int serdes_fixcal_code(void)
{
	int MaskStatus = 1;

  unsigned int rdata = 0;
  
	/*The valid codes are from 0x26 to 0x3C.
	*There are 23 valid codes in total.
	*/
 /*Each element of array stands for count of occurence of valid code.*/
	unsigned int match_pmos_code[23];
	/*Each element of array stands for count of occurence of valid code.*/
	/*The valid codes are from 0xC to 0x12.
	*There are 7 valid codes in total.
	*/
	unsigned int match_nmos_code[23];
	/*Each element of array stands for count of occurence of valid code.*/
	/*The valid codes are from 0x6 to 0xC.
	* There are 7 valid codes in total.
	*/
	unsigned int match_ical_code[7];
	/*Each element of array stands for count of occurence of valid code.*/
	unsigned int match_rcal_code[7];

	unsigned int p_code = 0;
	unsigned int n_code = 0;
	unsigned int i_code = 0;
	unsigned int r_code = 0;
	unsigned int repeat_count = 0;
	unsigned int L3_TM_CALIB_DIG20 = 0;
	unsigned int L3_TM_CALIB_DIG19 = 0;
	unsigned int L3_TM_CALIB_DIG18 = 0;
	unsigned int L3_TM_CALIB_DIG16 = 0;
	unsigned int L3_TM_CALIB_DIG15 = 0;
	unsigned int L3_TM_CALIB_DIG14 = 0;

	int i = 0;

  rdata = Xil_In32(0XFD40289C);
  rdata = rdata & ~0x03; 
  rdata = rdata | 0x1; 
  Xil_Out32(0XFD40289C, rdata);
  // check supply good status before starting AFE sequencing
  int count = 0; 
  do
  { 
    if (count == PSU_MASK_POLL_TIME)
      break;
    rdata = Xil_In32(0xFD402B1C); 
    count++;
  }while((rdata&0x0000000E) !=0x0000000E);

	for (i = 0; i < 23; i++) {
		match_pmos_code[i] = 0;
		match_nmos_code[i] = 0;
	}
	for (i = 0; i < 7; i++) {
		match_ical_code[i] = 0;
		match_rcal_code[i] = 0;
	}


	do {
	/*Clear ICM_CFG value*/
		Xil_Out32(0xFD410010, 0x00000000);
		Xil_Out32(0xFD410014, 0x00000000);

	/*Set ICM_CFG value*/
	/*This will trigger recalibration of all stages*/
	Xil_Out32(0xFD410010, 0x00000001);
	Xil_Out32(0xFD410014, 0x00000000);

	/*is calibration done? polling on L3_CALIB_DONE_STATUS*/
	MaskStatus = mask_poll(0xFD40EF14, 0x2);
	if (MaskStatus == 0) {
		/*failure here is because of calibration done timeout*/
		xil_printf("#SERDES initialization timed out\n\r");
		return MaskStatus;
	}

	p_code = mask_read(0xFD40EF18, 0xFFFFFFFF);/*PMOS code*/
	n_code = mask_read(0xFD40EF1C, 0xFFFFFFFF);/*NMOS code*/
	/*m_code = mask_read(0xFD40EF20, 0xFFFFFFFF)*/;/*MPHY code*/
	i_code = mask_read(0xFD40EF24, 0xFFFFFFFF);/*ICAL code*/
	r_code = mask_read(0xFD40EF28, 0xFFFFFFFF);/*RX code*/
	/*u_code = mask_read(0xFD40EF2C, 0xFFFFFFFF)*/;/*USB2 code*/

	/*PMOS code in acceptable range*/
	if ((p_code >= 0x26) && (p_code <= 0x3C))
		match_pmos_code[p_code - 0x26] += 1;

	/*NMOS code in acceptable range*/
	if ((n_code >= 0x26) && (n_code <= 0x3C))
		match_nmos_code[n_code - 0x26] += 1;

	/*PMOS code in acceptable range*/
	if ((i_code >= 0xC) && (i_code <= 0x12))
		match_ical_code[i_code - 0xC] += 1;

	/*NMOS code in acceptable range*/
	if ((r_code >= 0x6) && (r_code <= 0xC))
		match_rcal_code[r_code - 0x6] += 1;


	} while (repeat_count++ < 10);

	/*find the valid code which resulted in maximum times in 10 iterations*/
	for (i = 0; i < 23; i++) {
		if (match_pmos_code[i] >= match_pmos_code[0]) {
			match_pmos_code[0] = match_pmos_code[i];
			p_code = 0x26 + i;
		}
	if (match_nmos_code[i] >= match_nmos_code[0]) {
		match_nmos_code[0] = match_nmos_code[i];
		n_code = 0x26 + i;
		}
	}

	for (i = 0; i < 7; i++) {
		if (match_ical_code[i] >= match_ical_code[0]) {
			match_ical_code[0] = match_ical_code[i];
			i_code = 0xC + i;
		}
		if (match_rcal_code[i] >= match_rcal_code[0]) {
			match_rcal_code[0] = match_rcal_code[i];
			r_code = 0x6 + i;
		}
	}
	/*L3_TM_CALIB_DIG20[3] PSW MSB Override*/
	/*L3_TM_CALIB_DIG20[2:0]	PSW Code [4:2]*/
	L3_TM_CALIB_DIG20 = mask_read(0xFD40EC50, 0xFFFFFFF0);/*read DIG20*/
	L3_TM_CALIB_DIG20 = L3_TM_CALIB_DIG20 | 0x8 | ((p_code >> 2) & 0x7);


	/*L3_TM_CALIB_DIG19[7:6]	PSW Code [1:0]*/
	/*L3_TM_CALIB_DIG19[5]	PSW Override*/
	/*L3_TM_CALIB_DIG19[2]	NSW MSB Override*/
	/*L3_TM_CALIB_DIG19[1:0]	NSW Code [4:3]*/
	L3_TM_CALIB_DIG19 = mask_read(0xFD40EC4C, 0xFFFFFF18);/*read DIG19*/
	L3_TM_CALIB_DIG19 = L3_TM_CALIB_DIG19 | ((p_code & 0x3) << 6)
		| 0x20 | 0x4 | ((n_code >> 3) & 0x3);

	/*L3_TM_CALIB_DIG18[7:5]	NSW Code [2:0]*/
	/*L3_TM_CALIB_DIG18[4]	NSW Override*/
	L3_TM_CALIB_DIG18 = mask_read(0xFD40EC48, 0xFFFFFF0F);/*read DIG18*/
	L3_TM_CALIB_DIG18 = L3_TM_CALIB_DIG18 | ((n_code & 0x7) << 5) | 0x10;


	/*L3_TM_CALIB_DIG16[2:0]	RX Code [3:1]*/
	L3_TM_CALIB_DIG16 = mask_read(0xFD40EC40, 0xFFFFFFF8);/*read DIG16*/
	L3_TM_CALIB_DIG16 = L3_TM_CALIB_DIG16 | ((r_code >> 1) & 0x7);

	/*L3_TM_CALIB_DIG15[7]	RX Code [0]*/
	/*L3_TM_CALIB_DIG15[6]	RX CODE Override*/
	/*L3_TM_CALIB_DIG15[3]	ICAL MSB Override*/
	/*L3_TM_CALIB_DIG15[2:0]	ICAL Code [3:1]*/
	L3_TM_CALIB_DIG15 = mask_read(0xFD40EC3C, 0xFFFFFF30);/*read DIG15*/
	L3_TM_CALIB_DIG15 = L3_TM_CALIB_DIG15 | ((r_code & 0x1) << 7)
	| 0x40 | 0x8 | ((i_code >> 1) & 0x7);

	/*L3_TM_CALIB_DIG14[7]	ICAL Code [0]*/
	/*L3_TM_CALIB_DIG14[6]	ICAL Override*/
	L3_TM_CALIB_DIG14 = mask_read(0xFD40EC38, 0xFFFFFF3F);/*read DIG14*/
	L3_TM_CALIB_DIG14 = L3_TM_CALIB_DIG14 | ((i_code & 0x1) << 7) | 0x40;

	/*Forces the calibration values*/
	Xil_Out32(0xFD40EC50, L3_TM_CALIB_DIG20);
	Xil_Out32(0xFD40EC4C, L3_TM_CALIB_DIG19);
	Xil_Out32(0xFD40EC48, L3_TM_CALIB_DIG18);
	Xil_Out32(0xFD40EC40, L3_TM_CALIB_DIG16);
	Xil_Out32(0xFD40EC3C, L3_TM_CALIB_DIG15);
	Xil_Out32(0xFD40EC38, L3_TM_CALIB_DIG14);
	return MaskStatus;

}
static int init_serdes(void)
{
	int status = 1;

	status &=  psu_resetin_init_data();

	status &= serdes_fixcal_code();
	status &= serdes_enb_coarse_saturation();

	status &=  psu_serdes_init_data();
	status &=  psu_resetout_init_data();

	return status;
}


static void init_peripheral(void)
{
/*SMMU_REG Interrrupt Enable: Followig register need to be written all the time to properly catch SMMU messages.*/
	PSU_Mask_Write(0xFD5F0018, 0x8000001FU, 0x8000001FU);
}

static int psu_init_xppu_aper_ram(void)
{

	return 0;
}

int psu_lpd_protection(void)
{
	psu_init_xppu_aper_ram();
	return 0;
}

int psu_ddr_protection(void)
{
	psu_ddr_xmpu0_data();
	psu_ddr_xmpu1_data();
	psu_ddr_xmpu2_data();
	psu_ddr_xmpu3_data();
	psu_ddr_xmpu4_data();
	psu_ddr_xmpu5_data();
	return 0;
}
int psu_ocm_protection(void)
{
	psu_ocm_xmpu_data();
	return 0;
}

int psu_fpd_protection(void)
{
	psu_fpd_xmpu_data();
	return 0;
}

int psu_protection_lock(void)
{
	psu_protection_lock_data();
	return 0;
}

int psu_protection(void)
{
	psu_apply_master_tz();
	psu_ddr_protection();
	psu_ocm_protection();
	psu_fpd_protection();
	psu_lpd_protection();
	return 0;
}

int
psu_init(void)
{
	int status = 1;

	status &= psu_mio_init_data();
	status &=  psu_peripherals_pre_init_data();
	status &=   psu_pll_init_data();
	status &=   psu_clock_init_data();
	status &=  psu_ddr_init_data();
	status &=  psu_ddr_phybringup_data();
	status &=  psu_peripherals_init_data();
	status &=  init_serdes();
	init_peripheral();

	status &=  psu_peripherals_powerdwn_data();
	status &=    psu_afi_config();
	psu_ddr_qos_init_data();

	if (status == 0)
		return 1;
	return 0;
}
