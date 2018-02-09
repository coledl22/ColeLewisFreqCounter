`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2018 03:05:15 PM
// Design Name: 
// Module Name: bin_to_bcd_test
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


module bin_to_bcd_test(

    );
    
    
    reg [11:0] bin = 128;
    wire [3:0] ONES, TENS ,HUNDREDS ,TH;
    
    bin_to_bcd UUT(bin,ONES, TENS ,HUNDREDS ,TH);


endmodule



