/*******************************************************************************

    summation_adder.v
    =================

    The `summation_adder` module is a simple adder that can add an arbitrary
    number of summands together. The datatype of the summands, as well as the
    sum have to be identical for this implementation.

    Roughly speaking, this adder implementation creates a tree of two-input
    adders to add the summands together. The number of stages in the tree is
    determined by the number of summands. To preserve resources and lower the
    total propagation delay of the adder, the number of stages is minimized by
    using a binary tree structure, which can be unbalanced and incomplete for
    cases where the number of summands is not a power of 2. Thus, the adding 
    generator code is a bit hard to look at.

    Copyright (c) 2025 J. Berndorfer
    ACIN, Automation and Control Institute, TU Wien
    Gußhausstraße 27-29, 1040 Wien, Austria

    All rights reserved.

*******************************************************************************/

`include "fixpt_helpers.v"

module summation_adder #(
    parameter WIDTH = 16,
    parameter NUMBER_SUMMANDS = 2
) (
    input [WIDTH-1:0] summands [NUMBER_SUMMANDS-1:0],
    output [WIDTH-1:0] sum
);

wire [WIDTH-1:0] results [NUMBER_SUMMANDS:0];

assign results[0] = summands[0];

generate
    for (genvar i = 0; i < NUMBER_SUMMANDS; i = i + 1) begin
        `FIXPT_ADD_INLINE(add_stage_``i, WIDTH, WIDTH, results[i], summands[i], results[i+1]);
    end
endgenerate

assign sum = results[NUMBER_SUMMANDS];

/*
localparam NUM_STAGES = $clog2(NUMBER_SUMMANDS);
localparam RESULTS_VEC_LEN = 2*(2**NUM_STAGES - 1) + 1; // This is an upper bound formula...

wire [WIDTH-1:0] results [RESULTS_VEC_LEN-1:0];

// First, hook up the input summands to the results vector.
generate
    genvar i = 0;
    for (i = 0; i < NUMBER_SUMMANDS; i = i + 1) begin
        assign results[i] = summands[i];
    end
endgenerate

// Generate the adder tree.
generate
    genvar prev_stage_idx = 0;
    genvar stage_summands = NUMBER_SUMMANDS;
    genvar current_stage_idx = stage_summands;
    genvar flip_flag = 0;
    genvar stage_idx_ctr = 0;

    while (stage_summands > 1) begin
        stage_idx_ctr = 0;

        for (i = 0; i < stage_summands - 1; i = i + 2) begin
            if (flip_flag == 1) begin
                `FIXPT_ADD_INLINE(add_stage_``current_stage_idx_``stage_idx_ctr, WIDTH, WIDTH, results[prev_stage_idx + i], results[prev_stage_idx + i + 1], results[current_stage_idx + stage_idx_ctr]);
            end else begin
                `FIXPT_ADD_INLINE(add_stage_``current_stage_idx_``stage_idx_ctr, WIDTH, WIDTH, results[current_stage_idx - 1 -i], results[current_stage_idx - 1 - (i + 1)], results[current_stage_idx + stage_idx_ctr]);
            end

            stage_idx_ctr = stage_idx_ctr + 1;
        end

        if (stage_summands % 2) != 0 begin
            if (flip_flag == 1) begin
                assign results[current_stage_idx + stage_idx_ctr] = results[prev_stage_idx + stage_summands - 1];
            end else begin
                assign results[current_stage_idx + stage_idx_ctr] = results[prev_stage_idx];
            end

            stage_idx_ctr = stage_idx_ctr + 1;
            flip_flag = 1 - flip_flag;
        end

        stage_summands = stage_idx_ctr;
        prev_stage_idx = current_stage_idx;
        current_stage_idx = current_stage_idx + stage_summands;
    end

    assign sum = results[current_stage_idx-1];
endgenerate
*/

endmodule