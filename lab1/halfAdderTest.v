`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:24:30 01/12/2021
// Design Name:   HalfAdder
// Module Name:   C:/Users/Rashmin Badiani/Desktop/sem4/hardwarelab/lab1/halfAdderTest.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HalfAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module halfAdderTest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire c;
	wire s;

	// Instantiate the Unit Under Test (UUT)
	HalfAdder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 0;
		#100;
		a = 1;
		b = 1;
		#100;
		a = 0;
		b = 1;
        
		// Add stimulus here

	end
      
endmodule

