`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:28 10/25/2021
// Design Name:   hw2
// Module Name:   C:/Users/user/Desktop/FPGA/hw2/hw2_tb.v
// Project Name:  hw2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hw2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hw2_tb;

	// Inputs
	reg x ;
	reg clk ;
	reg reset ;

	// Outputs
	wire y;
	
	


	// Instantiate the Unit Under Test (UUT)
	hw2 uut (
		.x(x), 
		.clk(clk), 
		.reset(reset), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x = 1'b0;
		clk = 1'b1;
		reset = 1'b0;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
end
always #8000 reset =~reset;
always #100 clk = ~clk;
always #100 x = ~x;

      
endmodule

