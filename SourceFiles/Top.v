`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2018 09:11:50 PM
// Design Name: 
// Module Name: Top
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


module Top(
input clk,
input sigin,
input reset,
output a, b, c, d, e, f, g, dp,
output [3:0] an
    );
    
    wire [15:0] freq;
    wire [3:0] ONES,TENS,HUNDREDS,TH;
    freq_counter counter(clk,sigin,freq);
    bin_to_bcd bcd(freq,ONES,TENS,HUNDREDS,TH);
    Seven_seg seg(clk, reset,ONES,TENS,HUNDREDS,TH, a, b, c, d, e, f, g, dp, an);
    
    
    
endmodule
