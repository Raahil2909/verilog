`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:45:12 02/02/2021
// Design Name:   part2
// Module Name:   C:/Users/Rashmin Badiani/Desktop/sem4/hardwarelab/lab4/part2_test.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: part2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module part2_test;

	// Inputs
	reg a;
	reg clk;

	// Outputs
	wire [2:0] q;

	// Instantiate the Unit Under Test (UUT)
	part2 uut (
		.q(q), 
		.a(a), 
		.clk(clk)
	);

	initial begin 
		clk=0;
		forever #5 clk= ~clk;
	end
	initial begin
		// Initialize Inputs
		$monitor($time,a,q);
		a = 1;
		
		// Wait 100 ns for global reset to finish
       #50 a = 0;
		 #70 a = 1;
		 #50 a = 0;
		// Add stimulus here

	end
      
endmodule

