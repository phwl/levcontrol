
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