 //Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sun Sep 22 14:55:53 2024
//Host        : DESKTOP-2PQ9B98 running 64-bit major release  (build 9200)
//Command     : generate_target l2test_block_wrapper.bd
//Design      : l2test_block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pseudo_ddr
   (  pl_aresetn,
      pl_clk0,
    M_AXI_HPM1_FPD_0_araddr,
    M_AXI_HPM1_FPD_0_arburst,
    M_AXI_HPM1_FPD_0_arcache,
    M_AXI_HPM1_FPD_0_arid,
    M_AXI_HPM1_FPD_0_arlen,
    M_AXI_HPM1_FPD_0_arlock,
    M_AXI_HPM1_FPD_0_arprot,
    M_AXI_HPM1_FPD_0_arqos,
    M_AXI_HPM1_FPD_0_arready,
    M_AXI_HPM1_FPD_0_arsize,
    M_AXI_HPM1_FPD_0_aruser,
    M_AXI_HPM1_FPD_0_arvalid,
    M_AXI_HPM1_FPD_0_awaddr,
    M_AXI_HPM1_FPD_0_awburst,
    M_AXI_HPM1_FPD_0_awcache,
    M_AXI_HPM1_FPD_0_awid,
    M_AXI_HPM1_FPD_0_awlen,
    M_AXI_HPM1_FPD_0_awlock,
    M_AXI_HPM1_FPD_0_awprot,
    M_AXI_HPM1_FPD_0_awqos,
    M_AXI_HPM1_FPD_0_awready,
    M_AXI_HPM1_FPD_0_awsize,
    M_AXI_HPM1_FPD_0_awuser,
    M_AXI_HPM1_FPD_0_awvalid,
    M_AXI_HPM1_FPD_0_bid,
    M_AXI_HPM1_FPD_0_bready,
    M_AXI_HPM1_FPD_0_bresp,
    M_AXI_HPM1_FPD_0_bvalid,
    M_AXI_HPM1_FPD_0_rdata,
    M_AXI_HPM1_FPD_0_rid,
    M_AXI_HPM1_FPD_0_rlast,
    M_AXI_HPM1_FPD_0_rready,
    M_AXI_HPM1_FPD_0_rresp,
    M_AXI_HPM1_FPD_0_rvalid,
    M_AXI_HPM1_FPD_0_wdata,
    M_AXI_HPM1_FPD_0_wlast,
    M_AXI_HPM1_FPD_0_wready,
    M_AXI_HPM1_FPD_0_wstrb,
    M_AXI_HPM1_FPD_0_wvalid);
  input [39:0]M_AXI_HPM1_FPD_0_araddr;
  input [1:0]M_AXI_HPM1_FPD_0_arburst;
  input [3:0]M_AXI_HPM1_FPD_0_arcache;
  input [15:0]M_AXI_HPM1_FPD_0_arid;
  input [7:0]M_AXI_HPM1_FPD_0_arlen;
  input M_AXI_HPM1_FPD_0_arlock;
  input [2:0]M_AXI_HPM1_FPD_0_arprot;
  input [3:0]M_AXI_HPM1_FPD_0_arqos;
  output M_AXI_HPM1_FPD_0_arready;
  input [2:0]M_AXI_HPM1_FPD_0_arsize;
  input [15:0]M_AXI_HPM1_FPD_0_aruser;
  input M_AXI_HPM1_FPD_0_arvalid;
  input [39:0]M_AXI_HPM1_FPD_0_awaddr;
  input [1:0]M_AXI_HPM1_FPD_0_awburst;
  input [3:0]M_AXI_HPM1_FPD_0_awcache;
  input [15:0]M_AXI_HPM1_FPD_0_awid;
  input [7:0]M_AXI_HPM1_FPD_0_awlen;
  input M_AXI_HPM1_FPD_0_awlock;
  input [2:0]M_AXI_HPM1_FPD_0_awprot;
  input [3:0]M_AXI_HPM1_FPD_0_awqos;
  output M_AXI_HPM1_FPD_0_awready;
  input [2:0]M_AXI_HPM1_FPD_0_awsize;
  input [15:0]M_AXI_HPM1_FPD_0_awuser;
  input M_AXI_HPM1_FPD_0_awvalid;
  output [15:0]M_AXI_HPM1_FPD_0_bid;
  input M_AXI_HPM1_FPD_0_bready;
  output [1:0]M_AXI_HPM1_FPD_0_bresp;
  output M_AXI_HPM1_FPD_0_bvalid;
  output [127:0]M_AXI_HPM1_FPD_0_rdata;
  output [15:0]M_AXI_HPM1_FPD_0_rid;
  output M_AXI_HPM1_FPD_0_rlast;
  input M_AXI_HPM1_FPD_0_rready;
  output [1:0]M_AXI_HPM1_FPD_0_rresp;
  output M_AXI_HPM1_FPD_0_rvalid;
  input [127:0]M_AXI_HPM1_FPD_0_wdata;
  input M_AXI_HPM1_FPD_0_wlast;
  output M_AXI_HPM1_FPD_0_wready;
  input [15:0]M_AXI_HPM1_FPD_0_wstrb;
  input M_AXI_HPM1_FPD_0_wvalid;
  input pl_aresetn;
  input pl_clk0;

logic [39:0] araddr                         ;
logic [1:0]  arburst                        ;
logic [3:0]  arcache                        ;
logic [15:0] arid                           ;
logic [7:0]  arlen                          ;
logic        arlock                         ;
logic [2:0]  arprot                         ;
logic [3:0]  arqos                          ;
logic        arready                        ;
logic [2:0]  arsize                         ;
logic [15:0] aruser                         ;
logic        arvalid                        ;
logic [39:0] awaddr                         ;
logic [1:0]  awburst                        ;
logic [3:0]  awcache                        ;
logic [15:0] awid                           ;
logic [7:0]  awlen                          ;
logic        awlock                         ;
logic [2:0]  awprot                         ;
logic [3:0]  awqos                          ;
logic        awready                        ;
logic [2:0]  awsize                         ;
logic [15:0] awuser                         ;
logic        awvalid                        ;
logic [15:0] bid                            ;
logic        bready                         ;
logic [1:0]  bresp                          ;
logic        bvalid                         ;
logic [127:0]rdata                          ;
logic [15:0] rid                            ;
logic        rlast                          ;
logic        rready                         ;
logic [1:0]  rresp                          ;
logic        rvalid                         ;
logic [127:0]wdata                          ;
logic        wlast                          ;
logic        wready                         ;
logic [15:0] wstrb                          ;
logic        wvalid                         ;

logic clk;
logic arstn;

assign clk    = pl_clk0;
assign arstn  = pl_aresetn;
assign M_AXI_HPM1_FPD_0_awready = awready;
assign M_AXI_HPM1_FPD_0_bid     = bid;
assign sM_AXI_HPM1_FPD_0_bresp  = bresp;
assign M_AXI_HPM1_FPD_0_bvalid  = bvalid;

assign M_AXI_HPM1_FPD_0_rdata   = rdata ;
assign M_AXI_HPM1_FPD_0_rid     = rid   ;
assign M_AXI_HPM1_FPD_0_rlast   = rlast ;
assign M_AXI_HPM1_FPD_0_rresp   = rresp ;
assign M_AXI_HPM1_FPD_0_rvalid  = rvalid;
assign M_AXI_HPM1_FPD_0_arready = arready;

typedef enum logic [2:0] {S0_ADDR, S1_DATA, S2_RSP} statetype;
statetype readstate, writestate;
logic [7:0] wcnt, rcnt;

always @(posedge clk or negedge arstn) begin
	if (~arstn) begin
		writestate <= S0_ADDR;
		readstate  <= S0_ADDR;
		awaddr  <= 'd0;
		awburst <= 'd0;
		awcache <= 'd0;
		awid    <= 'd0;
		awlen   <= 'd0;
		awlock  <= 'd0;
		awprot  <= 'd0;
		awqos   <= 'd0;
		awready <= 'd0;
		awsize  <= 'd0;
		awuser  <= 'd0;
		wready  <= 'd0;
		bvalid  <= 'd0;
		bid     <= 'd0;
		bresp   <= 'd0;
    araddr  <= 'd0;
    arburst <= 'd0;
    arcache <= 'd0;
    arid    <= 'd0;
    arlen   <= 'd0;
    arlock  <= 'd0;
    arprot  <= 'd0;
    arqos   <= 'd0;
    arready <= 'd0;
    arsize  <= 'd0;
    aruser  <= 'd0;
    rid     <= 'd0;
    rlast   <= 'd0;
    rresp   <= 'd0;
    rvalid  <= 'd0;
    wcnt    <= 8'd0;
    rcnt    <= 8'd0;
    end
	else begin
		awready <= 1'b0;
		wready  <= 1'b0;
		arready <= 1'b0;
		bvalid  <= 1'b0;
		rvalid  <= 1'b0;
		rlast   <= 1'b0;
		case (writestate)
		S0_ADDR : begin
			if (M_AXI_HPM1_FPD_0_awvalid) begin
				awaddr  <= M_AXI_HPM1_FPD_0_awaddr;
				awburst <= M_AXI_HPM1_FPD_0_awburst;
				awcache <= M_AXI_HPM1_FPD_0_awcache;
				awid    <= M_AXI_HPM1_FPD_0_awid;
				awlen   <= M_AXI_HPM1_FPD_0_awlen;
				awlock  <= M_AXI_HPM1_FPD_0_awlock;
				awprot  <= M_AXI_HPM1_FPD_0_awprot;
				awqos   <= M_AXI_HPM1_FPD_0_awqos;
				awsize  <= M_AXI_HPM1_FPD_0_awsize;
				awuser  <= M_AXI_HPM1_FPD_0_awuser;
				awvalid <= M_AXI_HPM1_FPD_0_awvalid;
				awready <= 1'b1;
				writestate <= S1_DATA;
			end
		end
		S1_DATA : begin
			if (M_AXI_HPM1_FPD_0_wvalid && M_AXI_HPM1_FPD_0_wlast) begin
				// I dont care write.
				bid    <= awid;
				bvalid <= 1'b1;
				bresp  <= 'd0;
				writestate <= S2_RSP;
			end
			wready <= 1'b1;
		end
		S2_RSP : begin
			if (M_AXI_HPM1_FPD_0_bready) begin
				bid        <= 'd0;
				bvalid     <= 1'b0;
				writestate <= S0_ADDR;
			end
		end
		endcase

		case (readstate)
		S0_ADDR : begin
			if (M_AXI_HPM1_FPD_0_arvalid) begin
				araddr  <= M_AXI_HPM1_FPD_0_araddr ;
				arburst <= M_AXI_HPM1_FPD_0_arburst;
				arcache <= M_AXI_HPM1_FPD_0_arcache;
				arid    <= M_AXI_HPM1_FPD_0_arid   ;
				arlen   <= M_AXI_HPM1_FPD_0_arlen  ;
				arlock  <= M_AXI_HPM1_FPD_0_arlock ;
				arprot  <= M_AXI_HPM1_FPD_0_arprot ;
				arqos   <= M_AXI_HPM1_FPD_0_arqos  ;
				arsize  <= M_AXI_HPM1_FPD_0_arsize ;
				aruser  <= M_AXI_HPM1_FPD_0_aruser ;
				arready <= 1'b1;
		    rcnt    <= 8'd0;
				readstate <= S1_DATA;
			end
		end
		S1_DATA : begin
			rid     <= arid;
			rvalid  <= 1'b1;
			rdata   <= araddr;
			if (rvalid && M_AXI_HPM1_FPD_0_rready) begin
				rdata   <= rdata + 'd1;
		    rcnt    <= rcnt + 8'd1;
				if (rcnt == arlen - 1) begin
					rlast     <= 1'b1;
					readstate <= S0_ADDR;				
				end
			end
		end
		endcase
	end
end

endmodule
