`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:54:49 01/12/2021
// Design Name:   RippleCarryAdder
// Module Name:   C:/Users/Rashmin Badiani/Desktop/sem4/hardwarelab/lab1/RippleAdderTest.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RippleCarryAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RippleAdderTest;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c0;

	// Outputs
	wire c4;
	wire [3:0] s;

	// Instantiate the Unit Under Test (UUT)
	RippleCarryAdder uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.c4(c4), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		a = 4'b0100;
		b = 4'b0001;
		c0 = 0;
		
		#100;
		a = 4'b0001;
		b = 4'b0010;
		c0=0;
		#100;
		a = 4'b0011;
		b = 4'b0101;
		c0 = 0;
	end
      
endmodule

