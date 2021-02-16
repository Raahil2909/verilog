`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:38 02/02/2021 
// Design Name: 
// Module Name:    part3 
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
module part3(
    input  [3:0] q,
    output reg [3:0] d,
    input clr,
    input clk,
    input load
    );
 always @(posedge clk || clr)
	 begin
		//assign d = (load)?((!clr)?q:4'b0000):d;
		assign d = (clr)?4'b0000:((load)?q:d);
		
	end

endmodule
