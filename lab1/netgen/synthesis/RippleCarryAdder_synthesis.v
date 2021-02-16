////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: RippleCarryAdder_synthesis.v
// /___/   /\     Timestamp: Tue Jan 12 17:35:43 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim RippleCarryAdder.ngc RippleCarryAdder_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: RippleCarryAdder.ngc
// Output file	: C:\Users\Rashmin Badiani\Desktop\sem4\hardwarelab\lab1\netgen\synthesis\RippleCarryAdder_synthesis.v
// # of Modules	: 1
// Design Name	: RippleCarryAdder
// Xilinx        : C:\Users\Public\14.7\ISE_DS\ISE\
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

module RippleCarryAdder (
  c0, c4, a, b, s
);
  input c0;
  output c4;
  input [3 : 0] a;
  input [3 : 0] b;
  output [3 : 0] s;
  wire a_0_IBUF_0;
  wire a_1_IBUF_1;
  wire a_2_IBUF_2;
  wire a_3_IBUF_3;
  wire b_0_IBUF_4;
  wire b_1_IBUF_5;
  wire b_2_IBUF_6;
  wire b_3_IBUF_7;
  wire c0_IBUF_8;
  wire s_0_OBUF_9;
  wire s_1_OBUF_10;
  wire s_2_OBUF_12;
  wire s_3_OBUF_13;
  wire c4_OBUF_14;
  wire [2 : 2] carry;
  LUT3 #(
    .INIT ( 8'h96 ))
  \F1/h2/Mxor_s_xo<0>1  (
    .I0(a_0_IBUF_0),
    .I1(b_0_IBUF_4),
    .I2(c0_IBUF_8),
    .O(s_0_OBUF_9)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \F3/h2/Mxor_s_xo<0>1  (
    .I0(a_2_IBUF_2),
    .I1(b_2_IBUF_6),
    .I2(carry[2]),
    .O(s_2_OBUF_12)
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \F2/cout1  (
    .I0(a_1_IBUF_1),
    .I1(b_1_IBUF_5),
    .I2(b_0_IBUF_4),
    .I3(c0_IBUF_8),
    .I4(a_0_IBUF_0),
    .O(carry[2])
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \F2/h2/Mxor_s_xo<0>1  (
    .I0(a_1_IBUF_1),
    .I1(b_1_IBUF_5),
    .I2(b_0_IBUF_4),
    .I3(c0_IBUF_8),
    .I4(a_0_IBUF_0),
    .O(s_1_OBUF_10)
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \F4/cout1  (
    .I0(a_3_IBUF_3),
    .I1(b_3_IBUF_7),
    .I2(b_2_IBUF_6),
    .I3(carry[2]),
    .I4(a_2_IBUF_2),
    .O(c4_OBUF_14)
  );
  LUT5 #(
    .INIT ( 32'h99969666 ))
  \F4/h2/Mxor_s_xo<0>1  (
    .I0(a_3_IBUF_3),
    .I1(b_3_IBUF_7),
    .I2(b_2_IBUF_6),
    .I3(carry[2]),
    .I4(a_2_IBUF_2),
    .O(s_3_OBUF_13)
  );
  IBUF   a_3_IBUF (
    .I(a[3]),
    .O(a_3_IBUF_3)
  );
  IBUF   a_2_IBUF (
    .I(a[2]),
    .O(a_2_IBUF_2)
  );
  IBUF   a_1_IBUF (
    .I(a[1]),
    .O(a_1_IBUF_1)
  );
  IBUF   a_0_IBUF (
    .I(a[0]),
    .O(a_0_IBUF_0)
  );
  IBUF   b_3_IBUF (
    .I(b[3]),
    .O(b_3_IBUF_7)
  );
  IBUF   b_2_IBUF (
    .I(b[2]),
    .O(b_2_IBUF_6)
  );
  IBUF   b_1_IBUF (
    .I(b[1]),
    .O(b_1_IBUF_5)
  );
  IBUF   b_0_IBUF (
    .I(b[0]),
    .O(b_0_IBUF_4)
  );
  IBUF   c0_IBUF (
    .I(c0),
    .O(c0_IBUF_8)
  );
  OBUF   s_3_OBUF (
    .I(s_3_OBUF_13),
    .O(s[3])
  );
  OBUF   s_2_OBUF (
    .I(s_2_OBUF_12),
    .O(s[2])
  );
  OBUF   s_1_OBUF (
    .I(s_1_OBUF_10),
    .O(s[1])
  );
  OBUF   s_0_OBUF (
    .I(s_0_OBUF_9),
    .O(s[0])
  );
  OBUF   c4_OBUF (
    .I(c4_OBUF_14),
    .O(c4)
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

