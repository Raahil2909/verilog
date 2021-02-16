`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:00 02/02/2021 
// Design Name: 
// Module Name:    a 
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
module rot(
    input [7:0] a,
    input [2:0] c,
    output [7:0] out
    );

reg [7:0]out;
always @*
begin
case (c)
	3'b000 : begin
		out = a;
	end
	3'b001 : begin
		out = {a[0],a[7:1]};
	end
	3'b010 : begin
		out = {a[1:0],a[7:2]}; 
	end           
	3'b011 : begin 
		 out = {a[2:0],a[7:3]};
	end           
	3'b100 : begin 
		 out = {a[3:0],a[7:4]};
	end             
	3'b101 : begin 
		 out = {a[4:0],a[7:5]};
	end               
	3'b110 : begin 
		 out = {a[5:0],a[7:6]};
	end         
	3'b111 : begin 
		out = {a[6:0],a[7]};
	end       
	
endcase
end

endmodule
