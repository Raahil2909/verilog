`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:01:54 01/19/2021
// Design Name:   carrry_look_ahead
// Module Name:   C:/Users/Rashmin Badiani/Desktop/sem4/hardwarelab/lab2/carry_look_ahead_test.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: carrry_look_ahead
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module carry_look_ahead_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	carrry_look_ahead uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.s(s), 
		.cout(cout)
	);

	initial begin
	
		$monitor($time,"\t a=%4b, b=%4b, c=%b, sum=%4b, cout=%b",a,b,c,s,cout);
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		
		// Add stimulus here// delay of 2
		#10;
      a=4'b0000;
		b=4'b0001;
		  
		#10;
      a=0;
		b=0;
		
		//delay of 4
		#10;
      a=4'b0001;
		b=4'b0001;
		 
	   #10;
      a=0;
		b=0;
		//delay of 6.
		
		#10;
		a=4'b0001;
		b=4'b0011;
		  
		#10;
      a=0;
		b=0;
		//delay of 8
		
		#10;
      a=4'b0001;
		b=4'b0111;
	end

      
endmodule

