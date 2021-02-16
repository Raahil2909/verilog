`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:45:30 02/02/2021 
// Design Name: 
// Module Name:    b 
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
module b(
    input a0,
    input a1,
    input f0,
    input f1,
    output sum,
    output cout
    );
wire cin;
and x(cin,a0,a1);

assign sum = (f0^f1)^cin;
assign cout = (f0&f1)|(f0&cin)|(cin&f1);


endmodule
