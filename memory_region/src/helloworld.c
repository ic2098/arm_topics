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
#include "xcoresightpsdcc.h"
#include "xil_cache.h"
#include "xil_mmu.h"
#include "xpseudo_asm_gcc.h"
#include "arm_neon.h"

#define DDR_BASE 0x0
#define OCM_BASE 0xFFFC0000
#define KILO (1<<10)
#define MEGA (1<<20)
#define GIGA (1<<30)

#define read_dcache_data(val)	__asm__ __volatile__("msr S3_3_c15_c4_0, %0"  : : "r" (val))
#define read_dcache_tag(val)	__asm__ __volatile__("msr S3_3_c15_c2_0, %0"  : : "r" (val))
#define get_data0()	({u64 rval = 0U;\
			__asm__ __volatile__("mrs	%0, S3_3_c15_c0_0" : "=r" (rval));\
			rval;\
			})
#define get_data1()	({u64 rval = 0U;\
			__asm__ __volatile__("mrs	%0, S3_3_c15_c0_1" : "=r" (rval));\
			rval;\
			})

u64 *ptr = (u64 *)(DDR_BASE);
u64 *l1d = (u64 *)(DDR_BASE + 8*MEGA);

#define N            1024
#define TEST_ROUNDS    10

#define GOLDEN_RESULT 357389824
float a[N],b[N];

float dot_product_1(float * __restrict pa, float *  __restrict pb, unsigned int n, unsigned int x )
{
	float sum=0.0;
    unsigned int i;

    for(i = 0; i < (n& ~3); i++)
        sum += pa[i] *pb[i];
    return sum;
}

float dot_product_2(const float * __restrict pa, const float *  __restrict pb, unsigned int n, unsigned int x )
{
	float sum[4]={0.0,0.0,0.0,0.0};
    unsigned int i;

    for(i = 0; i < (n& ~3); i+=4)
    {
        sum[0] += pa[i] *pb[i];
        sum[1] += pa[i+1] *pb[i+1];
        sum[2] += pa[i+2] *pb[i+2];
        sum[3] += pa[i+3] *pb[i+3];
    }
    return sum[0]+sum[1]+sum[2]+sum[3];
}

float32x4_t vcmla_f32 (float32x4_t a, float32x4_t b, float32x4_t c)
{
  float32x4_t result;
  __asm__ ("fcmla %0.4s,%2.4s,%3.4s, #0"
           : "=w"(result)
           : "0"(a), "w"(b), "w"(c)
           : /* No clobbers */);
  return result;
}

void vector_add_c_16x4_restrict(
		uint16_t* restrict vecr,
		const uint16_t* restrict veca,
		const uint16_t* restrict vecb
		) {
	int i;
	for (i=0; i<4; i++) {
		vecr[i] = veca[i] + vecb[i];
	}
}

// https://tech-blog.sonos.com/posts/assembly-still-matters-cortex-a53-vs-m1/
void matmul(
		uint16_t* restrict vecr,
		const uint16_t* restrict veca,
		const uint16_t* restrict vecb
		) {
	__asm__ volatile( "ldr x0, [%0]\n\t" ::"r"(&veca));
	__asm__ volatile( "ldr x1, [%0]\n\t" ::"r"(&vecb));
	__asm__ volatile( "ldr x2, [%0]\n\t" ::"r"(&vecr));

	__asm__ volatile(
			"VADD, q0, q1, q2\n\t"
			);

	__asm__ volatile(".loop:\n\t"
  "ld1	{ v0.4s-v3.4s }, [x0], #64\n\t"
  "ld1	{ v5.4s, v6.4s }, [x1], #32\n\t"
  "st1	{ v5.4s, v6.4s }, [x1], #32\n\t"

  "fmla	v16.4s, v0.4s, v5.s[0]\n\t"
  "fmla	v17.4s, v1.4s, v5.s[0]\n\t"

  "fmla	v18.4s, v0.4s, v5.s[1]\n\t"
  "fmla	v19.4s, v1.4s, v5.s[1]\n\t"

  "fmla	v20.4s, v0.4s, v5.s[2]\n\t"
  "fmla	v21.4s, v1.4s, v5.s[2]\n\t"

  "fmla	v22.4s, v0.4s, v5.s[3]\n\t"
  "fmla	v23.4s, v1.4s, v5.s[3]\n\t"

  "fmla	v24.4s, v0.4s, v6.s[0]\n\t"
  "fmla	v25.4s, v1.4s, v6.s[0]\n\t"

  "fmla	v26.4s, v0.4s, v6.s[1]\n\t"
  "fmla	v27.4s, v1.4s, v6.s[1]\n\t"

  "fmla	v28.4s, v0.4s, v6.s[2]\n\t"
  "fmla	v29.4s, v1.4s, v6.s[2]\n\t"

  "fmla	v30.4s, v0.4s, v6.s[3]\n\t"
  "fmla	v31.4s, v1.4s, v6.s[3]\n\t"

  "subs	x3, x3, #1\n\t"
  "bne	.loop\n\t"

);
  return;
}


/*
 * -mcpu=cortex-a53 -mfpu=neon -ftree-vectorize -mvectorize-with-neon-quad -mfloat-abi=softfp -ffast-math
 */

int main()
{
	register u8 ch;
	register u64 i, cmd;
	register u32 way, index, dw;
	register u64 val;
	init_platform();
	Xil_ICacheEnable();
	Xil_DCacheEnable();

	float32x4_t d1;
	float32x4_t abcd = {1,2,3,4}, b1 = {2,3,4,5}, c1 = {3,4,5,6};
	d1 = vcmla_f32(abcd,b1,c1);
	xil_printf("%f", d1[0] + d1[1] + d1[2] + d1[3]);

	float fResult1, fResult2;

	for(i=0;i<N;i++)
	{
        a[i]=i;
	    b[i]=i;
	}

	fResult1 = dot_product_1(a,b,N,0);

	while (1) {
		fResult2 = dot_product_2(a,b,N,0);
	}

	float32x4_t v0 = { 1.0, 2.0, 3.0, 4.0 }, v1 = { 5.0, 6.0, 7.0, 8.0 }, v2 = { 9.0, 10.0, 11.0, 12.0 }, v3 = { 13.0, 14.0, 15.0, 16.0 };
	float32x4x4_t u = { v0, v1, v2, v3 };
	float buff[4];
	vst4q_lane_f32(buff, u, 0);
	// => buff = { 1.0, 5.0, 9.0, 13.0 }

	xil_printf("%f", buff[0] + buff[1] + buff[2] + buff[3]);

	u64 ullCntValue2;
	XTime_GetTime(&ullCntValue2);


	Xil_DCacheDisable();
    for (i=0; i<4; i++) {
    	Xil_SetTlbAttributes(DDR_BASE + 2*i*MEGA, NORM_WB_CACHE);
    }
    for (i=0; i<4; i++) {
    	Xil_SetTlbAttributes(DDR_BASE + 8*MEGA + 2*i*MEGA, NORM_NONCACHE);
    }

	for (i=0; i<MEGA; i++) {
		ptr[i] = 0;
	}

	for (i=0; i<MEGA; i++) {
		l1d[i] = 0;
	}

//    xil_printf("Hello World\n\r");
//    ch = 'P';
//    for (int i=0; i<10; i++) {
//    	XCoresightPs_DccSendByte(STDOUT_BASEADDRESS, ch+i);
//    }
//    ch = XCoresightPs_DccRecvByte(STDOUT_BASEADDRESS);

	Xil_DCacheEnable();
	Xil_DCacheFlush();
	Xil_DCacheInvalidate();
	Xil_DCacheDisable();
	Xil_DCacheEnable();
	Xil_DCacheFlush();

	for (i=0; i<4*KILO; i++) {
		ptr[i] = i;
	}
	val = 0;
	for (i=0; i<4*KILO; i++) {
		val += ptr[i];
	}
	isb(); dsb();

	i=0;
	for (way=0; way<4; way++) {
		for (index=0; index<128; index++) {
			for (dw=0; dw<8; dw++) {
				cmd =0;
				cmd |= (way<<30) | (index<<6) | (dw<<3);
				read_dcache_data(cmd);
				isb(); dsb();
				val = get_data0() & 0xFFFFFFFF;
				isb(); dsb();
				cmd = get_data1() & 0xFFFFFFFF;
				isb(); dsb();
				val = val | (cmd << 32);
				l1d[i++] = val;
				isb(); dsb();
			}
		}
	}

	Xil_DCacheDisable();

    while(1) {}

	val = 0;
    while(1) {
		for (int i=0; i<MEGA; i++) {
			ptr[i] = i;
		}
    }

    while (1) {}
    cleanup_platform();
    return 0;
}
