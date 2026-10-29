`timescale 1ns / 1ps


module cfg_load_controller #(
        // AXI slave parameters
        parameter integer C_S_AXI_DATA_WIDTH = 32,
        parameter integer C_S_AXI_ADDR_WIDTH = 4
    ) (
        // Global Clock Signal
        (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *)
        (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
        input wire S_AXI_ACLK,

        // Global Reset Signal. This Signal is Active LOW
        (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *)
        (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
        input wire S_AXI_ARESETN,

        // Write address (issued by master, acceped by Slave)
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
        (* X_INTERFACE_PARAMETER = "PROTOCOL AXI4LITE, FREQ_HZ 125000000, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_QOS 0, HAS_REGION 0" *)
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
        
        // Write channel Protection type. This signal indicates the
        // privilege and security level of the transaction, and whether
        // the transaction is a data access or an instruction access.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
        input wire [2 : 0] S_AXI_AWPROT,

        // Write address valid. This signal indicates that the master signaling
        // valid write address and control information.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
        input wire S_AXI_AWVALID,

        // Write address ready. This signal indicates that the slave is ready
        // to accept an address and associated control signals.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
        output wire S_AXI_AWREADY,

        // Write data (issued by master, acceped by Slave) 
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
        input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,

        // Write strobes. This signal indicates which byte lanes hold
        // valid data. There is one write strobe bit for each eight
        // bits of the write data bus.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
        input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,

        // Write valid. This signal indicates that valid write data and strobes are available.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
        input wire S_AXI_WVALID,
        
        // Write ready. This signal indicates that the slave can accept the write data.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
        output wire S_AXI_WREADY,

        // Write response. This signal indicates the status of the write transaction.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
        output wire [1 : 0] S_AXI_BRESP,

        // Write response valid. This signal indicates that the channel
        // is signaling a valid write response.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
        output wire S_AXI_BVALID,

        // Response ready. This signal indicates that the master can accept a write response.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
        input wire S_AXI_BREADY,

        // Read address (issued by master, acceped by Slave)
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,

        // Protection type. This signal indicates the privilege
        // and security level of the transaction, and whether the
        // transaction is a data access or an instruction access.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
        input wire [2 : 0] S_AXI_ARPROT,

        // Read address valid. This signal indicates that the channel
        // is signaling valid read address and control information.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
        input wire S_AXI_ARVALID,

        // Read address ready. This signal indicates that the slave is
        // ready to accept an address and associated control signals.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
        output wire S_AXI_ARREADY,

        // Read data (issued by slave)
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
        output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,

        // Read response. This signal indicates the status of the read transfer.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
        output wire [1 : 0] S_AXI_RRESP,

        // Read valid. This signal indicates that the channel is signaling the required read data.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
        output wire S_AXI_RVALID,

        // Read ready. This signal indicates that the master can accept the read data and response information.
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
        input wire S_AXI_RREADY,

        // Signal to load new configuration from BRAM.
        output reg cfg_load,
        // Configuration load is complete (response from config slave).
        input wire cfg_load_done,
        // Apply the currently loaded configuration.
        output reg cfg_apply
    );
    
    localparam STRB_WIDTH = (C_S_AXI_DATA_WIDTH/8);

    wire rst = ~S_AXI_ARESETN;
    
    // Register file.
    reg [C_S_AXI_DATA_WIDTH-1 : 0] r_LOAD_CTRL;
    
    // Register interface towards AXI slave RTL
    wire [C_S_AXI_ADDR_WIDTH-1 : 0] reg_wr_addr;
    wire [C_S_AXI_DATA_WIDTH-1 : 0] reg_wr_data;
    wire [STRB_WIDTH-1 : 0] reg_wr_strb;
    wire reg_wr_en;
    reg reg_wr_wait;
    reg reg_wr_ack;
    
    wire [C_S_AXI_ADDR_WIDTH-1 : 0] reg_rd_addr;
    reg  [C_S_AXI_ADDR_WIDTH-1 : 0] reg_rd_addr_latched;
    wire reg_rd_en;
    reg [C_S_AXI_DATA_WIDTH-1 : 0] reg_rd_data;
    reg reg_rd_wait;
    reg reg_rd_ack;

    axil_reg_if #(
        .DATA_WIDTH(C_S_AXI_DATA_WIDTH),
        .ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
        .STRB_WIDTH(STRB_WIDTH)
    ) axil_reg_if_inst (
        .clk(S_AXI_ACLK),
        .rst(rst),
        
        // AXI-Lite Slave Interface (from CPU AXI-Master)
        .s_axil_awaddr(S_AXI_AWADDR),
        .s_axil_awprot(S_AXI_AWPROT),
        .s_axil_awvalid(S_AXI_AWVALID),
        .s_axil_awready(S_AXI_AWREADY),
        .s_axil_wdata(S_AXI_WDATA),
        .s_axil_wstrb(S_AXI_WSTRB),
        .s_axil_wvalid(S_AXI_WVALID),
        .s_axil_wready(S_AXI_WREADY),
        .s_axil_bresp(S_AXI_BRESP),
        .s_axil_bvalid(S_AXI_BVALID),
        .s_axil_bready(S_AXI_BREADY),
        .s_axil_araddr(S_AXI_ARADDR),
        .s_axil_arprot(S_AXI_ARPROT),
        .s_axil_arvalid(S_AXI_ARVALID),
        .s_axil_arready(S_AXI_ARREADY),
        .s_axil_rdata(S_AXI_RDATA),
        .s_axil_rresp(S_AXI_RRESP),
        .s_axil_rvalid(S_AXI_RVALID),
        .s_axil_rready(S_AXI_RREADY),
        
        // Register interface (towards the register set)
        .reg_wr_addr(reg_wr_addr),
        .reg_wr_data(reg_wr_data),
        .reg_wr_strb(reg_wr_strb),
        .reg_wr_en(reg_wr_en),
        .reg_wr_wait(reg_wr_wait),
        .reg_wr_ack(reg_wr_ack),
        .reg_rd_addr(reg_rd_addr),
        .reg_rd_en(reg_rd_en),
        .reg_rd_data(reg_rd_data),
        .reg_rd_wait(reg_rd_wait),
        .reg_rd_ack(reg_rd_ack)
    );
    
    localparam READ_IDLE = 1'b0;
    localparam READ_DATA = 1'b1;
    
    reg read_state;
    
    integer byte_idx;
    
    // Register logic.
    always @(posedge S_AXI_ACLK) begin
        // Register read logic.
        case (read_state)
            READ_IDLE: begin
                reg_rd_ack <= 1'b0;
                reg_rd_data <= 0;                
            
                if (reg_rd_en) begin
                    reg_rd_addr_latched <= reg_rd_addr;
                    read_state <= READ_DATA;
                end
            end
            
            READ_DATA: begin
                reg_rd_data <= {r_LOAD_CTRL[31:2], 1'b0, cfg_load_busy}; // Test read data.
                reg_rd_ack <= 1'b1;
                
                // Wait for the next read transaction.
                read_state <= READ_IDLE;
            end
        endcase
        
        // Register write logic.
        if (reg_wr_en) begin
            for (byte_idx = 0; byte_idx < STRB_WIDTH; byte_idx = byte_idx + 1)
                if (reg_wr_strb[byte_idx] == 1)
                    r_LOAD_CTRL[(byte_idx*8) +: 8] <= reg_wr_data[(byte_idx*8) +: 8];
                    
            reg_wr_ack <= 1'b1;
        end else begin
            // Reset astable write bits in register
            r_LOAD_CTRL[1:0] <= 2'b00;
        end
        
        if (reg_wr_ack == 1'b1) begin
            reg_wr_ack <= 1'b0;
        end
        
        // Reset logic.
        if (rst == 1'b1) begin
            // Write-related signals
            reg_wr_ack <= 1'b0;
            
            // Read-related signals
            reg_rd_ack <= 1'b0;
            reg_rd_data <= 0;
            reg_rd_addr_latched <= 0;
        
            // We don't use the wait lines in this implementation.
            reg_wr_wait <= 1'b0;
            reg_rd_wait <= 1'b0;
            
            // Register file default values.
            r_LOAD_CTRL <= 0;
        end
    end
    
    wire cfg_load_busy = (cfg_load || cfg_load_done) ? 1'b1 : 1'b0;
    wire cfg_load_trigger = r_LOAD_CTRL[0];
    wire cfg_apply_trigger = r_LOAD_CTRL[1];

    // Config load/apply trigger logic.
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            cfg_load <= 1'b0;
            cfg_apply <= 1'b0;
        end else begin
            if (cfg_load_trigger && !cfg_load_busy) begin
                cfg_load <= 1'b1;
            end else if (cfg_load_done) begin
                cfg_load <= 1'b0;
            end

            cfg_apply <= (cfg_apply_trigger && !cfg_load_busy);
        end
    end

endmodule
