`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:51 01/12/2021 
// Design Name: 
// Module Name:    RippleCarryAdder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RippleCarryAdder(
    input [3:0] a,
    input [3:0] b,
    input c0,
    output c4,
    output [3:0] s
    );
	 wire [3:1] carry;
	 FullAdder F1(a[0],b[0],c0,s[0],carry[1]);
	 FullAdder F2(a[1],b[1],carry[1],s[1],carry[2]);
	 FullAdder F3(a[2],b[2],carry[2],s[2],carry[3]);
	 FullAdder F4(a[3],b[3],carry[3],s[3],c4);


endmodule
