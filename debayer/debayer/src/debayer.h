/**
 * @file debayer.h
 * @author Stavros Avramidis (stavros9899@gmail.com)
 * @brief A simple debayering algorithm for Bayer images in GBRG firmat
 * .
 * @version 0.1
 * @date 2024-05-08
 *
 * @copyright Copyright (c) 2024
 *
 */

#pragma once

#include <inttypes.h>

/**
 * @brief Computes the debayering of a Bayer image in the format GBRG. Assumes the matrix is zero
 * padded on all 4 sides.
 *
 * @param src
 * @param red
 * @param green
 * @param blue
 * @param img_width
 * @param img_height
 */
void debayer(uint8_t *const src, uint8_t *const red, uint8_t *const green, uint8_t *const blue, const int img_width, const int img_height)
{

    unsigned dst_index = 0;
    for (int i = 1; i < img_height - 1; i++) {

        for (int j = 1; j < img_width - 1; j++) {

            const uint16_t TOP = src[(i - 1) * img_width + j];
            const uint16_t TOP_LEFT = src[(i - 1) * img_width + j - 1];
            const uint16_t TOP_RIGHT = src[(i - 1) * img_width + j + 1];

            const uint16_t LEFT = src[i * img_width + j - 1];
            const uint16_t RIGHT = src[i * img_width + j + 1];

            const uint16_t BOTTOM = src[(i + 1) * img_width + j];
            const uint16_t BOTTOM_LEFT = src[(i + 1) * img_width + j - 1];
            const uint16_t BOTTOM_RIGHT = src[(i + 1) * img_width + j + 1];


            // GREEN-1
            if (i % 2 == 1 && j % 2 == 1) {
                green[dst_index] = src[i * img_width + j];
                red[dst_index] = (TOP + BOTTOM) / 2;
                blue[dst_index] = (LEFT + RIGHT) / 2;
            }
            // BLUE
            else if (i % 2 == 1 && j % 2 == 0) {
                blue[dst_index] = src[i * img_width + j];
                red[dst_index] = (TOP_LEFT + TOP_RIGHT + BOTTOM_LEFT + BOTTOM_RIGHT) / 4;
                green[dst_index] = (TOP + BOTTOM + LEFT + RIGHT) / 4;
            }
            // RED
            else if (i % 2 == 0 && j % 2 == 1) {
                red[dst_index] = src[i * img_width + j];
                blue[dst_index] = (TOP_LEFT + TOP_RIGHT + BOTTOM_LEFT + BOTTOM_RIGHT) / 4;
                green[dst_index] = (TOP + BOTTOM + LEFT + RIGHT) / 4;
            }
            // GREEN-2
            else {
                green[dst_index] = src[i * img_width + j];
                blue[dst_index] = (TOP + BOTTOM) / 2;
                red[dst_index] = (LEFT + RIGHT) / 2;
            }

            dst_index += 1;
        }
    }
}
