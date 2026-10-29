`timescale 1ns / 1ps

// Wrapper for IP Cores

module lqg_axi_test_wrapper #(
        // Block RAM configuration parameters.
        parameter BRAM_ADDR_WIDTH = 13,
        parameter BRAM_DATA_WIDTH = 32,
        parameter BRAM_READ_LATENCY = 2
    ) (
        // Clock and reset
        // We need to set ASSOCIATED_BUSIF *explicitly* to empty string here, as Vivado (for some goddamn reason)
        // will otherwise try to associate the clock with the AXI interface, which is not what we want.
        (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
        (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF \"\", ASSOCIATED_RESET rst" *)
        input clk,
        (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
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
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi AWADDR" *)
        (* X_INTERFACE_PARAMETER = "PROTOCOL AXI4LITE, FREQ_HZ 125000000" *)
        input [2:0] axi_sys_s_axi_awaddr,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi AWVALID" *)
        input axi_sys_s_axi_awvalid,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi AWREADY" *)
        output axi_sys_s_axi_awready,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WDATA" *)
        input [31:0] axi_sys_s_axi_wdata,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WSTRB" *)
        input [3:0] axi_sys_s_axi_wstrb,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WVALID" *)
        input axi_sys_s_axi_wvalid,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi WREADY" *)
        output axi_sys_s_axi_wready,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi BRESP" *)
        output [1:0] axi_sys_s_axi_bresp,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi BVALID" *)
        output axi_sys_s_axi_bvalid,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi BREADY" *)
        input axi_sys_s_axi_bready,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi ARADDR" *)
        input [2:0] axi_sys_s_axi_araddr,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi ARVALID" *)
        input axi_sys_s_axi_arvalid,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi ARREADY" *)
        output axi_sys_s_axi_arready,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RDATA" *)
        output [31:0] axi_sys_s_axi_rdata,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RRESP" *)
        output [1:0] axi_sys_s_axi_rresp,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RVALID" *)
        output axi_sys_s_axi_rvalid,
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_sys_s_axi RREADY" *)
        input axi_sys_s_axi_rready,
        (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 proc_sys_clk CLK" *)
        (* X_INTERFACE_PARAMETER = "FREQ_HZ 15625000, ASSOCIATED_BUSIF \"\"" *)
        input proc_sys_clk,
        (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_sys_clk CLK" *)
        (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000, ASSOCIATED_BUSIF axi_sys_s_axi" *)
        input axi_sys_clk,
        (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
        input axi_sys_aresetn,
        input signed [13:0] LQG_yk_0,
        input signed [13:0] LQG_yk_1,
        output signed [13:0] LQG_uk_0,
        output signed [13:0] LQG_uk_1,
        output signed [24:0] LQG_xkhat_0,
        output signed [24:0] LQG_xkhat_1,
        output signed [24:0] LQG_xkhat_2,
        output signed [24:0] LQG_xkhat_3,
        output signed [24:0] LQG_xkhat_4,
        output signed [24:0] LQG_xkhat_5,
        output signed [24:0] LQG_xkhat_6,
        output [7:0] LQG_led_out
    );

    // Total configuration size required (bits)
    localparam CONFIG_SIZE = 2576;

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
                    cfg_ram_en <= cfg_load ? 1 : 0;
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
    lqg_axi_test_0 lqg_axi_test_0_inst (
        .axi_sys_s_axi_awaddr(axi_sys_s_axi_awaddr),
        .axi_sys_s_axi_awvalid(axi_sys_s_axi_awvalid),
        .axi_sys_s_axi_awready(axi_sys_s_axi_awready),
        .axi_sys_s_axi_wdata(axi_sys_s_axi_wdata),
        .axi_sys_s_axi_wstrb(axi_sys_s_axi_wstrb),
        .axi_sys_s_axi_wvalid(axi_sys_s_axi_wvalid),
        .axi_sys_s_axi_wready(axi_sys_s_axi_wready),
        .axi_sys_s_axi_bresp(axi_sys_s_axi_bresp),
        .axi_sys_s_axi_bvalid(axi_sys_s_axi_bvalid),
        .axi_sys_s_axi_bready(axi_sys_s_axi_bready),
        .axi_sys_s_axi_araddr(axi_sys_s_axi_araddr),
        .axi_sys_s_axi_arvalid(axi_sys_s_axi_arvalid),
        .axi_sys_s_axi_arready(axi_sys_s_axi_arready),
        .axi_sys_s_axi_rdata(axi_sys_s_axi_rdata),
        .axi_sys_s_axi_rresp(axi_sys_s_axi_rresp),
        .axi_sys_s_axi_rvalid(axi_sys_s_axi_rvalid),
        .axi_sys_s_axi_rready(axi_sys_s_axi_rready),
        .proc_sys_clk(proc_sys_clk),
        .axi_sys_clk(axi_sys_clk),
        .axi_sys_aresetn(axi_sys_aresetn),
        .yk_gw_0(LQG_yk_0),
        .yk_gw_1(LQG_yk_1),
        .uk_gw_0(LQG_uk_0),
        .uk_gw_1(LQG_uk_1),
        .xkhat_gw_0(LQG_xkhat_0),
        .xkhat_gw_1(LQG_xkhat_1),
        .xkhat_gw_2(LQG_xkhat_2),
        .xkhat_gw_3(LQG_xkhat_3),
        .xkhat_gw_4(LQG_xkhat_4),
        .xkhat_gw_5(LQG_xkhat_5),
        .xkhat_gw_6(LQG_xkhat_6),
        .lqg_led_out(LQG_led_out),
        .lqg_f_res_gw_0(applied_config[0 +: 18]),
        .lqg_f_res_gw_1(applied_config[18 +: 18]),
        .lqg_f_res_gw_2(applied_config[36 +: 18]),
        .lqg_f_res_gw_3(applied_config[54 +: 18]),
        .lqg_f_res_gw_4(applied_config[72 +: 18]),
        .lqg_f_res_gw_5(applied_config[90 +: 18]),
        .lqg_f_res_gw_6(applied_config[108 +: 18]),
        .lqg_f_res_gw_7(applied_config[126 +: 18]),
        .lqg_f_res_gw_8(applied_config[144 +: 18]),
        .lqg_f_res_gw_9(applied_config[162 +: 18]),
        .lqg_f_res_gw_10(applied_config[180 +: 18]),
        .lqg_f_res_gw_11(applied_config[198 +: 18]),
        .lqg_f_res_gw_12(applied_config[216 +: 18]),
        .lqg_f_res_gw_13(applied_config[234 +: 18]),
        .lqg_f_res_gw_14(applied_config[252 +: 18]),
        .lqg_f_res_gw_15(applied_config[270 +: 18]),
        .lqg_f_res_gw_16(applied_config[288 +: 18]),
        .lqg_f_res_gw_17(applied_config[306 +: 18]),
        .lqg_f_res_gw_18(applied_config[324 +: 18]),
        .lqg_f_res_gw_19(applied_config[342 +: 18]),
        .lqg_f_res_gw_20(applied_config[360 +: 18]),
        .lqg_f_res_gw_21(applied_config[378 +: 18]),
        .lqg_f_res_gw_22(applied_config[396 +: 18]),
        .lqg_f_res_gw_23(applied_config[414 +: 18]),
        .lqg_f_res_gw_24(applied_config[432 +: 18]),
        .lqg_f_res_gw_25(applied_config[450 +: 18]),
        .lqg_f_res_gw_26(applied_config[468 +: 18]),
        .lqg_f_res_gw_27(applied_config[486 +: 18]),
        .lqg_f_res_gw_28(applied_config[504 +: 18]),
        .lqg_f_res_gw_29(applied_config[522 +: 18]),
        .lqg_f_res_gw_30(applied_config[540 +: 18]),
        .lqg_f_res_gw_31(applied_config[558 +: 18]),
        .lqg_f_res_gw_32(applied_config[576 +: 18]),
        .lqg_f_res_gw_33(applied_config[594 +: 18]),
        .lqg_f_res_gw_34(applied_config[612 +: 18]),
        .lqg_f_res_gw_35(applied_config[630 +: 18]),
        .lqg_f_res_gw_36(applied_config[648 +: 18]),
        .lqg_f_res_gw_37(applied_config[666 +: 18]),
        .lqg_f_res_gw_38(applied_config[684 +: 18]),
        .lqg_f_res_gw_39(applied_config[702 +: 18]),
        .lqg_f_res_gw_40(applied_config[720 +: 18]),
        .lqg_f_res_gw_41(applied_config[738 +: 18]),
        .lqg_f_res_gw_42(applied_config[756 +: 18]),
        .lqg_f_res_gw_43(applied_config[774 +: 18]),
        .lqg_f_res_gw_44(applied_config[792 +: 18]),
        .lqg_f_res_gw_45(applied_config[810 +: 18]),
        .lqg_f_res_gw_46(applied_config[828 +: 18]),
        .lqg_f_res_gw_47(applied_config[846 +: 18]),
        .lqg_f_res_gw_48(applied_config[864 +: 18]),
        .lqg_f_shift_gw_0(applied_config[1176 +: 5]),
        .lqg_f_shift_gw_1(applied_config[1181 +: 5]),
        .lqg_f_shift_gw_2(applied_config[1186 +: 5]),
        .lqg_f_shift_gw_3(applied_config[1191 +: 5]),
        .lqg_f_shift_gw_4(applied_config[1196 +: 5]),
        .lqg_f_shift_gw_5(applied_config[1201 +: 5]),
        .lqg_f_shift_gw_6(applied_config[1206 +: 5]),
        .lqg_f_shift_gw_7(applied_config[1211 +: 5]),
        .lqg_f_shift_gw_8(applied_config[1216 +: 5]),
        .lqg_f_shift_gw_9(applied_config[1221 +: 5]),
        .lqg_f_shift_gw_10(applied_config[1226 +: 5]),
        .lqg_f_shift_gw_11(applied_config[1231 +: 5]),
        .lqg_f_shift_gw_12(applied_config[1236 +: 5]),
        .lqg_f_shift_gw_13(applied_config[1241 +: 5]),
        .lqg_f_shift_gw_14(applied_config[1246 +: 5]),
        .lqg_f_shift_gw_15(applied_config[1251 +: 5]),
        .lqg_f_shift_gw_16(applied_config[1256 +: 5]),
        .lqg_f_shift_gw_17(applied_config[1261 +: 5]),
        .lqg_f_shift_gw_18(applied_config[1266 +: 5]),
        .lqg_f_shift_gw_19(applied_config[1271 +: 5]),
        .lqg_f_shift_gw_20(applied_config[1276 +: 5]),
        .lqg_f_shift_gw_21(applied_config[1281 +: 5]),
        .lqg_f_shift_gw_22(applied_config[1286 +: 5]),
        .lqg_f_shift_gw_23(applied_config[1291 +: 5]),
        .lqg_f_shift_gw_24(applied_config[1296 +: 5]),
        .lqg_f_shift_gw_25(applied_config[1301 +: 5]),
        .lqg_f_shift_gw_26(applied_config[1306 +: 5]),
        .lqg_f_shift_gw_27(applied_config[1311 +: 5]),
        .lqg_f_shift_gw_28(applied_config[1316 +: 5]),
        .lqg_f_shift_gw_29(applied_config[1321 +: 5]),
        .lqg_f_shift_gw_30(applied_config[1326 +: 5]),
        .lqg_f_shift_gw_31(applied_config[1331 +: 5]),
        .lqg_f_shift_gw_32(applied_config[1336 +: 5]),
        .lqg_f_shift_gw_33(applied_config[1341 +: 5]),
        .lqg_f_shift_gw_34(applied_config[1346 +: 5]),
        .lqg_f_shift_gw_35(applied_config[1351 +: 5]),
        .lqg_f_shift_gw_36(applied_config[1356 +: 5]),
        .lqg_f_shift_gw_37(applied_config[1361 +: 5]),
        .lqg_f_shift_gw_38(applied_config[1366 +: 5]),
        .lqg_f_shift_gw_39(applied_config[1371 +: 5]),
        .lqg_f_shift_gw_40(applied_config[1376 +: 5]),
        .lqg_f_shift_gw_41(applied_config[1381 +: 5]),
        .lqg_f_shift_gw_42(applied_config[1386 +: 5]),
        .lqg_f_shift_gw_43(applied_config[1391 +: 5]),
        .lqg_f_shift_gw_44(applied_config[1396 +: 5]),
        .lqg_f_shift_gw_45(applied_config[1401 +: 5]),
        .lqg_f_shift_gw_46(applied_config[1406 +: 5]),
        .lqg_f_shift_gw_47(applied_config[1411 +: 5]),
        .lqg_f_shift_gw_48(applied_config[1416 +: 5]),
        .lqg_gamma_res_gw_0(applied_config[1424 +: 18]),
        .lqg_gamma_res_gw_1(applied_config[1442 +: 18]),
        .lqg_gamma_res_gw_2(applied_config[1460 +: 18]),
        .lqg_gamma_res_gw_3(applied_config[1478 +: 18]),
        .lqg_gamma_res_gw_4(applied_config[1496 +: 18]),
        .lqg_gamma_res_gw_5(applied_config[1514 +: 18]),
        .lqg_gamma_res_gw_6(applied_config[1532 +: 18]),
        .lqg_gamma_res_gw_7(applied_config[1550 +: 18]),
        .lqg_gamma_res_gw_8(applied_config[1568 +: 18]),
        .lqg_gamma_res_gw_9(applied_config[1586 +: 18]),
        .lqg_gamma_res_gw_10(applied_config[1604 +: 18]),
        .lqg_gamma_res_gw_11(applied_config[1622 +: 18]),
        .lqg_gamma_res_gw_12(applied_config[1640 +: 18]),
        .lqg_gamma_res_gw_13(applied_config[1658 +: 18]),
        .lqg_gamma_shift_gw_0(applied_config[1680 +: 5]),
        .lqg_gamma_shift_gw_1(applied_config[1685 +: 5]),
        .lqg_gamma_shift_gw_2(applied_config[1690 +: 5]),
        .lqg_gamma_shift_gw_3(applied_config[1695 +: 5]),
        .lqg_gamma_shift_gw_4(applied_config[1700 +: 5]),
        .lqg_gamma_shift_gw_5(applied_config[1705 +: 5]),
        .lqg_gamma_shift_gw_6(applied_config[1710 +: 5]),
        .lqg_gamma_shift_gw_7(applied_config[1715 +: 5]),
        .lqg_gamma_shift_gw_8(applied_config[1720 +: 5]),
        .lqg_gamma_shift_gw_9(applied_config[1725 +: 5]),
        .lqg_gamma_shift_gw_10(applied_config[1730 +: 5]),
        .lqg_gamma_shift_gw_11(applied_config[1735 +: 5]),
        .lqg_gamma_shift_gw_12(applied_config[1740 +: 5]),
        .lqg_gamma_shift_gw_13(applied_config[1745 +: 5]),
        .lqg_l_res_gw_0(applied_config[1752 +: 18]),
        .lqg_l_res_gw_1(applied_config[1770 +: 18]),
        .lqg_l_res_gw_2(applied_config[1788 +: 18]),
        .lqg_l_res_gw_3(applied_config[1806 +: 18]),
        .lqg_l_res_gw_4(applied_config[1824 +: 18]),
        .lqg_l_res_gw_5(applied_config[1842 +: 18]),
        .lqg_l_res_gw_6(applied_config[1860 +: 18]),
        .lqg_l_res_gw_7(applied_config[1878 +: 18]),
        .lqg_l_res_gw_8(applied_config[1896 +: 18]),
        .lqg_l_res_gw_9(applied_config[1914 +: 18]),
        .lqg_l_res_gw_10(applied_config[1932 +: 18]),
        .lqg_l_res_gw_11(applied_config[1950 +: 18]),
        .lqg_l_res_gw_12(applied_config[1968 +: 18]),
        .lqg_l_res_gw_13(applied_config[1986 +: 18]),
        .lqg_l_shift_gw_0(applied_config[2008 +: 5]),
        .lqg_l_shift_gw_1(applied_config[2013 +: 5]),
        .lqg_l_shift_gw_2(applied_config[2018 +: 5]),
        .lqg_l_shift_gw_3(applied_config[2023 +: 5]),
        .lqg_l_shift_gw_4(applied_config[2028 +: 5]),
        .lqg_l_shift_gw_5(applied_config[2033 +: 5]),
        .lqg_l_shift_gw_6(applied_config[2038 +: 5]),
        .lqg_l_shift_gw_7(applied_config[2043 +: 5]),
        .lqg_l_shift_gw_8(applied_config[2048 +: 5]),
        .lqg_l_shift_gw_9(applied_config[2053 +: 5]),
        .lqg_l_shift_gw_10(applied_config[2058 +: 5]),
        .lqg_l_shift_gw_11(applied_config[2063 +: 5]),
        .lqg_l_shift_gw_12(applied_config[2068 +: 5]),
        .lqg_l_shift_gw_13(applied_config[2073 +: 5]),
        .lqg_k_res_gw_0(applied_config[2080 +: 18]),
        .lqg_k_res_gw_1(applied_config[2098 +: 18]),
        .lqg_k_res_gw_2(applied_config[2116 +: 18]),
        .lqg_k_res_gw_3(applied_config[2134 +: 18]),
        .lqg_k_res_gw_4(applied_config[2152 +: 18]),
        .lqg_k_res_gw_5(applied_config[2170 +: 18]),
        .lqg_k_res_gw_6(applied_config[2188 +: 18]),
        .lqg_k_res_gw_7(applied_config[2206 +: 18]),
        .lqg_k_res_gw_8(applied_config[2224 +: 18]),
        .lqg_k_res_gw_9(applied_config[2242 +: 18]),
        .lqg_k_res_gw_10(applied_config[2260 +: 18]),
        .lqg_k_res_gw_11(applied_config[2278 +: 18]),
        .lqg_k_res_gw_12(applied_config[2296 +: 18]),
        .lqg_k_res_gw_13(applied_config[2314 +: 18]),
        .lqg_k_shift_gw_0(applied_config[2336 +: 6]),
        .lqg_k_shift_gw_1(applied_config[2342 +: 6]),
        .lqg_k_shift_gw_2(applied_config[2348 +: 6]),
        .lqg_k_shift_gw_3(applied_config[2354 +: 6]),
        .lqg_k_shift_gw_4(applied_config[2360 +: 6]),
        .lqg_k_shift_gw_5(applied_config[2366 +: 6]),
        .lqg_k_shift_gw_6(applied_config[2372 +: 6]),
        .lqg_k_shift_gw_7(applied_config[2378 +: 6]),
        .lqg_k_shift_gw_8(applied_config[2384 +: 6]),
        .lqg_k_shift_gw_9(applied_config[2390 +: 6]),
        .lqg_k_shift_gw_10(applied_config[2396 +: 6]),
        .lqg_k_shift_gw_11(applied_config[2402 +: 6]),
        .lqg_k_shift_gw_12(applied_config[2408 +: 6]),
        .lqg_k_shift_gw_13(applied_config[2414 +: 6]),
        .yk_offset_gw_0(applied_config[2424 +: 14]),
        .yk_offset_gw_1(applied_config[2438 +: 14]),
        .yk_factor_gw_0(applied_config[2456 +: 18]),
        .yk_factor_gw_1(applied_config[2474 +: 18]),
        .uk_offset_gw_0(applied_config[2496 +: 14]),
        .uk_offset_gw_1(applied_config[2510 +: 14]),
        .uk_factor_gw_0(applied_config[2528 +: 18]),
        .uk_factor_gw_1(applied_config[2546 +: 18]),
        .lqg_led_in(applied_config[2568 +: 8])
    );


endmodule