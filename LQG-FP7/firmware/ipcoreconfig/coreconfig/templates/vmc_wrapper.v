`timescale 1ns / 1ps

// Wrapper for IP Cores

module {{module_name}} #(
        // Block RAM configuration parameters.
        parameter BRAM_ADDR_WIDTH = 13,
        parameter BRAM_DATA_WIDTH = 32,
        parameter BRAM_READ_LATENCY = 2{{ipcore_params}}
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
        input cfg_apply{{ipcore_interface}}
    );

    // Total configuration size required (bits)
    localparam CONFIG_SIZE = {{config_size}};

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

{{ipcore_inst_code}}

endmodule