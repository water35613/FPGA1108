`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:21 10/25/2021 
// Design Name: 
// Module Name:    hw2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module hw2(
    input x, clk, reset,
    output reg y 
    );


	 parameter S0 = 2'b00;
	 parameter S1 = 2'b01;
	 parameter S2 = 2'b10;
	 parameter S3 = 2'b11;
	 reg [1:0] current_state = 2'b10;
	 reg [1:0] next_state;
	 reg next_y;

always @(posedge clk or posedge reset)begin
	if(reset)begin
		current_state <= S3;
		y <= 1'b0;
		end
		else begin
		current_state <= next_state;
		y <= next_y;
		end
end
	 
always@(*) begin
	case ({current_state})
	S0 : if (x == 0) 
				next_state <= S0;
			 else
				next_state <= S1;
	S1 : if(x == 0)
				next_state <= S1;
			else if (x == 1)
				next_state <= S0;
	S2 : if(x == 0)
				next_state <= S2;
			else if (x == 1)
				next_state <= S1;
	S3 : if (x == 0)
				next_state <= S3;
			else if (x == 1)
				next_state <= S0;
	default : next_state = S0;
	endcase
end

always@(*)begin
	case ({current_state})
	S0 : next_y <= 1'b0;
	S1 : if(x ==1)
			next_y <= 1'b1;
		  else
			next_y <= 1'b0;
	S2 : next_y <= 1'b0;
	S3 : if(x ==1)
			next_y <= 1'b1;
		  else
			next_y <= 1'b0;
	default : next_y <= 1'b0;
	endcase
end
endmodule
