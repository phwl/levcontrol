`timescale 1ns / 1ps

module adc_downsample (
        (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_in CLK" *)
        (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
        input clk_in,

        input [13:0] adc_ch0_data_in,
        input [13:0] adc_ch1_data_in,

        (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_out CLK" *)
        (* X_INTERFACE_PARAMETER = "FREQ_HZ 31250000" *)
        output wire clk_out,        

        output reg [13:0] adc_ch0_data_out,
        output reg [13:0] adc_ch1_data_out
    );

    // Divide the clock by 4.
    localparam DIVISOR = 4;
    
    reg clk_out_gen = 0;
    BUFG clk_out_bufg (.O(clk_out), .I(clk_out_gen));
    
    // Intermediate buffers for ADC data.
    reg [13:0] adc_ch0_interm = 0;
    reg [13:0] adc_ch1_interm = 0;

    // Clock divider counter
    reg [$clog2(DIVISOR)-1:0] clk_div_ctr;
    always @(posedge clk_in) begin
        if (clk_div_ctr == DIVISOR - 1) begin
            clk_div_ctr <= 0;
            clk_out_gen <= ~clk_out_gen; // Toggle output clock
        end else begin
            clk_div_ctr <= clk_div_ctr + 1;
        end
    end

    always @(posedge clk_out) begin
        // Downsample the ADC data using the divided (synchronized) clock.
        adc_ch0_interm <= adc_ch0_data_in;
        adc_ch1_interm <= adc_ch1_data_in;
        
        adc_ch0_data_out <= adc_ch0_interm;
        adc_ch1_data_out <= adc_ch1_interm;
    end

endmodule