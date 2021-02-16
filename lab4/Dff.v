`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:24 02/02/2021 
// Design Name: 
// Module Name:    part2 
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
module part2(
    output reg [2:0] q,
    input a,
    input clk
    );
	 
	 //always @(posedge clk)
	 //begin
		//q[2] = q[1];
		//q[1] = q[0];
		//q[0] = a;
	 //end
	 
	 always @(posedge clk)
	 begin
		q[2] <= q[1];
		q[1] <= q[0];
		q[0] <= a;
	 end
	 
	 

endmodule
