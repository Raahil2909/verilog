`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:10:50 01/19/2021
// Design Name:   ripple_adder
// Module Name:   C:/Users/Rashmin Badiani/Desktop/sem4/hardwarelab/lab2/ripple_adder_test.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_adder_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c0;

	// Outputs
	wire cout;
	wire [3:0] sum;

	// Instantiate the Unit Under Test (UUT)
	ripple_adder uut (
		.a(a), 
		.b(b), 
		.c0(c0), 
		.cout(cout), 
		.sum(sum)
	);

	initial begin
	
		$monitor($time,"\t a=%4b, b=%4b, cin=%b, sum=%4b, cout=%b",a,b,c0,sum,cout);
		// Initialize Inputs
		a = 0;
		b = 0;
		c0 = 0;

		// delay of 2
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

