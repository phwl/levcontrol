
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