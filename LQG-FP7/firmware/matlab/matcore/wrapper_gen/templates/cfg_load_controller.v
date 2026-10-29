`timescale 1ns / 1ps


module cfg_load_controller #(
        // AXI slave parameters
        parameter integer C_S_AXI_DATA_WIDTH = 32,
        parameter integer C_S_AXI_ADDR_WIDTH = 4
    ) (
        // Global Clock Signal
        (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *)
        input wire S_AXI_ACLK,

        // Global Reset Signal. This Signal is Active LOW
        (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *)
        (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
        input wire S_AXI_ARESETN,

        // Write address (issued by master, acceped by Slave)
        (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
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

    // AXI4LITE signals
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_awaddr;
    reg axi_awready;
    reg axi_wready;
    reg [1 : 0] axi_bresp;
    reg axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_araddr;
    reg axi_arready;
    reg [1 : 0] axi_rresp;
    reg axi_rvalid;

    // Example-specific design signals
    // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    // ADDR_LSB is used for addressing 32/64 bit registers/memories
    // ADDR_LSB = 2 for 32 bits (n downto 2)
    // ADDR_LSB = 3 for 64 bits (n downto 3)
    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 1;

    //----------------------------------------------
    //-- Signals for user logic register space example
    //------------------------------------------------
    //-- Number of Slave Registers 4
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg0;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg1;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg2;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg3;
    integer byte_index;

    wire cfg_load_busy = (cfg_load || cfg_load_done) ? 1'b1 : 1'b0;
    wire cfg_load_trigger = slv_reg0[0];
    wire cfg_apply_trigger = slv_reg0[1];

    // I/O Connections assignments
    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;

    // State machine varibles 
    reg [1:0] state_write;
    reg [1:0] state_read;
    // State machine local parameters
    localparam Idle = 2'b00;
    localparam Raddr = 2'b10;
    localparam Rdata = 2'b11;
    localparam Waddr = 2'b10;
    localparam Wdata = 2'b11;

    // Implement Write state machine
    // Outstanding write transactions are not supported by the slave i.e.,
    // master should assert bready to receive response on or before it starts sending the new transaction
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_awready <= 0;
            axi_wready <= 0;
            axi_bvalid <= 0;
            axi_bresp <= 0;
            axi_awaddr <= 0;
            state_write <= Idle;
        end else begin
            case (state_write)
                Idle: begin
                    if (S_AXI_ARESETN == 1'b1) begin
                        axi_awready <= 1'b1;
                        axi_wready <= 1'b1;
                        state_write <= Waddr;
                    end else state_write <= state_write;
                end
                Waddr: begin
                    if (S_AXI_AWVALID && S_AXI_AWREADY) begin
                        axi_awaddr <= S_AXI_AWADDR;
                        if (S_AXI_WVALID) begin
                            axi_awready <= 1'b1;
                            state_write <= Waddr;
                            axi_bvalid <= 1'b1;
                        end else begin
                            axi_awready <= 1'b0;
                            state_write <= Wdata;
                            if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
                        end
                    end else begin
                        state_write <= state_write;
                        if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
                    end
                end
                Wdata: begin
                    if (S_AXI_WVALID) begin
                        state_write <= Waddr;
                        axi_bvalid <= 1'b1;
                        axi_awready <= 1'b1;
                    end else begin
                        state_write <= state_write;
                        if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
                    end
                end
            endcase
        end
    end

    // Implement memory mapped register select and write logic generation
    // The write data is accepted and written to memory mapped registers when
    // axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
    // select byte enables of slave registers while writing.
    // These registers are cleared when reset (active low) is applied.
    // Slave register write enable is asserted when valid address and data are available
    // and the slave is ready to accept the write address and write data.
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_reg0 <= 0;
            slv_reg1 <= 0;
            slv_reg2 <= 0;
            slv_reg3 <= 0;
        end else begin
            if (S_AXI_WVALID) begin
                case ((S_AXI_AWVALID) ? S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
                    2'h0:
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index] == 1)
                                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    2'h1:
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index] == 1)
                                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    2'h2:
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index] == 1)
                                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    2'h3:
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index] == 1)
                                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                    default: begin
                        slv_reg0 <= slv_reg0;
                        slv_reg1 <= slv_reg1;
                        slv_reg2 <= slv_reg2;
                        slv_reg3 <= slv_reg3;
                    end
                endcase
            end else begin
                // Reset astable bits to 0.
                slv_reg0 <= 0;
                slv_reg1 <= slv_reg1;
                slv_reg2 <= slv_reg2;
                slv_reg3 <= slv_reg3;
            end
        end
    end

    // Implement read state machine
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            // asserting initial values to all 0's during reset
            axi_arready <= 1'b0;
            axi_rvalid <= 1'b0;
            axi_rresp <= 1'b0;
            state_read <= Idle;
        end else begin
            case (state_read)
                Idle: begin
                    if (S_AXI_ARESETN == 1'b1) begin
                        state_read <= Raddr;
                        axi_arready <= 1'b1;
                    end else state_read <= state_read;
                end
                Raddr: begin
                    if (S_AXI_ARVALID && S_AXI_ARREADY) begin
                        state_read <= Rdata;
                        axi_araddr <= S_AXI_ARADDR;
                        axi_rvalid <= 1'b1;
                        axi_arready <= 1'b0;
                    end else state_read <= state_read;
                end
                Rdata: begin
                    if (S_AXI_RVALID && S_AXI_RREADY) begin
                        axi_rvalid <= 1'b0;
                        axi_arready <= 1'b1;
                        state_read <= Raddr;
                    end else state_read <= state_read;
                end
            endcase
        end
    end

    // Implement memory mapped register select and read logic generation
    assign S_AXI_RDATA = 
        (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 2'h0) ? {slv_reg0[31:2], 1'b0, cfg_load_busy} : // slv_reg0 by default here.
        (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 2'h1) ? slv_reg1 :
        (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 2'h2) ? slv_reg2 :
        (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 2'h3) ? slv_reg3 : 0;

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
