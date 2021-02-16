`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:31 02/02/2021 
// Design Name: 
// Module Name:    part1 
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
module part1(
    output a,
    output b,
    output c,
	 output e,
	 output f,
	 output g
    );
	 reg a,b,c;
	 reg e,f,g;
	 
	 initial begin
		a <= #5 1'b1;
		b <= #5 1'b1;
		c <= #5 1'b1;
	 end
	
	initial begin
		e = #5 1'b1;
		f = #5 1'b1;
		g = #5 1'b1;
	end
endmodule
