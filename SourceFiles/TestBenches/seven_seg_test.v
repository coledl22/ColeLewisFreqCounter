`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2018 06:38:29 PM
// Design Name: 
// Module Name: seven_seg_test
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


module seven_seg_test(

    );
    reg clock, reset;
     reg [3:0] in0, in1, in2, in3;  //the 4 inputs for each display
     wire a, b, c, d, e, f, g, dp; //the individual LED output for the seven segment along with the digital point
     wire [3:0] an;   // the 4 bit enable signal
     
     Seven_seg uut(clock, reset,in0, in1, in2, in3, a, b, c, d, e, f, g, dp, an);
     
     initial begin
        clock =0;
        reset = 0;
        in0 = 0;
        in1 = 0;
        in2 = 0;
        in3 = 0;
        #100;
                in0 = 0;
                in1 = 1;
                in2 = 0;
                in3 = 5;
        #100
                in0 = 4;
                in1 = 9;
                in2 = 9;
                in3 = 9;
                #100;
                end
                
                always begin
                #5 clock=!clock;
                end
endmodule
