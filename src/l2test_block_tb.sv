//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Sun Sep 22 15:13:49 2024
//Host        : DESKTOP-2PQ9B98 running 64-bit major release  (build 9200)
//Command     : generate_target l2test_block_wrapper.bd
//Design      : l2test_block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define CLK_PER 10

module l2test_block_wrapper (
  output logic  [39:0]  M_AXI_HPM1_FPD_0_araddr    ,
  output logic  [1:0]   M_AXI_HPM1_FPD_0_arburst   ,
  output logic  [3:0]   M_AXI_HPM1_FPD_0_arcache   ,
  output logic  [15:0]  M_AXI_HPM1_FPD_0_arid      ,
  output logic  [7:0]   M_AXI_HPM1_FPD_0_arlen     ,
  output logic          M_AXI_HPM1_FPD_0_arlock    ,
  output logic  [2:0]   M_AXI_HPM1_FPD_0_arprot    ,
  output logic  [3:0]   M_AXI_HPM1_FPD_0_arqos     ,
  input  logic          M_AXI_HPM1_FPD_0_arready   ,
  output logic  [2:0]   M_AXI_HPM1_FPD_0_arsize    ,
  output logic  [15:0]  M_AXI_HPM1_FPD_0_aruser    ,
  output logic          M_AXI_HPM1_FPD_0_arvalid   ,
  output logic  [39:0]  M_AXI_HPM1_FPD_0_awaddr    ,
  output logic  [1:0]   M_AXI_HPM1_FPD_0_awburst   ,
  output logic  [3:0]   M_AXI_HPM1_FPD_0_awcache   ,
  output logic  [15:0]  M_AXI_HPM1_FPD_0_awid      ,
  output logic  [7:0]   M_AXI_HPM1_FPD_0_awlen     ,
  output logic          M_AXI_HPM1_FPD_0_awlock    ,
  output logic  [2:0]   M_AXI_HPM1_FPD_0_awprot    ,
  output logic  [3:0]   M_AXI_HPM1_FPD_0_awqos     ,
  input  logic          M_AXI_HPM1_FPD_0_awready   ,
  output logic  [2:0]   M_AXI_HPM1_FPD_0_awsize    ,
  output logic  [15:0]  M_AXI_HPM1_FPD_0_awuser    ,
  output logic          M_AXI_HPM1_FPD_0_awvalid   ,
  input  logic [15:0]   M_AXI_HPM1_FPD_0_bid       ,
  output logic          M_AXI_HPM1_FPD_0_bready    ,
  input  logic [1:0]    M_AXI_HPM1_FPD_0_bresp     ,
  input  logic          M_AXI_HPM1_FPD_0_bvalid    ,
  input  logic [127:0]  M_AXI_HPM1_FPD_0_rdata     ,
  input  logic [15:0]   M_AXI_HPM1_FPD_0_rid       ,
  input  logic          M_AXI_HPM1_FPD_0_rlast     ,
  output logic          M_AXI_HPM1_FPD_0_rready    ,
  input  logic [1:0]    M_AXI_HPM1_FPD_0_rresp     ,
  input  logic          M_AXI_HPM1_FPD_0_rvalid    ,
  output logic  [127:0] M_AXI_HPM1_FPD_0_wdata    ,
  output logic          M_AXI_HPM1_FPD_0_wlast    ,
  input  logic          M_AXI_HPM1_FPD_0_wready   ,
  output logic  [15:0]  M_AXI_HPM1_FPD_0_wstrb    ,
  output logic          M_AXI_HPM1_FPD_0_wvalid   ,
  output logic          pl_aresetn  ,
  output logic          pl_clk0
	 );
 
logic [39:0]  araddr   ;
logic [1:0]   arburst  ;
logic [3:0]   arcache  ;
logic [15:0]  arid     ;
logic [7:0]   arlen    ;
logic         arlock   ;
logic [2:0]   arprot   ;
logic [3:0]   arqos    ;
logic         arready  ;
logic [2:0]   arsize   ;
logic [15:0]  aruser   ;
logic         arvalid  ;
logic [39:0]  awaddr   ;
logic [1:0]   awburst  ;
logic [3:0]   awcache  ;
logic [15:0]  awid     ;
logic [7:0]   awlen    ;
logic         awlock   ;
logic [2:0]   awprot   ;
logic [3:0]   awqos    ;
logic         awready  ;
logic [2:0]   awsize   ;
logic [15:0]  awuser   ;
logic         awvalid  ;
logic [15:0]  bid      ;
logic         bready   ;
logic [1:0]   bresp    ;
logic         bvalid   ;
logic [127:0] rdata    ;
logic [15:0]  rid      ;
logic         rlast    ;
logic         rready   ;
logic [1:0]   rresp    ;
logic         rvalid   ;
logic [127:0] wdata    ;
logic         wlast    ;
logic         wready   ;
logic [15:0]  wstrb    ;
logic         wvalid   ;

event trx;

logic          rst_n;
logic          clk;
assign pl_aresetn  = rst_n;
assign pl_clk0     = clk;

// clock/reset gen
initial begin
  clk  <= 1'b0;
  rst_n <= 1'b0;
  fork
    begin
      forever begin
        #(`CLK_PER/2) clk<= 1'b0;
        #(`CLK_PER/2) clk  <= 1'b1;
      end
    end
    begin
      repeat(10) @(posedge clk);
      rst_n <= 1'b0;
      repeat(10) @(posedge clk);
      rst_n <= 1'b1;
      repeat(10) @(posedge clk);
      ->trx;
    end
  join
end

task simple_write;
begin
	awvalid  <= 1'd0;
	repeat(1) @(posedge clk);
	awaddr   <= 40'h00B0000000; // logic [39:0] 
	awburst  <= 2'b00; // [1:0]  
	awcache  <= 4'd0;  // [3:0]  
	awid     <= 16'd0; // [15:0] 
	awlen    <= 8'h10; // [7:0]  
	awlock   <= 1'b0;  //        
	awprot   <= 3'd0;  // [2:0]  
	awqos    <= 4'd0;  // [3:0]  
	awsize   <= 3'd0;  // [2:0]  
	awuser   <= 'd0;   // [15:0] 
	awvalid  <= 1'd1;
	do begin
	  @(posedge clk);
	end while (~awready);
	awvalid  <= 1'd0;
	for (int i=0; i<16; i++) begin
		wdata    <= 'd0;
		wstrb    <= 16'hFFFF;
		wvalid   <= 1'b1;
		if (i==15)
			wlast    <= 1'b1;
		do begin
			@(posedge clk);
		end while (~wready);
	end
	wlast    <= 1'b0;
	wvalid   <= 1'b0;
	bready <= 1'b1;
	do begin
	  @(posedge clk);
	end while (~bvalid);
	bready <= 1'b0;
end
endtask
	
task simple_read;
begin
	arvalid  <= 1'd0;
	repeat(1) @(posedge clk);
	araddr   <= 40'h00B0000000; // logic [39:0] 
	arburst  <= 2'b00; // [1:0]  
	arcache  <= 4'd0;  // [3:0]  
	arid     <= 16'd0; // [15:0] 
	arlen    <= 8'h10; // [7:0]  
	arlock   <= 1'b0;  //        
	arprot   <= 3'd0;  // [2:0]  
	arqos    <= 4'd0;  // [3:0]  
	arsize   <= 3'd0;  // [2:0]  
	aruser   <= 'd0;   // [15:0] 
	arvalid  <= 1'd1;
	do begin
	  @(posedge clk);
	end while (~arready);
	arvalid  <= 1'd0;
	rready   <= 1'b1;
	for (int i=0; i<16; i++) begin
		do begin
			@(posedge clk);
		end while (~rvalid);
	end
	rready   <= 1'b0;
end
endtask
	

initial begin
  repeat(100) @(posedge clk);

  repeat(10) @(posedge clk);
	simple_write();

  repeat(10) @(posedge clk);
	simple_read();

  repeat(100) @(posedge clk);
	$stop();
end


assign M_AXI_HPM1_FPD_0_araddr  = araddr   ;
assign M_AXI_HPM1_FPD_0_arburst = arburst  ;
assign M_AXI_HPM1_FPD_0_arcache = arcache  ;
assign M_AXI_HPM1_FPD_0_arid    = arid     ;
assign M_AXI_HPM1_FPD_0_arlen   = arlen    ;
assign M_AXI_HPM1_FPD_0_arlock  = arlock   ;
assign M_AXI_HPM1_FPD_0_arprot  = arprot   ;
assign M_AXI_HPM1_FPD_0_arqos   = arqos    ;
assign M_AXI_HPM1_FPD_0_arsize  = arsize   ;
assign M_AXI_HPM1_FPD_0_aruser  = aruser   ;
assign M_AXI_HPM1_FPD_0_arvalid = arvalid  ;
assign M_AXI_HPM1_FPD_0_awaddr  = awaddr   ;
assign M_AXI_HPM1_FPD_0_awburst = awburst  ;
assign M_AXI_HPM1_FPD_0_awcache = awcache  ;
assign M_AXI_HPM1_FPD_0_awid    = awid     ;
assign M_AXI_HPM1_FPD_0_awlen   = awlen    ;
assign M_AXI_HPM1_FPD_0_awlock  = awlock   ;
assign M_AXI_HPM1_FPD_0_awprot  = awprot   ;
assign M_AXI_HPM1_FPD_0_awqos   = awqos    ;
assign M_AXI_HPM1_FPD_0_awsize  = awsize   ;
assign M_AXI_HPM1_FPD_0_awuser  = awuser   ;
assign M_AXI_HPM1_FPD_0_awvalid = awvalid  ;
assign M_AXI_HPM1_FPD_0_bready  = bready   ;
assign M_AXI_HPM1_FPD_0_rready  = rready   ;
assign M_AXI_HPM1_FPD_0_wdata   = wdata    ;
assign M_AXI_HPM1_FPD_0_wlast   = wlast    ;
assign M_AXI_HPM1_FPD_0_wstrb   = wstrb    ;
assign M_AXI_HPM1_FPD_0_wvalid  = wvalid   ;

assign arready = M_AXI_HPM1_FPD_0_arready ;
assign awready = M_AXI_HPM1_FPD_0_awready ;
assign bid     = M_AXI_HPM1_FPD_0_bid     ;
assign bresp   = M_AXI_HPM1_FPD_0_bresp   ;
assign bvalid  = M_AXI_HPM1_FPD_0_bvalid  ;
assign rdata   = M_AXI_HPM1_FPD_0_rdata   ;
assign rid     = M_AXI_HPM1_FPD_0_rid     ;
assign rlast   = M_AXI_HPM1_FPD_0_rlast   ;
assign rresp   = M_AXI_HPM1_FPD_0_rresp   ;
assign rvalid  = M_AXI_HPM1_FPD_0_rvalid  ;
assign wready  = M_AXI_HPM1_FPD_0_wready  ;
	
endmodule
