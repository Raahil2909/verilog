`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:59:24 01/27/2021 
// Design Name: 
// Module Name:    mux_gates 
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
module mux_gates(
    output y,
    input i0,
	 input i1,
	 input i2,
	 input i3,
	 input s0,
	 input s1
    );

	
	
	wire [3:0] t;
	
	
	
	assign t[0] = ~s0&~s1&i0;
	assign t[1] = ~s0&s1&i1;
	assign t[2] = s0&~s1&i2;
	assign t[3] = s0&s1&i3;
	
	assign y = t[0] | t[1] | t[2] | t[3] ;

endmodule
