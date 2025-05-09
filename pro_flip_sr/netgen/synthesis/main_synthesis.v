////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: main_synthesis.v
// /___/   /\     Timestamp: Fri May 09 16:39:49 2025
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim main.ngc main_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: main.ngc
// Output file	: C:\ISE_Projects\pro_flip_sr\netgen\synthesis\main_synthesis.v
// # of Modules	: 1
// Design Name	: main
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module main (
  S, R, Q, Qn
);
  input S;
  input R;
  output Q;
  output Qn;
  wire S_IBUF_0;
  wire R_IBUF_1;
  wire S_GND_4_o_AND_4_o;
  wire S_GND_4_o_AND_5_o;
  wire q_temp_4;
  wire qn_temp_5;
  wire N1;
  wire q_temp_G_11;
  wire q_temp_D_12;
  wire qn_temp_G_13;
  wire qn_temp_D_14;
  GND   XST_GND (
    .G(N1)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  S_GND_4_o_AND_4_o1 (
    .I0(R_IBUF_1),
    .I1(S_IBUF_0),
    .O(S_GND_4_o_AND_4_o)
  );
  IBUF   S_IBUF (
    .I(S),
    .O(S_IBUF_0)
  );
  IBUF   R_IBUF (
    .I(R),
    .O(R_IBUF_1)
  );
  OBUF   Q_OBUF (
    .I(q_temp_4),
    .O(Q)
  );
  OBUF   Qn_OBUF (
    .I(qn_temp_5),
    .O(Qn)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  q_temp_G (
    .I0(N1),
    .I1(S_GND_4_o_AND_5_o),
    .I2(S_GND_4_o_AND_4_o),
    .O(q_temp_G_11)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  q_temp_D (
    .I0(S_GND_4_o_AND_5_o),
    .I1(S_GND_4_o_AND_4_o),
    .I2(N1),
    .O(q_temp_D_12)
  );
  LD #(
    .INIT ( 1'b0 ))
  q_temp (
    .D(q_temp_D_12),
    .G(q_temp_G_11),
    .Q(q_temp_4)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  qn_temp_G (
    .I0(N1),
    .I1(S_GND_4_o_AND_4_o),
    .I2(S_GND_4_o_AND_5_o),
    .O(qn_temp_G_13)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  qn_temp_D (
    .I0(S_GND_4_o_AND_4_o),
    .I1(S_GND_4_o_AND_5_o),
    .I2(N1),
    .O(qn_temp_D_14)
  );
  LD #(
    .INIT ( 1'b1 ))
  qn_temp (
    .D(qn_temp_D_14),
    .G(qn_temp_G_13),
    .Q(qn_temp_5)
  );
  INV   S_GND_4_o_AND_5_o1_INV_0 (
    .I(R_IBUF_1),
    .O(S_GND_4_o_AND_5_o)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

