`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2018 08:14:15 PM
// Design Name: 
// Module Name: freq_counter_test
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


module freq_counter_test(

    );
    
    reg clk;
    reg sigin;
    wire [15:0] freq;


freq_counter UUT(clk,sigin, freq);

initial begin
clk=0;
sigin=0;
end

always begin 
#1 clk=~clk;
end

always begin 
#20 sigin=~sigin;
end

    
endmodule
