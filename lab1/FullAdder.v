`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:33 01/12/2021 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
	 
	 wire carry_temp,sum_temp,carry_temp2;
	 HalfAdder h1(a,b,carry_temp,sum_temp);
	 HalfAdder h2(sum_temp,cin,carry_temp2,s);
	 
	 assign cout = carry_temp2 | carry_temp;
	 


endmodule
