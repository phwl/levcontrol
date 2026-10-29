`timescale 1ns / 1ps

// Wrapper for IP Cores

module fpga_lqg_t1_wrapper #(
        // Block RAM configuration parameters.
        parameter BRAM_ADDR_WIDTH = 13,
        parameter BRAM_DATA_WIDTH = 32,
        parameter BRAM_READ_LATENCY = 2
    ) (
        // Clock and reset
        (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
        input clk,
        (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
        (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
        input rst,

        // Configuration block RAM master interface
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cfg_ram EN" *)
        output reg cfg_ram_en,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cfg_ram CLK" *)
        output cfg_ram_clk,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cfg_ram RST" *)
        output cfg_ram_rst,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cfg_ram ADDR" *)
        output reg [BRAM_ADDR_WIDTH-1:0] cfg_ram_addr,
        (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 cfg_ram DOUT" *)
        input [BRAM_DATA_WIDTH-1:0] cfg_ram_dout,

        // Configuration load / apply control signals.
        input cfg_load,
        output reg cfg_load_done,
        input cfg_apply,

        // Generated module I/Os
        input LQG_clk,
        input signed [13:0] LQG_yk_0,
        input signed [13:0] LQG_yk_1,
        output signed [13:0] LQG_uk_0,
        output signed [13:0] LQG_uk_1,
        output [7:0] LQG_led_out
    );

    // Total configuration size required (bits)
    localparam CONFIG_SIZE = 2384;

    // Define FSM states for loader.
    localparam IDLE = 2'd0;
    localparam READ = 2'd1; // Data read is in progress; new reads issued & incoming data latched.
    localparam WAIT = 2'd2; // Waiting for last initiated reads to finish up.
    localparam DONE = 2'd3; // Configuration load from BRAM was successful.

    // Total number of BRAM words that need to be read in order for the configuration
    // to be fully loaded.
    localparam WORDS_TO_READ = (CONFIG_SIZE + BRAM_DATA_WIDTH - 1) / BRAM_DATA_WIDTH;

    // Assign BRAM clock/reset.
    assign cfg_ram_clk = clk;
    assign cfg_ram_rst = rst;

    // FSM states.
    reg [1:0] state;
    reg [1:0] next_state;

    // Current progress of read
    reg [$clog2(WORDS_TO_READ):0] read_ctr;

    // Wait counter for BRAM latency.
    reg [$clog2(BRAM_READ_LATENCY):0] latency_ctr;
    // Bitmask which words (in the future) will be still valid from BRAM.
    reg [BRAM_READ_LATENCY-1:0] word_valid;

    // Register for storing the loaded configuration.
    reg [CONFIG_SIZE-1:0] loaded_config;
    // Register for storing the currently *applied* configuration.
    reg [CONFIG_SIZE-1:0] applied_config;

    // FSM transition
    always @(posedge clk) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
    end

    // FSM state transition logic
    always @(*) begin
        case (state)
            IDLE:
                next_state = cfg_load ? READ : IDLE;
            READ:
                next_state = (read_ctr == WORDS_TO_READ) ? WAIT : READ;
            WAIT:
                next_state = (latency_ctr == BRAM_READ_LATENCY) ? DONE : WAIT;
            DONE:
                // Wait for low signal on cfg_load before proceeding to IDLE state.
                next_state = cfg_load ? DONE : IDLE;
            default:
                next_state = IDLE;
        endcase
    end

    wire [BRAM_READ_LATENCY-1:0] word_valid_next_valid;
    wire [BRAM_READ_LATENCY-1:0] word_valid_next_invalid;

    generate
        if (BRAM_READ_LATENCY > 1) begin
            assign word_valid_next_valid = {word_valid[BRAM_READ_LATENCY-2:0], 1'b1};
            assign word_valid_next_invalid = {word_valid[BRAM_READ_LATENCY-2:0], 1'b0};
        end else begin
            assign word_valid_next_valid = 1'b1;
            assign word_valid_next_invalid = 1'b0;
        end
    endgenerate

    // FSM Control Logic
    always @(posedge clk) begin
        if (rst) begin
            cfg_ram_addr <= 0;
            cfg_ram_en <= 0;
            read_ctr <= 0;
            latency_ctr <= 0;
            word_valid <= 0;
            cfg_load_done <= 0;
            applied_config <= 0;
            loaded_config <= 0;
        end else begin
            case (state)
                IDLE: begin
                    cfg_ram_addr <= 0;
                    cfg_ram_en <= 0;
                    read_ctr <= 0;
                    latency_ctr <= 0;
                    word_valid <= 0;
                    cfg_load_done <= 0;

                    if (cfg_apply) begin
                        applied_config <= loaded_config;
                    end
                end

                READ: begin
                    // Enable READ from BRAM.
                    cfg_ram_en <= 1;
                    // Count up the address to be read from.
                    cfg_ram_addr <= cfg_ram_addr + (BRAM_DATA_WIDTH / 8);

                    word_valid <= word_valid_next_valid;

                    // Check if last bit is valid (we got data to read.)
                    if (word_valid[BRAM_READ_LATENCY-1]) begin
                        loaded_config[read_ctr*BRAM_DATA_WIDTH +: BRAM_DATA_WIDTH] <= cfg_ram_dout;
                        read_ctr <= read_ctr + 1;
                    end
                end

                WAIT: begin
                    // Disable read from BRAM.
                    cfg_ram_en <= 0;
                    // Count up latency ctr.
                    latency_ctr <= latency_ctr + 1;
                    // Shift zeros into valid markers.
                    word_valid <= word_valid_next_invalid;

                    // Check if last bit is valid (we got data to read.)
                    if (word_valid[BRAM_READ_LATENCY-1]) begin
                        loaded_config[read_ctr*BRAM_DATA_WIDTH +: BRAM_DATA_WIDTH] <= cfg_ram_dout;
                        read_ctr <= read_ctr + 1;
                    end
                end

                DONE: begin
                    cfg_load_done <= 1;
                end

            endcase
        end
    end

    // IP-Core instance
    FPGA_LQG_Scaling_Test_0 FPGA_LQG_Scaling_Test_0_inst (
        .clk(LQG_clk),
        .yk_gw_0(LQG_yk_0),
        .yk_gw_1(LQG_yk_1),
        .uk_gw_0(LQG_uk_0),
        .uk_gw_1(LQG_uk_1),
        .lqg_led_out(LQG_led_out),
        .lqg_f_res_gw_0(applied_config[0 +: 18]),
        .lqg_f_res_gw_1(applied_config[24 +: 18]),
        .lqg_f_res_gw_2(applied_config[48 +: 18]),
        .lqg_f_res_gw_3(applied_config[72 +: 18]),
        .lqg_f_res_gw_4(applied_config[96 +: 18]),
        .lqg_f_res_gw_5(applied_config[120 +: 18]),
        .lqg_f_res_gw_6(applied_config[144 +: 18]),
        .lqg_f_res_gw_7(applied_config[168 +: 18]),
        .lqg_f_res_gw_8(applied_config[192 +: 18]),
        .lqg_f_res_gw_9(applied_config[216 +: 18]),
        .lqg_f_res_gw_10(applied_config[240 +: 18]),
        .lqg_f_res_gw_11(applied_config[264 +: 18]),
        .lqg_f_res_gw_12(applied_config[288 +: 18]),
        .lqg_f_res_gw_13(applied_config[312 +: 18]),
        .lqg_f_res_gw_14(applied_config[336 +: 18]),
        .lqg_f_res_gw_15(applied_config[360 +: 18]),
        .lqg_f_res_gw_16(applied_config[384 +: 18]),
        .lqg_f_res_gw_17(applied_config[408 +: 18]),
        .lqg_f_res_gw_18(applied_config[432 +: 18]),
        .lqg_f_res_gw_19(applied_config[456 +: 18]),
        .lqg_f_res_gw_20(applied_config[480 +: 18]),
        .lqg_f_res_gw_21(applied_config[504 +: 18]),
        .lqg_f_res_gw_22(applied_config[528 +: 18]),
        .lqg_f_res_gw_23(applied_config[552 +: 18]),
        .lqg_f_res_gw_24(applied_config[576 +: 18]),
        .lqg_f_res_gw_25(applied_config[600 +: 18]),
        .lqg_f_res_gw_26(applied_config[624 +: 18]),
        .lqg_f_res_gw_27(applied_config[648 +: 18]),
        .lqg_f_res_gw_28(applied_config[672 +: 18]),
        .lqg_f_res_gw_29(applied_config[696 +: 18]),
        .lqg_f_res_gw_30(applied_config[720 +: 18]),
        .lqg_f_res_gw_31(applied_config[744 +: 18]),
        .lqg_f_res_gw_32(applied_config[768 +: 18]),
        .lqg_f_res_gw_33(applied_config[792 +: 18]),
        .lqg_f_res_gw_34(applied_config[816 +: 18]),
        .lqg_f_res_gw_35(applied_config[840 +: 18]),
        .lqg_f_res_gw_36(applied_config[864 +: 18]),
        .lqg_f_res_gw_37(applied_config[888 +: 18]),
        .lqg_f_res_gw_38(applied_config[912 +: 18]),
        .lqg_f_res_gw_39(applied_config[936 +: 18]),
        .lqg_f_res_gw_40(applied_config[960 +: 18]),
        .lqg_f_res_gw_41(applied_config[984 +: 18]),
        .lqg_f_res_gw_42(applied_config[1008 +: 18]),
        .lqg_f_res_gw_43(applied_config[1032 +: 18]),
        .lqg_f_res_gw_44(applied_config[1056 +: 18]),
        .lqg_f_res_gw_45(applied_config[1080 +: 18]),
        .lqg_f_res_gw_46(applied_config[1104 +: 18]),
        .lqg_f_res_gw_47(applied_config[1128 +: 18]),
        .lqg_f_res_gw_48(applied_config[1152 +: 18]),
        .lqg_f_shift_gw_0(applied_config[1176 +: 4]),
        .lqg_f_shift_gw_1(applied_config[1180 +: 4]),
        .lqg_f_shift_gw_2(applied_config[1184 +: 4]),
        .lqg_f_shift_gw_3(applied_config[1188 +: 4]),
        .lqg_f_shift_gw_4(applied_config[1192 +: 4]),
        .lqg_f_shift_gw_5(applied_config[1196 +: 4]),
        .lqg_f_shift_gw_6(applied_config[1200 +: 4]),
        .lqg_f_shift_gw_7(applied_config[1204 +: 4]),
        .lqg_f_shift_gw_8(applied_config[1208 +: 4]),
        .lqg_f_shift_gw_9(applied_config[1212 +: 4]),
        .lqg_f_shift_gw_10(applied_config[1216 +: 4]),
        .lqg_f_shift_gw_11(applied_config[1220 +: 4]),
        .lqg_f_shift_gw_12(applied_config[1224 +: 4]),
        .lqg_f_shift_gw_13(applied_config[1228 +: 4]),
        .lqg_f_shift_gw_14(applied_config[1232 +: 4]),
        .lqg_f_shift_gw_15(applied_config[1236 +: 4]),
        .lqg_f_shift_gw_16(applied_config[1240 +: 4]),
        .lqg_f_shift_gw_17(applied_config[1244 +: 4]),
        .lqg_f_shift_gw_18(applied_config[1248 +: 4]),
        .lqg_f_shift_gw_19(applied_config[1252 +: 4]),
        .lqg_f_shift_gw_20(applied_config[1256 +: 4]),
        .lqg_f_shift_gw_21(applied_config[1260 +: 4]),
        .lqg_f_shift_gw_22(applied_config[1264 +: 4]),
        .lqg_f_shift_gw_23(applied_config[1268 +: 4]),
        .lqg_f_shift_gw_24(applied_config[1272 +: 4]),
        .lqg_f_shift_gw_25(applied_config[1276 +: 4]),
        .lqg_f_shift_gw_26(applied_config[1280 +: 4]),
        .lqg_f_shift_gw_27(applied_config[1284 +: 4]),
        .lqg_f_shift_gw_28(applied_config[1288 +: 4]),
        .lqg_f_shift_gw_29(applied_config[1292 +: 4]),
        .lqg_f_shift_gw_30(applied_config[1296 +: 4]),
        .lqg_f_shift_gw_31(applied_config[1300 +: 4]),
        .lqg_f_shift_gw_32(applied_config[1304 +: 4]),
        .lqg_f_shift_gw_33(applied_config[1308 +: 4]),
        .lqg_f_shift_gw_34(applied_config[1312 +: 4]),
        .lqg_f_shift_gw_35(applied_config[1316 +: 4]),
        .lqg_f_shift_gw_36(applied_config[1320 +: 4]),
        .lqg_f_shift_gw_37(applied_config[1324 +: 4]),
        .lqg_f_shift_gw_38(applied_config[1328 +: 4]),
        .lqg_f_shift_gw_39(applied_config[1332 +: 4]),
        .lqg_f_shift_gw_40(applied_config[1336 +: 4]),
        .lqg_f_shift_gw_41(applied_config[1340 +: 4]),
        .lqg_f_shift_gw_42(applied_config[1344 +: 4]),
        .lqg_f_shift_gw_43(applied_config[1348 +: 4]),
        .lqg_f_shift_gw_44(applied_config[1352 +: 4]),
        .lqg_f_shift_gw_45(applied_config[1356 +: 4]),
        .lqg_f_shift_gw_46(applied_config[1360 +: 4]),
        .lqg_f_shift_gw_47(applied_config[1364 +: 4]),
        .lqg_f_shift_gw_48(applied_config[1368 +: 4]),
        .lqg_gamma_res_gw_0(applied_config[1376 +: 18]),
        .lqg_gamma_res_gw_1(applied_config[1394 +: 18]),
        .lqg_gamma_res_gw_2(applied_config[1412 +: 18]),
        .lqg_gamma_res_gw_3(applied_config[1430 +: 18]),
        .lqg_gamma_res_gw_4(applied_config[1448 +: 18]),
        .lqg_gamma_res_gw_5(applied_config[1466 +: 18]),
        .lqg_gamma_res_gw_6(applied_config[1484 +: 18]),
        .lqg_gamma_res_gw_7(applied_config[1502 +: 18]),
        .lqg_gamma_res_gw_8(applied_config[1520 +: 18]),
        .lqg_gamma_res_gw_9(applied_config[1538 +: 18]),
        .lqg_gamma_res_gw_10(applied_config[1556 +: 18]),
        .lqg_gamma_res_gw_11(applied_config[1574 +: 18]),
        .lqg_gamma_res_gw_12(applied_config[1592 +: 18]),
        .lqg_gamma_res_gw_13(applied_config[1610 +: 18]),
        .lqg_gamma_shift_gw_0(applied_config[1632 +: 4]),
        .lqg_gamma_shift_gw_1(applied_config[1636 +: 4]),
        .lqg_gamma_shift_gw_2(applied_config[1640 +: 4]),
        .lqg_gamma_shift_gw_3(applied_config[1644 +: 4]),
        .lqg_gamma_shift_gw_4(applied_config[1648 +: 4]),
        .lqg_gamma_shift_gw_5(applied_config[1652 +: 4]),
        .lqg_gamma_shift_gw_6(applied_config[1656 +: 4]),
        .lqg_gamma_shift_gw_7(applied_config[1660 +: 4]),
        .lqg_gamma_shift_gw_8(applied_config[1664 +: 4]),
        .lqg_gamma_shift_gw_9(applied_config[1668 +: 4]),
        .lqg_gamma_shift_gw_10(applied_config[1672 +: 4]),
        .lqg_gamma_shift_gw_11(applied_config[1676 +: 4]),
        .lqg_gamma_shift_gw_12(applied_config[1680 +: 4]),
        .lqg_gamma_shift_gw_13(applied_config[1684 +: 4]),
        .lqg_l_res_gw_0(applied_config[1688 +: 18]),
        .lqg_l_res_gw_1(applied_config[1706 +: 18]),
        .lqg_l_res_gw_2(applied_config[1724 +: 18]),
        .lqg_l_res_gw_3(applied_config[1742 +: 18]),
        .lqg_l_res_gw_4(applied_config[1760 +: 18]),
        .lqg_l_res_gw_5(applied_config[1778 +: 18]),
        .lqg_l_res_gw_6(applied_config[1796 +: 18]),
        .lqg_l_res_gw_7(applied_config[1814 +: 18]),
        .lqg_l_res_gw_8(applied_config[1832 +: 18]),
        .lqg_l_res_gw_9(applied_config[1850 +: 18]),
        .lqg_l_res_gw_10(applied_config[1868 +: 18]),
        .lqg_l_res_gw_11(applied_config[1886 +: 18]),
        .lqg_l_res_gw_12(applied_config[1904 +: 18]),
        .lqg_l_res_gw_13(applied_config[1922 +: 18]),
        .lqg_l_shift_gw_0(applied_config[1944 +: 4]),
        .lqg_l_shift_gw_1(applied_config[1948 +: 4]),
        .lqg_l_shift_gw_2(applied_config[1952 +: 4]),
        .lqg_l_shift_gw_3(applied_config[1956 +: 4]),
        .lqg_l_shift_gw_4(applied_config[1960 +: 4]),
        .lqg_l_shift_gw_5(applied_config[1964 +: 4]),
        .lqg_l_shift_gw_6(applied_config[1968 +: 4]),
        .lqg_l_shift_gw_7(applied_config[1972 +: 4]),
        .lqg_l_shift_gw_8(applied_config[1976 +: 4]),
        .lqg_l_shift_gw_9(applied_config[1980 +: 4]),
        .lqg_l_shift_gw_10(applied_config[1984 +: 4]),
        .lqg_l_shift_gw_11(applied_config[1988 +: 4]),
        .lqg_l_shift_gw_12(applied_config[1992 +: 4]),
        .lqg_l_shift_gw_13(applied_config[1996 +: 4]),
        .lqg_k_res_gw_0(applied_config[2000 +: 18]),
        .lqg_k_res_gw_1(applied_config[2018 +: 18]),
        .lqg_k_res_gw_2(applied_config[2036 +: 18]),
        .lqg_k_res_gw_3(applied_config[2054 +: 18]),
        .lqg_k_res_gw_4(applied_config[2072 +: 18]),
        .lqg_k_res_gw_5(applied_config[2090 +: 18]),
        .lqg_k_res_gw_6(applied_config[2108 +: 18]),
        .lqg_k_res_gw_7(applied_config[2126 +: 18]),
        .lqg_k_res_gw_8(applied_config[2144 +: 18]),
        .lqg_k_res_gw_9(applied_config[2162 +: 18]),
        .lqg_k_res_gw_10(applied_config[2180 +: 18]),
        .lqg_k_res_gw_11(applied_config[2198 +: 18]),
        .lqg_k_res_gw_12(applied_config[2216 +: 18]),
        .lqg_k_res_gw_13(applied_config[2234 +: 18]),
        .lqg_k_shift_gw_0(applied_config[2176 +: 4]),
        .lqg_k_shift_gw_1(applied_config[2180 +: 4]),
        .lqg_k_shift_gw_2(applied_config[2184 +: 4]),
        .lqg_k_shift_gw_3(applied_config[2188 +: 4]),
        .lqg_k_shift_gw_4(applied_config[2192 +: 4]),
        .lqg_k_shift_gw_5(applied_config[2196 +: 4]),
        .lqg_k_shift_gw_6(applied_config[2200 +: 4]),
        .lqg_k_shift_gw_7(applied_config[2204 +: 4]),
        .lqg_k_shift_gw_8(applied_config[2208 +: 4]),
        .lqg_k_shift_gw_9(applied_config[2212 +: 4]),
        .lqg_k_shift_gw_10(applied_config[2216 +: 4]),
        .lqg_k_shift_gw_11(applied_config[2220 +: 4]),
        .lqg_k_shift_gw_12(applied_config[2224 +: 4]),
        .lqg_k_shift_gw_13(applied_config[2228 +: 4]),
        .yk_offset_gw_0(applied_config[2232 +: 14]),
        .yk_offset_gw_1(applied_config[2246 +: 14]),
        .yk_factor_gw_0(applied_config[2264 +: 18]),
        .yk_factor_gw_1(applied_config[2282 +: 18]),
        .uk_offset_gw_0(applied_config[2304 +: 14]),
        .uk_offset_gw_1(applied_config[2318 +: 14]),
        .uk_factor_gw_0(applied_config[2336 +: 18]),
        .uk_factor_gw_1(applied_config[2354 +: 18]),
        .lqg_led_in(applied_config[2376 +: 8])
    );


endmodule