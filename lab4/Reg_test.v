`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:44:13 02/02/2021
// Design Name:   part3
// Module Name:   C:/Users/Rashmin Badiani/Desktop/sem4/hardwarelab/lab4/part3_test.v
// Project Name:  lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: part3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module part3_test;

	// Inputs
	reg [3:0] q;
	reg clr;
	reg clk;
	reg load;

	// Outputs
	wire [3:0] d;

	// Instantiate the Unit Under Test (UUT)
	part3 uut (
		.q(q), 
		.d(d), 
		.clr(clr), 
		.clk(clk), 
		.load(load)
	);

	initial begin
		clk = 0;
		forever # 10 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		q = 0;
		clr = 0;
		clk = 0;
		load = 0;

		// Wait 100 ns for global reset to finish
		#100;
		q = 1000;
		load = 1;
		clr = 1;
		  
		  
		#100 
		q = 0101;
		load = 1;
		clr = 0;
			
			
			
			
		#100;
		q = 1000;
		load = 1;
		clr = 1;
		
		#100;
		q = 0101;
		load = 1;
		clr = 0;
		
		#100;
		q = 0101;
		load=0;
		clr = 0;
		
		#100;
		q = 0101;
		load = 0;
		clr = 1;
		

	end
      
endmodule

