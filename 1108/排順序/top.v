`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:02:00 11/01/2021 
// Design Name: 
// Module Name:    top 
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
module top(
input clk,rst
    );
reg [7:0]r[4:0];
always@(posedge clk or posedge rst)begin
  if(rst)begin
				r[4] <= 8'h08;
				r[3] <= 8'h10;
				r[2] <= 8'h13;
				r[1] <= 8'h45;
				r[0] <= 8'h01;
  end
  else if(r[4]<r[3])begin
					r[4]<=r[3];
					r[3]<=r[4];
  end
  else if(r[3]<r[2])begin
					r[3]<=r[2];
					r[2]<=r[3];
  end
  else if(r[2]<r[1])begin
					r[2]<=r[1];
					r[1]<=r[2];
  end
  else if(r[1]<r[0])begin
					r[0]<=r[1];
					r[1]<=r[0];
  
end
end
endmodule
