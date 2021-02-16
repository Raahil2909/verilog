`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:16:53 02/09/2021
// Design Name:   part2
// Module Name:   C:/Users/Rashmin Badiani/Desktop/sem4/hardwarelab/lab5/part2_test.v
// Project Name:  lab5
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
	reg x;
	reg rst;
	reg clk;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	part2 uut (
		.x(x), 
		.rst(rst), 
		.clk(clk), 
		.y(y)
	);
	
	initial 
	begin
	clk=0;
	forever #5 clk = ~clk;
	end
	

	initial begin
		$monitor($time," reset = %b,clock = %b,x = %b, y = %b",rst,clk,x,y);
		// Initialize Inputs
		x = 0;
		rst = 1; //to reset
		clk = 0;

		// Wait 100 ns for global reset to finish
		
			
		#10 rst = 0;
		#50 x = 0;
		
		#10 x = 1;
		#10 x = 0;
		#10 x = 0;
		#10 x = 1;
		#10 x = 0;
		#10 x = 0;
		#10 x = 0;
		
		#50;
		
		#10 x = 1;
		#10 x = 0;
		#10 x = 0;
		#10 x = 1;
		#10 x = 0;
		#10 x = 0;
		#10 x = 1;
		#10 x = 0;
		#10 x = 0;
		#10 x = 0;
		
		#50;
		
		#10 x = 1;
		#10 x = 0;
		#10 x = 0;
		#10 x = 1; rst = 1;
		#10 x = 0;
		
		#20  rst = 0;
		
		#50;
		
		#10 x = 1;
		#10 x = 0;
		#10 x = 0;
		#10 x = 1; 
		#10 x = 0;
		#10 x = 0; rst = 1;
		#10 x = 1; rst = 0;
		#10 x = 0;
		
		
        
	end
      
endmodule

