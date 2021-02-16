`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:42 01/27/2021
// Design Name:   alu
// Module Name:   C:/Users/Rashmin Badiani/Desktop/sem4/hardwarelab/lab3/l3/alu_test.v
// Project Name:  l3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	reg [2:0] sel;

	// Outputs
	wire [3:0] x;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sel(sel), 
		.x(x), 
		.cout(cout)
	);



	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		sel = 0;
		
	  $monitor($time," a = %4b, b = %4b, cin = %b, sel = %3b,  over/underflow = %b, ans = %4b ",a,b,cin,sel,cout,x);
		

		// Wait 10 ns for global reset to finish
		//#100 a=6;b=4;cin=1;sel=000;
		//#100 a=15;b=15;cin=1;sel=000;
		#100 a=15;b=15;cin=0;sel=000;
		//#100 a=10;b=5;cin=1;sel=001;
		//#100 a=5;b=10;cin=0;sel=001;
		//#100 a=5;b=15;cin=1;sel=001;
		#100 a=8;b=15;cin=0;sel=001;
		//#100 a=2;b=5;cin=0;sel=010;
		//#100 a=5;b=6;cin=1;sel=011;
		#100 a=5;b=4;cin=1;sel=100;
		#100 a=5;b=4;cin=1;sel=101;
		#100 a=5;b=4;cin=1;sel=110;
		#100 a=5;b=4;cin=1;sel=111;


		
        
		// Add stimulus here

	end
      
endmodule

