`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2018 15:40:58
// Design Name: 
// Module Name: LockInAmplifer
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


module LockInAmplifier
(
   input                dac_clk_i       ,  //125MHz clock
 
   input     [ 14-1: 0] adcInputChannel1,

   input     [ 14-1: 0] inPhase         ,  //In Phase Modulation
   input     [ 14-1: 0] outPhase        ,  //Out of phase Modulation
   
   output    [ 14-1: 0] LIAOutput_O
);

    reg [14-1:0]    LIAOutput;
    
always @(posedge dac_clk_i) begin

    LIAOutput = 14'b11110000011000;

end

assign LIAOutput_O = LIAOutput; 

endmodule
