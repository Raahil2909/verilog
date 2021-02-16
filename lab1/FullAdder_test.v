`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:54:48 01/12/2021
// Design Name:   FullAdder
// Module Name:   C:/Users/Rashmin Badiani/Desktop/sem4/hardwarelab/lab1/FullAdder_test.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FullAdder_test;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 1;
		cin = 0;
		#100;
		a = 0;
		b = 1;
		cin = 1;
		#100;
		a = 1;
		b = 1;
		cin = 0;
		#100;
		a = 1;
		b = 1;
		cin = 1;
		#100;
		a = 0;
		b = 0;
		cin = 0;
        
		// Add stimulus here

	end
      
endmodule

