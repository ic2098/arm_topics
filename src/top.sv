module top();
wire [39:0]M_AXI_HPM1_FPD_0_araddr;
wire [1:0]M_AXI_HPM1_FPD_0_arburst;
wire [3:0]M_AXI_HPM1_FPD_0_arcache;
wire [15:0]M_AXI_HPM1_FPD_0_arid;
wire [7:0]M_AXI_HPM1_FPD_0_arlen;
wire M_AXI_HPM1_FPD_0_arlock;
wire [2:0]M_AXI_HPM1_FPD_0_arprot;
wire [3:0]M_AXI_HPM1_FPD_0_arqos;
wire M_AXI_HPM1_FPD_0_arready;
wire [2:0]M_AXI_HPM1_FPD_0_arsize;
wire [15:0]M_AXI_HPM1_FPD_0_aruser;
wire M_AXI_HPM1_FPD_0_arvalid;
wire [39:0]M_AXI_HPM1_FPD_0_awaddr;
wire [1:0]M_AXI_HPM1_FPD_0_awburst;
wire [3:0]M_AXI_HPM1_FPD_0_awcache;
wire [15:0]M_AXI_HPM1_FPD_0_awid;
wire [7:0]M_AXI_HPM1_FPD_0_awlen;
wire M_AXI_HPM1_FPD_0_awlock;
wire [2:0]M_AXI_HPM1_FPD_0_awprot;
wire [3:0]M_AXI_HPM1_FPD_0_awqos;
wire M_AXI_HPM1_FPD_0_awready;
wire [2:0]M_AXI_HPM1_FPD_0_awsize;
wire [15:0]M_AXI_HPM1_FPD_0_awuser;
wire M_AXI_HPM1_FPD_0_awvalid;
wire [15:0]M_AXI_HPM1_FPD_0_bid;
wire M_AXI_HPM1_FPD_0_bready;
wire [1:0]M_AXI_HPM1_FPD_0_bresp;
wire M_AXI_HPM1_FPD_0_bvalid;
wire [127:0]M_AXI_HPM1_FPD_0_rdata;
wire [15:0]M_AXI_HPM1_FPD_0_rid;
wire M_AXI_HPM1_FPD_0_rlast;
wire M_AXI_HPM1_FPD_0_rready;
wire [1:0]M_AXI_HPM1_FPD_0_rresp;
wire M_AXI_HPM1_FPD_0_rvalid;
wire [127:0]M_AXI_HPM1_FPD_0_wdata;
wire M_AXI_HPM1_FPD_0_wlast;
wire M_AXI_HPM1_FPD_0_wready;
wire [15:0]M_AXI_HPM1_FPD_0_wstrb;
wire M_AXI_HPM1_FPD_0_wvalid;
wire pl_aresetn;
wire pl_clk0;


l2test_block_wrapper i_dut(.*);
pseudo_ddr i_ddr(.*);

endmodule
