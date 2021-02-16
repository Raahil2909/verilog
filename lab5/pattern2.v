`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:50 02/09/2021 
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
    input x,
    input rst,
    input clk,
    output reg y
    );
reg [2:0] curState,nextState;

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
	3'b000: if(x==0) nextState = 3'b000; else nextState = 3'b001;
	3'b001: if(x==0) nextState = 3'b010; else nextState = 3'b001;
	3'b010: if(x==0) nextState = 3'b011; else nextState = 3'b001;
	3'b011: if(x==0) nextState = 3'b000; else nextState = 3'b100;
	3'b100: if(x==0) nextState = 3'b101; else nextState = 3'b001;
	3'b101: if(x==0) nextState = 3'b011; else nextState = 3'b001;
	default : nextState = 3'b000;
	endcase
end

always @(curState)
begin
	case(curState)
	3'b000: y = 0;
	3'b001: y = 0;
	3'b010: y = 0;
	3'b011: y = 0;
	3'b100: y = 0;
	3'b101: y = 1;
	endcase
end


endmodule
