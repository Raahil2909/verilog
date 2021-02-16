`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:54:32 02/09/2021 
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
    input x,
    input rst,
    input clk,
    output reg y
    );

reg [1:0] curState,nextState;

always @(posedge clk or  posedge rst)
begin
	if(rst)
		curState = 0;
	else 
		curState = nextState;
end

always @(x or curState)
begin
	case(curState)
	2'b00: if(x==0) nextState = 2'b00; else nextState = 2'b01;
	2'b01: if(x==0) nextState = 2'b10; else nextState = 2'b01;
	2'b10: if(x==0) nextState = 2'b11; else nextState = 2'b01;
	2'b11: if(x==0) nextState = 2'b00; else nextState = 2'b01;
	endcase
end

always @(curState)
begin
	case(curState)
	2'b00: y = 0;
	2'b01: y = 0;
	2'b10: y = 0;
	2'b11: y = 1;
	endcase
end


endmodule
