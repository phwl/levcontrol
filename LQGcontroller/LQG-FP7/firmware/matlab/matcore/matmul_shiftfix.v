/*******************************************************************************

    matmul_shiftfix.v
    =================

    A dynamically generted matrix multiplication module with given fixed point
    data types in combination with manual shifting factors. This implementation
    enables quasi-floating-point scaling of the LHS matrix factors which greatly
    improves the numerical accuracy of this matrix multiplication compared to
    conventional implementations.

    Copyright (c) 2025 J. Berndorfer
    ACIN, Automation and Control Institute, TU Wien
    Gußhausstraße 27-29, 1040 Wien, Austria

    All rights reserved.

*******************************************************************************/

// Matrix Multiplier, fixed point, with shifted scaling.

`include "fixpt_helpers.v"
`include "barrel_shifter.v"

// -----------------------------------------------------------------------------

module matmul_shiftfix #(
    parameter LMAT_ROWS = 2,
    parameter LMAT_COLS = 2,

    parameter RMAT_ROWS = 2,
    parameter RMAT_COLS = 1,

    parameter OMAT_ROWS = 2,
    parameter OMAT_COLS = 1,

    parameter LMAT_RESIDUE_WIDTH = 18,
    parameter LMAT_RESIDUE_BINPT = 15,
    parameter LMAT_SHIFT_BITS = 5,
    parameter RMAT_WIDTH = 25,
    parameter RMAT_BINPT = 22,
    parameter OMAT_WIDTH = 43,
    parameter OMAT_BINPT = 37,

    parameter TESTPOINT_WIDTH = LMAT_RESIDUE_WIDTH + RMAT_WIDTH
) (
    input clk,
    input ce,

    input signed [(LMAT_RESIDUE_WIDTH * LMAT_ROWS * LMAT_COLS)-1:0] lmat_residue,
    input [(LMAT_SHIFT_BITS * LMAT_ROWS * LMAT_COLS)-1:0] lmat_shift,
    input signed [(RMAT_WIDTH * RMAT_ROWS * RMAT_COLS)-1:0] rmat,

    output /*reg*/ signed [(OMAT_WIDTH * OMAT_ROWS * OMAT_COLS)-1:0] res
);

// Unpacked in/out matrices from row major repr to 2D array.
wire signed [LMAT_RESIDUE_WIDTH-1:0] lmat_residue_unpacked [LMAT_ROWS-1:0][LMAT_COLS-1:0];
wire [LMAT_SHIFT_BITS-1:0] lmat_shift_unpacked [LMAT_ROWS-1:0][LMAT_COLS-1:0];
wire signed [RMAT_WIDTH-1:0] rmat_unpacked [RMAT_ROWS-1:0][RMAT_COLS-1:0];
wire signed [OMAT_WIDTH-1:0] omat_unpacked [OMAT_ROWS-1:0][OMAT_COLS-1:0];
wire signed [(OMAT_WIDTH * OMAT_ROWS * OMAT_COLS)-1:0] omat_packed;

genvar i, j, k;

generate
    // Unpack lmat_residue
    for (i = 0; i < LMAT_ROWS; i = i + 1) begin
        for (j = 0; j < LMAT_COLS; j = j + 1) begin
            assign lmat_residue_unpacked[i][j] = lmat_residue[(i * LMAT_COLS + j) * LMAT_RESIDUE_WIDTH +: LMAT_RESIDUE_WIDTH];
        end
    end

    // Unpack lmat_shift
    for (i = 0; i < LMAT_ROWS; i = i + 1) begin
        for (j = 0; j < LMAT_COLS; j = j + 1) begin
            assign lmat_shift_unpacked[i][j] = lmat_shift[(i * LMAT_COLS + j) * LMAT_SHIFT_BITS +: LMAT_SHIFT_BITS];
        end
    end

    // Unpack rmat
    for (i = 0; i < RMAT_ROWS; i = i + 1) begin
        for (j = 0; j < RMAT_COLS; j = j + 1) begin
            assign rmat_unpacked[i][j] = rmat[(i * RMAT_COLS + j) * RMAT_WIDTH +: RMAT_WIDTH];
        end
    end

    // Repack omat
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            assign omat_packed[(i * OMAT_COLS + j) * OMAT_WIDTH +: OMAT_WIDTH] = omat_unpacked[i][j];
        end
    end
endgenerate

localparam NUMBER_SUM_ELEMENTS = LMAT_COLS;
localparam MUL_WIDTH = LMAT_RESIDUE_WIDTH + RMAT_WIDTH;
localparam MUL_BINPT = LMAT_RESIDUE_BINPT + RMAT_BINPT;

wire signed [MUL_WIDTH-1:0] mul_result [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [MUL_WIDTH-1:0] shift_result [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [OMAT_WIDTH-1:0] shift_casted [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [OMAT_WIDTH-1:0] sum_resuts [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];

generate

    // Do multiplication step.
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            for (k = 0; k < NUMBER_SUM_ELEMENTS; k = k + 1) begin
                // Multiply the k'th elment of the i'th row of lmat_residue with
                // the same element of j'th column of rmat.
                `FIXPT_MULTIPLY_INLINE(
                    mul, LMAT_RESIDUE_WIDTH, RMAT_WIDTH,
                    lmat_residue_unpacked[i][k], rmat_unpacked[k][j], mul_result[i][j][k]
                );

                // Shift the casted multiplication result by the shift amount.
                arithmetic_right_shift #(
                    .A_WIDTH(MUL_WIDTH),
                    .SHIFT_WIDTH(LMAT_SHIFT_BITS)
                ) shift_mul (
                    .a(mul_result[i][j][k]),
                    .shift(lmat_shift_unpacked[i][k]),
                    .shifted(shift_result[i][j][k])
                );

                // Cast the multiplication result into the output datatype.
                `FIXPT_CAST_INLINE(cast_mul, MUL_WIDTH, MUL_BINPT, 1, OMAT_WIDTH, OMAT_BINPT, 1, shift_result[i][j][k], shift_casted[i][j][k]);
            end
        end
    end

    // Do adding step.
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            assign sum_resuts[i][j][0] = shift_casted[i][j][0];

            for (k = 0; k < NUMBER_SUM_ELEMENTS-1; k = k + 1) begin
                wire signed [OMAT_WIDTH:0] sum_temp = sum_resuts[i][j][k] + shift_casted[i][j][k+1];
                assign sum_resuts[i][j][k+1] = sum_temp[OMAT_WIDTH-1:0];
            end

            assign omat_unpacked[i][j] = sum_resuts[i][j][NUMBER_SUM_ELEMENTS-1];
        end
    end

endgenerate

assign res = omat_packed;

endmodule

// -----------------------------------------------------------------------------


module matmul_shiftfix_bidir #(
    parameter LMAT_ROWS = 2,
    parameter LMAT_COLS = 2,

    parameter RMAT_ROWS = 2,
    parameter RMAT_COLS = 1,

    parameter OMAT_ROWS = 2,
    parameter OMAT_COLS = 1,

    parameter LMAT_RESIDUE_WIDTH = 18,
    parameter LMAT_RESIDUE_BINPT = 15,
    parameter LMAT_SHIFT_BITS = 5,
    parameter RMAT_WIDTH = 25,
    parameter RMAT_BINPT = 22,
    parameter OMAT_WIDTH = 43,
    parameter OMAT_BINPT = 37,

    parameter TESTPOINT_WIDTH = LMAT_RESIDUE_WIDTH + RMAT_WIDTH
) (
    input clk,
    input ce,

    input signed [(LMAT_RESIDUE_WIDTH * LMAT_ROWS * LMAT_COLS)-1:0] lmat_residue,
    input signed [(LMAT_SHIFT_BITS * LMAT_ROWS * LMAT_COLS)-1:0] lmat_shift,
    input signed [(RMAT_WIDTH * RMAT_ROWS * RMAT_COLS)-1:0] rmat,

    output /*reg*/ signed [(OMAT_WIDTH * OMAT_ROWS * OMAT_COLS)-1:0] res
);

// Unpacked in/out matrices from row major repr to 2D array.
wire signed [LMAT_RESIDUE_WIDTH-1:0] lmat_residue_unpacked [LMAT_ROWS-1:0][LMAT_COLS-1:0];
wire signed [LMAT_SHIFT_BITS-1:0] lmat_shift_unpacked [LMAT_ROWS-1:0][LMAT_COLS-1:0];
wire signed [RMAT_WIDTH-1:0] rmat_unpacked [RMAT_ROWS-1:0][RMAT_COLS-1:0];
wire signed [OMAT_WIDTH-1:0] omat_unpacked [OMAT_ROWS-1:0][OMAT_COLS-1:0];
wire signed [(OMAT_WIDTH * OMAT_ROWS * OMAT_COLS)-1:0] omat_packed;

genvar i, j, k;

generate
    // Unpack lmat_residue
    for (i = 0; i < LMAT_ROWS; i = i + 1) begin
        for (j = 0; j < LMAT_COLS; j = j + 1) begin
            assign lmat_residue_unpacked[i][j] = lmat_residue[(i * LMAT_COLS + j) * LMAT_RESIDUE_WIDTH +: LMAT_RESIDUE_WIDTH];
        end
    end

    // Unpack lmat_shift
    for (i = 0; i < LMAT_ROWS; i = i + 1) begin
        for (j = 0; j < LMAT_COLS; j = j + 1) begin
            assign lmat_shift_unpacked[i][j] = lmat_shift[(i * LMAT_COLS + j) * LMAT_SHIFT_BITS +: LMAT_SHIFT_BITS];
        end
    end

    // Unpack rmat
    for (i = 0; i < RMAT_ROWS; i = i + 1) begin
        for (j = 0; j < RMAT_COLS; j = j + 1) begin
            assign rmat_unpacked[i][j] = rmat[(i * RMAT_COLS + j) * RMAT_WIDTH +: RMAT_WIDTH];
        end
    end

    // Repack omat
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            assign omat_packed[(i * OMAT_COLS + j) * OMAT_WIDTH +: OMAT_WIDTH] = omat_unpacked[i][j];
        end
    end
endgenerate

localparam NUMBER_SUM_ELEMENTS = LMAT_COLS;
localparam MUL_WIDTH = LMAT_RESIDUE_WIDTH + RMAT_WIDTH;
localparam MUL_BINPT = LMAT_RESIDUE_BINPT + RMAT_BINPT;

wire signed [MUL_WIDTH-1:0] mul_result [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [MUL_WIDTH-1:0] shift_result [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [OMAT_WIDTH-1:0] shift_casted [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];
wire signed [OMAT_WIDTH-1:0] sum_resuts [OMAT_ROWS-1:0][OMAT_COLS-1:0][NUMBER_SUM_ELEMENTS-1:0];

generate

    // Do multiplication step.
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            for (k = 0; k < NUMBER_SUM_ELEMENTS; k = k + 1) begin
                // Multiply the k'th elment of the i'th row of lmat_residue with
                // the same element of j'th column of rmat.
                `FIXPT_MULTIPLY_INLINE(
                    mul, LMAT_RESIDUE_WIDTH, RMAT_WIDTH,
                    lmat_residue_unpacked[i][k], rmat_unpacked[k][j], mul_result[i][j][k]
                );

                // Shift the casted multiplication result by the shift amount.
                arithmetic_shift_bidir #(
                    .A_WIDTH(MUL_WIDTH),
                    .SHIFT_WIDTH(LMAT_SHIFT_BITS)
                ) shift_mul (
                    .a(mul_result[i][j][k]),
                    .shift(lmat_shift_unpacked[i][k]),
                    .shifted(shift_result[i][j][k])
                );

                // Cast the multiplication result into the output datatype.
                `FIXPT_CAST_INLINE(cast_mul, MUL_WIDTH, MUL_BINPT, 1, OMAT_WIDTH, OMAT_BINPT, 1, shift_result[i][j][k], shift_casted[i][j][k]);
            end
        end
    end

    // Do adding step.
    for (i = 0; i < OMAT_ROWS; i = i + 1) begin
        for (j = 0; j < OMAT_COLS; j = j + 1) begin
            assign sum_resuts[i][j][0] = shift_casted[i][j][0];

            for (k = 0; k < NUMBER_SUM_ELEMENTS-1; k = k + 1) begin
                wire signed [OMAT_WIDTH:0] sum_temp = sum_resuts[i][j][k] + shift_casted[i][j][k+1];
                assign sum_resuts[i][j][k+1] = sum_temp[OMAT_WIDTH-1:0];
            end

            assign omat_unpacked[i][j] = sum_resuts[i][j][NUMBER_SUM_ELEMENTS-1];
        end
    end

endgenerate

assign res = omat_packed;

endmodule