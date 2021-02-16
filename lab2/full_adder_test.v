`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:35:40 01/19/2021
// Design Name:   full_adder
// Module Name:   C:/Users/Rashmin Badiani/Desktop/sem4/hardwarelab/lab2/full_adder_test.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_test;

	// Inputs
	reg a;
	reg b;
	reg cin;
	
	//Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
	
		$monitor($time,"\t a=%b, b=%b, cin=%b, sum=%b, carry=%b",a,b,cin,sum,cout);
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
		
		a = 1'b0;
		b = 1'b1;
		cin = 0;
        
		#100;
		a = 1'b1;
		b = 1'b1;
		cin = 0;
		
		#100;
		
		a = 1'b0;
		b = 1'b1;
		cin = 0;
		
		#100;
		a = 1'b1;
		b = 1'b1;
		
		
		#100;
		a = 1'b0;
		b = 1'b0;
		
		

	end
      
endmodule

