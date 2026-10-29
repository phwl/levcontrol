
`timescale 1 ns / 1 ps

module axis_red_pitaya_adc #
(
  parameter integer ADC_DATA_WIDTH = 14,
  parameter integer AXIS_TDATA_WIDTH = 32
)
(
  // System signals
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
  output wire                        adc_clk,

  // ADC signals
  output wire                        adc_csn,
  input  wire                        adc_clk_p,
  input  wire                        adc_clk_n,
  input  wire [ADC_DATA_WIDTH-1:0]   adc_dat_a,
  input  wire [ADC_DATA_WIDTH-1:0]   adc_dat_b,
  input  wire signed [ADC_DATA_WIDTH-1:0]   offset_a,
  input  wire signed [ADC_DATA_WIDTH-1:0]   offset_b,
  input  wire                        bypass,

  // Master side
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
  output wire                        m_axis_tvalid,
  output wire [AXIS_TDATA_WIDTH-1:0] m_axis_tdata
);
  localparam PADDING_WIDTH = AXIS_TDATA_WIDTH/2 - ADC_DATA_WIDTH;

  reg  [ADC_DATA_WIDTH-1:0] int_dat_a_reg;
  reg  [ADC_DATA_WIDTH-1:0] int_dat_b_reg;
  reg  signed [ADC_DATA_WIDTH:0] int_dat_a_reg_sum; //1 bit wider
  reg  signed [ADC_DATA_WIDTH:0] int_dat_b_reg_sum;
  reg  signed [ADC_DATA_WIDTH-1:0] int_dat_a_reg_calib;
  reg  signed  [ADC_DATA_WIDTH-1:0] int_dat_b_reg_calib;
  wire int_clk;
  reg  [AXIS_TDATA_WIDTH-1:0] m_axis_tdata_temp;
  
  wire signed [ADC_DATA_WIDTH:0] int_dat_a_cast;
  wire signed [ADC_DATA_WIDTH:0] int_dat_b_cast;
  
  IBUFGDS adc_clk_inst0 (.I(adc_clk_p), .IB(adc_clk_n), .O(int_clk0));
  BUFG adc_clk_inst (.I(int_clk0), .O(int_clk));

  assign int_dat_a_cast = $signed({{(2){int_dat_a_reg[ADC_DATA_WIDTH-1]}}, ~int_dat_a_reg[ADC_DATA_WIDTH-2:0]});
  assign int_dat_b_cast = $signed({{(2){int_dat_b_reg[ADC_DATA_WIDTH-1]}}, ~int_dat_b_reg[ADC_DATA_WIDTH-2:0]});
  
  always @(posedge int_clk) 
  begin
    int_dat_a_reg <= adc_dat_a;
    int_dat_b_reg <= adc_dat_b;
  
    int_dat_a_reg_sum <= {offset_a[ADC_DATA_WIDTH-1], offset_a} + int_dat_a_cast;
    case (int_dat_a_reg_sum[ADC_DATA_WIDTH:ADC_DATA_WIDTH-1])
        2'b01 : int_dat_a_reg_calib <= {1'b0, {(ADC_DATA_WIDTH-1){1'b1}}}; //Overflow
        2'b10 : int_dat_a_reg_calib <= {1'b1, {(ADC_DATA_WIDTH-1){1'b0}}}; //Underflow
        default:  int_dat_a_reg_calib <= int_dat_a_reg_sum[ADC_DATA_WIDTH-1:0];
    endcase
        
    int_dat_b_reg_sum <= {offset_b[ADC_DATA_WIDTH-1], offset_b} + int_dat_b_cast;
    case (int_dat_b_reg_sum[ADC_DATA_WIDTH:ADC_DATA_WIDTH-1])
        2'b01 : int_dat_b_reg_calib <= {1'b0, {(ADC_DATA_WIDTH-1){1'b1}}}; //Overflow
        2'b10 : int_dat_b_reg_calib <= {1'b1, {(ADC_DATA_WIDTH-1){1'b0}}}; //Underflow
        default:  int_dat_b_reg_calib <= int_dat_b_reg_sum[ADC_DATA_WIDTH-1:0];
    endcase
  end
    
  always @(*)
  begin  
    if(~bypass) begin
        m_axis_tdata_temp = {{(PADDING_WIDTH+1){int_dat_b_reg[ADC_DATA_WIDTH-1]}}, ~int_dat_b_reg[ADC_DATA_WIDTH-2:0],
                            {(PADDING_WIDTH+1){int_dat_a_reg[ADC_DATA_WIDTH-1]}}, ~int_dat_a_reg[ADC_DATA_WIDTH-2:0]};                  
    end
    else begin
        m_axis_tdata_temp = {{(PADDING_WIDTH+1){int_dat_b_reg_calib[ADC_DATA_WIDTH-1]}}, int_dat_b_reg_calib[ADC_DATA_WIDTH-2:0],
                            {(PADDING_WIDTH+1){int_dat_a_reg_calib[ADC_DATA_WIDTH-1]}}, int_dat_a_reg_calib[ADC_DATA_WIDTH-2:0]};
    end
  end

  assign adc_clk = int_clk;

  assign adc_csn = 1'b1;

  assign m_axis_tvalid = 1'b1;

  assign m_axis_tdata = m_axis_tdata_temp;

endmodule