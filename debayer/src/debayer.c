#include <arm_neon.h>
#include <inttypes.h>
#include "xil_types.h"
#include "xtime_l.h"
/**
 * @brief GBRG image debayering algorithm implementation with NEON64 SIMD
 */
void debayer_neon64(uint8_t *src, int width, int height, uint8_t *red, uint8_t *green, uint8_t *blue)
{
    for (int j = 1; j < width - 1; j += 32) {
        uint8x16x2_t previous_GB_row = vld2q_u8(&src[width + j]);
        uint8x16x2_t previous_RG_row = {vdupq_n_u8(0), vdupq_n_u8(0)};

        // loop over 2 rows at once in a 2x16 matrix in a top-down right-left fashion
        // caches the previous 2 rows of the image
        for (int i = 1; i < height - 1; i += 2) {

            uint8x16x2_t reds, greens, blues; // result variables (interleaved by 2 values - store with vst2_u8 )

            // Load 2-lane interleaved data of the 2 next rows
            uint8x16x2_t GB_row = previous_GB_row;
            uint8x16x2_t RG_row = vld2q_u8(&src[(i + 1) * width + j]); // will treat it as next_RG_row in BG row calculations

            /* ********************
             * GB row calculations
             **********************/
            const uint8x16_t cur_greens0 = GB_row.val[0];
            const uint8x16_t cur_blues = GB_row.val[1];
            const uint8x16_t up_greens0 = previous_RG_row.val[0];
            const uint8x16_t down_greens0 = RG_row.val[1];

            /* Calculate Greens */
            greens.val[0] = cur_greens0;                                             // odd column greens are copied to results

            uint8x16_t greens0_right = vextq_u8(greens.val[0], greens.val[0], 1);      // Shift one lane left (second argument is dummy here)
            greens0_right = vsetq_lane_u8(src[i * width + j + 32], greens0_right, 7); // set last element of the row
            greens.val[1] = vhaddq_u8(vhaddq_u8(up_greens0, down_greens0), vhaddq_u8(greens.val[0], greens0_right));

            /* Calculate Blues */
            blues.val[1] = cur_blues;                                         // even column blues are copied to results

            uint8x16_t blues_left = vextq_u8(blues.val[1], blues.val[1], 7);    // Shift one lane right (second argument is dummy here)
            blues_left = vsetq_lane_u8(src[i * width + j - 2], blues_left, 0); // set first element of the row
            blues.val[0] = vhaddq_u8(blues_left, blues.val[1]);

            /*Calculate Reds */
            const uint8x16_t reds_hsum = vhaddq_u8(previous_RG_row.val[0], RG_row.val[0]);

            uint8x16_t reds_hsum_left = vextq_u8(reds_hsum, reds_hsum, 1);
            reds_hsum_left =
                vsetq_lane_u8(((uint16_t)src[(i - 1) * width + j + 32] + (uint16_t)src[(i + 1) * width + j + 32]) >> 1u, reds_hsum_left, 7);

            reds.val[0] = reds_hsum;
            reds.val[1] = vhaddq_u8(reds_hsum_left, reds_hsum);

            // Store results
            vst2q_u8(&green[(i - 1) * (width - 2) + j - 1], greens);
            vst2q_u8(&blue[(i - 1) * (width - 2) + j - 1], blues);
            vst2q_u8(&red[(i - 1) * (width - 2) + j - 1], reds);

            /* ********************
             * RG row calculations
             **********************/

            const uint8x16x2_t next_GB_row = vld2q_u8(&src[(i + 2) * width + j]);
            const uint8x16_t   cur_greens1 = RG_row.val[1];
            const uint8x16_t   cur_reds = RG_row.val[0];
            const uint8x16_t   up_greens1 = GB_row.val[0];
            const uint8x16_t   down_greens1 = next_GB_row.val[0];

            // Calculate Green
            greens.val[1] = cur_greens1;                                                // even column greens are copied to results

            uint8x16_t greens1_left = vextq_u8(cur_greens1, cur_greens1, 7);              // Shift one lane right (second argument is dummy here)
            greens1_left = vsetq_lane_u8(src[(i + 1) * width + j - 2], greens1_left, 0); // set first element of the row

            greens.val[0] = vhaddq_u8(vhaddq_u8(up_greens1, down_greens1), vhaddq_u8(cur_greens1, greens1_left));

            // Calcute Red
            uint8x16_t red_right = vextq_u8(cur_reds, cur_reds, 1);                  // Shift one lane right (second argument is dummy here)
            red_right = vsetq_lane_u8(src[(i + 1) * width + j + 32], red_right, 7); // set first element of the row

            reds.val[0] = cur_reds;                                                // even column blues are copied to results
            reds.val[1] = vhaddq_u8(red_right, cur_reds);

            // Calcuate Blue
            const uint8x16_t blues_hsum = vhaddq_u8(GB_row.val[1], next_GB_row.val[0]);

            uint8x16_t blues_hsum_left = vextq_u8(blues_hsum, blues_hsum, 7);
            blues_hsum_left = vsetq_lane_u8(((uint16_t)src[i * width + j - 2] + (uint16_t)src[(i + 2) * width + j - 2]) >> 1u, blues_hsum_left, 0);

            blues.val[0] = vhaddq_u8(blues_hsum_left, blues_hsum);
            blues.val[1] = blues_hsum;

            // Store results
            vst2q_u8(&green[i * (width - 2) + j - 1], greens);
            vst2q_u8(&blue[i * (width - 2) + j - 1], blues);
            vst2q_u8(&red[i * (width - 2) + j - 1], reds);

            previous_GB_row = next_GB_row;
            previous_RG_row = RG_row;
        }
    }
}

#include "debayer.h"
#include <stdio.h>
#include <time.h>

#define X 128
#define Y 128

#define X_STRIDE (X + 2)
#define Y_STRIDE (Y + 2)

double clock() {
	u64 ullCntValue2;
	XTime_GetTime(&ullCntValue2);
	return((double)ullCntValue2 / XPAR_CPU_CORTEXA53_0_TIMESTAMP_CLK_FREQ / 1000000.0 * CLOCKS_PER_SEC);
}

int main()
{
    static uint8_t src[X_STRIDE * Y_STRIDE] = {0};

    static uint8_t red[X * Y] = {0};
    static uint8_t green[X * Y] = {0};
    static uint8_t blue[X * Y] = {0};

    const int REPETITIONS = 1000;

    // uint8_t temp = 1;
    // for (int i = 1; i < Y + 1; i++)
    //     for (int j = 1; j < X + 1; j++)
    //         src[i * X_STRIDE + j] = temp++;

    clock_t start, end;
    double  cpu_time_used;

    // warm up
    for (int i = 0; i < 10; i++) {

        debayer_neon64(src, X_STRIDE, Y_STRIDE, red, green, blue);
    }

    start = clock();
    for (int i = 0; i < REPETITIONS; i++) {

        debayer_neon64(src, X_STRIDE, Y_STRIDE, red, green, blue);
    }
    end = clock();

    cpu_time_used = ((double)(end - start) * 1000000.0) / CLOCKS_PER_SEC;

    printf("NEON time:    %10.f [ms]\n", cpu_time_used);

    for (int i = 0; i < 10; i++) {
        debayer(src, red, green, blue, X_STRIDE, Y_STRIDE);
    }

    start = clock();
    for (int i = 0; i < REPETITIONS; i++) {
        debayer(src, red, green, blue, X_STRIDE, Y_STRIDE);
    }
    end = clock();
    cpu_time_used = ((double)(end - start) * 1000000.0) / CLOCKS_PER_SEC;

    printf("Scallar time: %10.f [ms]\n", cpu_time_used);

    return 0;
}
