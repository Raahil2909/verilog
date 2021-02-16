`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:48 02/02/2021 
// Design Name: 
// Module Name:    fa 
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
module fa(
    input cin,
    input f0,
    input f1,
    output cout,
    output sum
    );
assign sum = cin^f0^f1;
assign cout = (f0&f1)|(f0&cin)|(f1&cin);

endmodule
