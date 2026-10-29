`timescale 1ns / 1ps

module adc_downsample (
        (* X_INTERFACE_PARAMETER = "FREQ_HZ 125_000_000" *)
        input clk_in,

        input [13:0] adc_ch0_data_in,
        input [13:0] adc_ch1_data_in,

        (* X_INTERFACE_PARAMETER = "FREQ_HZ 31_250_000" *)
        output reg clk_out,        

        output reg [13:0] adc_ch0_data_out,
        output reg [13:0] adc_ch1_data_out
    );

    localparam DIVISOR = 4;

    // Clock divider counter
    reg [$clog2(DIVISOR)-1:0] clk_div_ctr;
    always @(posedge clk_in) begin
        if (clk_div_ctr == DIVISOR - 1) begin
            clk_div_ctr <= 0;
            clk_out <= ~clk_out; // Toggle output clock
        end else begin
            clk_div_ctr <= clk_div_ctr + 1;
        end
    end

    always @(posedge clk_out) begin
        // Downsample the ADC data
        adc_ch0_data_out <= adc_ch0_data_in;
        adc_ch1_data_out <= adc_ch1_data_in;
    end

endmodule