`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:54:21 01/27/2021 
// Design Name: 
// Module Name:    mux_cond 
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
module mux_cond(
    output y,
    input [3:0] i,
    input [1:0] sel
    );
	 assign y = sel==2'b00 ? i[0] :
					sel==2'b01 ? i[1] :
					sel==2'b10 ? i[2] :
					i[3];
					
					


endmodule
