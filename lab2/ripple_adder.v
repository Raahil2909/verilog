`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:01 01/19/2021 
// Design Name: 
// Module Name:    ripple_adder 
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
module ripple_adder(
    input [3:0] a,
    input [3:0] b,
    input c0,
    output cout,
    output [3:0] sum
    );
	 
	 wire [3:1] carry;
	 full_adder #2 F1(a[0],b[0],c0,sum[0],carry[1]);
	 full_adder #2 F2(a[1],b[1],carry[1],sum[1],carry[2]);
	 full_adder #2 F3(a[2],b[2],carry[2],sum[2],carry[3]);
	 full_adder #2 F4(a[3],b[3],carry[3],sum[3],cout);



endmodule
