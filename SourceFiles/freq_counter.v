`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2018 07:27:17 PM
// Design Name: 
// Module Name: freq_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module freq_counter(
clk,
sigin,
freq
 
    );
input clk;
input sigin;
output reg [15:0] freq;

reg [31:0] counter =0;
reg [15:0] freq1 = 0;
reg rst;


always @(posedge clk)
begin

    if(counter <= 100000000)
    begin
    
    counter = counter +1;
    if(sigin & ~rst)
        freq1=freq1 +1;
    
    end 
    else
    begin
    counter = 0;
    freq1=0; 
    freq = freq1;
    end

end // always end

always @(posedge clk)begin
    rst =sigin;
    end
    
    
endmodule
