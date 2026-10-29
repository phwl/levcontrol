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


// -----------------------------------------------------------------------------
// Cast fixpoint datatypes
// -----------------------------------------------------------------------------

`define FIXPT_CAST_INLINE(_name, _IN_WIDTH, _IN_BINPT, _IN_SIGNED, _OUT_WIDTH, _OUT_BINPT, _OUT_SIGNED, _in, _out) \
    fixpt_cast #( \
        .IN_WIDTH(_IN_WIDTH), \
        .IN_BINPT(_IN_BINPT), \
        .IN_SIGNED(_IN_SIGNED), \
        .OUT_WIDTH(_OUT_WIDTH), \
        .OUT_BINPT(_OUT_BINPT), \
        .OUT_SIGNED(_OUT_SIGNED) \
    ) ``_name ( \
        .in(_in), \
        .out(_out) \
    )

module fixpt_cast #(
    parameter IN_WIDTH = 16,
    parameter IN_BINPT = 15,
    parameter IN_SIGNED = 1,
    parameter OUT_WIDTH = 32,
    parameter OUT_BINPT = 15,
    parameter OUT_SIGNED = 1
) (
    input [IN_WIDTH-1:0] in,
    output [OUT_WIDTH-1:0] out
);

localparam IN_INT_WIDTH = IN_WIDTH - IN_BINPT - IN_SIGNED;
localparam OUT_INT_WIDTH = OUT_WIDTH - OUT_BINPT - OUT_SIGNED;

generate

if (IN_SIGNED && OUT_SIGNED) begin
    // If in and out are signed, copy the sign bit
    assign out[OUT_WIDTH-1] = in[IN_WIDTH-1];
end else if (!IN_SIGNED && OUT_SIGNED) begin
    // If only output is signed, sign of output is 0 (positive)
    assign out[OUT_WIDTH-1] = 1'b0;
end

// Fractional part
if (OUT_BINPT > 0) begin
    if (IN_BINPT >= OUT_BINPT) begin
        assign out[OUT_BINPT-1:0] = in[IN_BINPT-1:IN_BINPT-OUT_BINPT];
    end else begin
        // Zero-pad needed.
        assign out[OUT_BINPT-1:0] = {in[IN_BINPT-1:0], {OUT_BINPT-IN_BINPT{1'b0}}};
    end
end

// Integer part.
if (OUT_INT_WIDTH > 0) begin
    if (OUT_INT_WIDTH <= IN_INT_WIDTH) begin
        assign out[OUT_BINPT +: OUT_INT_WIDTH] = in[IN_BINPT +: OUT_INT_WIDTH];
    end else begin
        // Zero-pad on MSBs of output is needed.
        assign out[OUT_BINPT +: OUT_INT_WIDTH] = {{OUT_INT_WIDTH-IN_INT_WIDTH{1'b0}}, in[IN_BINPT +: IN_INT_WIDTH]};
    end
end

endgenerate

endmodule

// -----------------------------------------------------------------------------
// Cast fixpoint datatypes with saturation clamping
// -----------------------------------------------------------------------------

`define FIXPT_CAST_CLAMPED_INLINE(_name, _IN_WIDTH, _IN_BINPT, _IN_SIGNED, _OUT_WIDTH, _OUT_BINPT, _OUT_SIGNED, _in, _out) \
    fixpt_cast_clamped #( \
        .IN_WIDTH(_IN_WIDTH), \
        .IN_BINPT(_IN_BINPT), \
        .IN_SIGNED(_IN_SIGNED), \
        .OUT_WIDTH(_OUT_WIDTH), \
        .OUT_BINPT(_OUT_BINPT), \
        .OUT_SIGNED(_OUT_SIGNED) \
    ) ``_name ( \
        .in(_in), \
        .out(_out) \
    )

module fixpt_cast_clamped #(
    parameter IN_WIDTH = 16,
    parameter IN_BINPT = 15,
    parameter IN_SIGNED = 1,
    parameter OUT_WIDTH = 32,
    parameter OUT_BINPT = 15,
    parameter OUT_SIGNED = 1
) (
    input [IN_WIDTH-1:0] in,
    output reg [OUT_WIDTH-1:0] out
);

localparam integer IN_INT_WIDTH  = IN_WIDTH  - IN_BINPT  - IN_SIGNED;
localparam integer OUT_INT_WIDTH = OUT_WIDTH - OUT_BINPT - OUT_SIGNED;

// Compare everything in a common fixed-point scale
localparam integer COMMON_BINPT   = (IN_BINPT > OUT_BINPT) ? IN_BINPT : OUT_BINPT;
localparam integer IN_ALIGN_SHIFT = COMMON_BINPT - IN_BINPT;
localparam integer OUT_ALIGN_SHIFT= COMMON_BINPT - OUT_BINPT;

// Extra bit for safe signed compare
localparam integer IN_CMP_WIDTH   = IN_WIDTH  + IN_ALIGN_SHIFT  + 1;
localparam integer OUT_CMP_WIDTH  = OUT_WIDTH + OUT_ALIGN_SHIFT + 1;
localparam integer CMP_WIDTH      = (IN_CMP_WIDTH > OUT_CMP_WIDTH) ? IN_CMP_WIDTH : OUT_CMP_WIDTH;

// Raw min/max encodings of the output datatype
localparam [OUT_WIDTH-1:0] OUT_MAX_RAW =
    OUT_SIGNED ? {1'b0, {(OUT_WIDTH-1){1'b1}}}
               : {OUT_WIDTH{1'b1}};

localparam [OUT_WIDTH-1:0] OUT_MIN_RAW =
    OUT_SIGNED ? {1'b1, {(OUT_WIDTH-1){1'b0}}}
               : {OUT_WIDTH{1'b0}};

// Input value, interpreted numerically, aligned to COMMON_BINPT
wire signed [CMP_WIDTH-1:0] in_ext =
    IN_SIGNED
        ? $signed({{(CMP_WIDTH-IN_WIDTH){in[IN_WIDTH-1]}}, in})
        : $signed({{(CMP_WIDTH-IN_WIDTH){1'b0}}, in});

wire signed [CMP_WIDTH-1:0] in_value = in_ext <<< IN_ALIGN_SHIFT;

// Output min/max, interpreted numerically, aligned to COMMON_BINPT
wire signed [CMP_WIDTH-1:0] out_max_ext =
    OUT_SIGNED
        ? $signed({{(CMP_WIDTH-OUT_WIDTH){OUT_MAX_RAW[OUT_WIDTH-1]}}, OUT_MAX_RAW})
        : $signed({{(CMP_WIDTH-OUT_WIDTH){1'b0}}, OUT_MAX_RAW});

wire signed [CMP_WIDTH-1:0] out_min_ext =
    OUT_SIGNED
        ? $signed({{(CMP_WIDTH-OUT_WIDTH){OUT_MIN_RAW[OUT_WIDTH-1]}}, OUT_MIN_RAW})
        : $signed({{(CMP_WIDTH-OUT_WIDTH){1'b0}}, OUT_MIN_RAW});

wire signed [CMP_WIDTH-1:0] out_max_value = out_max_ext <<< OUT_ALIGN_SHIFT;
wire signed [CMP_WIDTH-1:0] out_min_value = out_min_ext <<< OUT_ALIGN_SHIFT;

// Your current "in-range" behavior, unchanged
reg [OUT_WIDTH-1:0] out_nonsat;

always @* begin
    out_nonsat = {OUT_WIDTH{1'b0}};

    // Sign bit handling (kept exactly as in your current code)
    if (IN_SIGNED && OUT_SIGNED) begin
        out_nonsat[OUT_WIDTH-1] = in[IN_WIDTH-1];
    end else if (!IN_SIGNED && OUT_SIGNED) begin
        out_nonsat[OUT_WIDTH-1] = 1'b0;
    end

    // Fractional part
    if (OUT_BINPT > 0) begin
        if (IN_BINPT >= OUT_BINPT) begin
            out_nonsat[OUT_BINPT-1:0] = in[IN_BINPT-1:IN_BINPT-OUT_BINPT];
        end else begin
            if (IN_BINPT > 0)
                out_nonsat[OUT_BINPT-1:0] = {in[IN_BINPT-1:0], {(OUT_BINPT-IN_BINPT){1'b0}}};
            else
                out_nonsat[OUT_BINPT-1:0] = {OUT_BINPT{1'b0}};
        end
    end

    // Integer part
    if (OUT_INT_WIDTH > 0) begin
        if (OUT_INT_WIDTH <= IN_INT_WIDTH) begin
            out_nonsat[OUT_BINPT +: OUT_INT_WIDTH] = in[IN_BINPT +: OUT_INT_WIDTH];
        end else begin
            if (IN_INT_WIDTH > 0)
                out_nonsat[OUT_BINPT +: OUT_INT_WIDTH] =
                    {{(OUT_INT_WIDTH-IN_INT_WIDTH){1'b0}}, in[IN_BINPT +: IN_INT_WIDTH]};
            else
                out_nonsat[OUT_BINPT +: OUT_INT_WIDTH] = {OUT_INT_WIDTH{1'b0}};
        end
    end

    // Saturate only when out of range
    if (in_value > out_max_value)
        out = OUT_MAX_RAW;
    else if (in_value < out_min_value)
        out = OUT_MIN_RAW;
    else
        out = out_nonsat;
end

endmodule

// -----------------------------------------------------------------------------
// Add two fixpoint numbers
// -----------------------------------------------------------------------------

`define FIXPT_ADD_INLINE(_name, _A_WIDTH, _B_WIDTH, _a, _b, _sum) \
    fixpt_adder #( \
        .A_WIDTH(_A_WIDTH), \
        .B_WIDTH(_B_WIDTH) \
    ) ``_name ( \
        .a(_a), \
        .b(_b), \
        .sum(_sum) \
    )

// Wrapper for adding two fixpoint numbers together.
module fixpt_adder #(
    parameter A_WIDTH = 16,
    parameter B_WIDTH = 16,
    localparam O_WIDTH = A_WIDTH > B_WIDTH ? A_WIDTH : B_WIDTH
) (
    input signed [A_WIDTH-1:0] a,
    input signed [B_WIDTH-1:0] b,
    output signed [O_WIDTH-1:0] sum
);

assign sum = a + b;

endmodule

// -----------------------------------------------------------------------------
// Add two fixpoint numbers (with saturation clamping)
// -----------------------------------------------------------------------------

`define FIXPT_ADD_CLAMPED_INLINE(_name, _A_WIDTH, _B_WIDTH, _a, _b, _sum) \
    fixpt_adder_clamped #( \
        .A_WIDTH(_A_WIDTH), \
        .B_WIDTH(_B_WIDTH) \
    ) ``_name ( \
        .a(_a), \
        .b(_b), \
        .sum(_sum) \
    )

module fixpt_adder_clamped #(
    parameter A_WIDTH = 16,
    parameter B_WIDTH = 16,
    localparam O_WIDTH = A_WIDTH > B_WIDTH ? A_WIDTH : B_WIDTH
) (
    input signed [A_WIDTH-1:0] a,
    input signed [B_WIDTH-1:0] b,
    output signed [O_WIDTH-1:0] sum
);

localparam W = (A_WIDTH > B_WIDTH ? A_WIDTH : B_WIDTH) + 1;

wire signed [W-1:0] a_ext = {{W-A_WIDTH{a[A_WIDTH-1]}}, a};
wire signed [W-1:0] b_ext = {{W-B_WIDTH{b[B_WIDTH-1]}}, b};
wire signed [W-1:0] full_sum = a_ext + b_ext;

localparam signed [O_WIDTH-1:0] SAT_MAX = {1'b0, {(O_WIDTH-1){1'b1}}};
localparam signed [O_WIDTH-1:0] SAT_MIN = {1'b1, {(O_WIDTH-1){1'b0}}};

wire signed [W-1:0] SAT_MAX_EXT = {{W-O_WIDTH{SAT_MAX[O_WIDTH-1]}}, SAT_MAX};
wire signed [W-1:0] SAT_MIN_EXT = {{W-O_WIDTH{SAT_MIN[O_WIDTH-1]}}, SAT_MIN};

assign sum = (full_sum > SAT_MAX_EXT) ? SAT_MAX :
             (full_sum < SAT_MIN_EXT) ? SAT_MIN :
             full_sum[O_WIDTH-1:0];

endmodule

// -----------------------------------------------------------------------------
// Multiply two fixpoint numbers
// -----------------------------------------------------------------------------

`define FIXPT_MULTIPLY_INLINE(_name, _A_WIDTH, _B_WIDTH, _a, _b, _prod) \
    fixpt_multiplier #( \
        .A_WIDTH(_A_WIDTH), \
        .B_WIDTH(_B_WIDTH) \
    ) ``_name ( \
        .a(_a), \
        .b(_b), \
        .prod(_prod) \
    )

module fixpt_multiplier #(
    parameter A_WIDTH = 16,
    parameter B_WIDTH = 16,
    parameter O_WIDTH = A_WIDTH+B_WIDTH
) (
    input signed [A_WIDTH-1:0] a,
    input signed [B_WIDTH-1:0] b,
    output signed [O_WIDTH-1:0] prod
);

assign prod = a * b;

endmodule

module arithmetic_shift_bidir #(
    parameter A_WIDTH = 16,
    parameter SHIFT_WIDTH = 5
) (
    input [A_WIDTH-1:0] a,
    input signed [SHIFT_WIDTH-1:0] shift,
    output [A_WIDTH-1:0] shifted
);

wire shift_is_left = shift < 0;
wire [SHIFT_WIDTH-1:0] shift_amt = shift_is_left ? -shift : shift;

wire [A_WIDTH-1:0] shifted_right;
wire [A_WIDTH-1:0] shifted_left;

arithmetic_right_shift #(
    .A_WIDTH(A_WIDTH),
    .SHIFT_WIDTH(SHIFT_WIDTH-1)
) right_shifter (
    .a(a),
    .shift(shift_amt[SHIFT_WIDTH-2:0]),
    .shifted(shifted_right)
);

arithmetic_left_shift_clamped #(
    .A_WIDTH(A_WIDTH),
    .SHIFT_WIDTH(SHIFT_WIDTH-1)
) left_shifter (
    .a(a),
    .shift(shift_amt[SHIFT_WIDTH-2:0]),
    .shifted(shifted_left)
);

assign shifted = shift_is_left ? shifted_left : shifted_right;

endmodule

// -----------------------------------------------------------------------------

module arithmetic_right_shift #(
    parameter A_WIDTH = 16,
    parameter SHIFT_WIDTH = 5
) (
    input [A_WIDTH-1:0] a,
    input [SHIFT_WIDTH-1:0] shift,
    output [A_WIDTH-1:0] shifted
);

genvar i;
wire [A_WIDTH-1:0] stages [SHIFT_WIDTH:0];

assign stages[0] = a;

generate
    for (i = 0; i < SHIFT_WIDTH; i = i + 1) begin
        assign stages[i+1] = shift[i] ? { {2**i{stages[i][A_WIDTH-1]}}, stages[i][A_WIDTH-1:2**i]} : stages[i];
    end
endgenerate

assign shifted = stages[SHIFT_WIDTH];

endmodule

// -----------------------------------------------------------------------------

module arithmetic_left_shift_clamped #(
    parameter A_WIDTH = 16,
    parameter SHIFT_WIDTH = 5
) (
    input [A_WIDTH-1:0] a,
    input [SHIFT_WIDTH-1:0] shift,
    output [A_WIDTH-1:0] shifted
);

genvar i;

wire signed [A_WIDTH-1:0] stages [SHIFT_WIDTH:0];

localparam signed [A_WIDTH-1:0] MAX_VAL = {1'b0, {A_WIDTH-1{1'b1}}};
localparam signed [A_WIDTH-1:0] MIN_VAL = {1'b1, {A_WIDTH-1{1'b0}}};

assign stages[0] = a;

generate
    for (i = 0; i < SHIFT_WIDTH; i = i + 1) begin : gen_shift_stage
        localparam integer SH = (1 << i);

        if (SH < A_WIDTH) begin : gen_small_shift
            wire overflow;

            // Overflow if the bits that would be shifted out are not all equal
            // to the sign bit of the value after shifting.
            assign overflow =
                |(stages[i][A_WIDTH-1:A_WIDTH-SH] ^ {SH{stages[i][A_WIDTH-1-SH]}});

            assign stages[i+1] =
                shift[i]
                    ? (overflow
                        ? (stages[i][A_WIDTH-1] ? MIN_VAL : MAX_VAL)
                        : {stages[i][A_WIDTH-1-SH:0], {SH{1'b0}}})
                    : stages[i];
        end
        else begin : gen_large_shift
            // Shifting by >= width:
            //  - 0 stays 0
            //  - positive clamps to MAX
            //  - negative clamps to MIN
            assign stages[i+1] =
                shift[i]
                    ? ((stages[i] == {A_WIDTH{1'b0}})
                        ? {A_WIDTH{1'b0}}
                        : (stages[i][A_WIDTH-1] ? MIN_VAL : MAX_VAL))
                    : stages[i];
        end
    end
endgenerate

assign shifted = stages[SHIFT_WIDTH];

endmodule

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
