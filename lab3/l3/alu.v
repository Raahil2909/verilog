`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:44 01/27/2021 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [3:0] a,
    input [3:0] b,
    input cin,
    input [2:0] sel,
    output [3:0] x,
    output cout
    );
reg [3:0]x;
reg cout;

always @*
begin
x = 4'b0000; cout = 1'b0;
case (sel)
	3'b000 : begin
		{cout,x} = a+b+cin;  
		cout = cout|(a==4'b1111 && b==4'b1111 && cin==1'b1)?1:0;
	end
	3'b001 : begin
		x = a-b-cin; 
		cout = ((b==4'b1111 && cin==1'b1)||(a<b+cin))?1:0;
	end
	3'b010 : begin
		x = a|b|cin;    
	end            //bitwise or
	3'b011 : begin 
		x = a&b;   
	end            //bitwise and 
	3'b100 : begin 
		x = {x[2:0],0}; 
	end                 //left shift discard
	3'b101 : begin 
		x = {0,x[3:1]}; 
	end                 //right shift discard
	3'b110 : begin 
		x = {x[2:0],x[3]}; 
	end          //left shift rotate
	3'b111 : begin 
		x = {x[0],x[3:1]}; 
	end       //right shift rotate
	
endcase
end


endmodule
