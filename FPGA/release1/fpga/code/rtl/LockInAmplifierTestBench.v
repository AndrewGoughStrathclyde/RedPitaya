`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2018 10:22:47
// Design Name: 
// Module Name: LockInAmplifierTestBench
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


module LockInAmplifierTestBench;

// DAC signal generation

wire [14-1:0] signalFromGeneratorA;
wire [14-1:0] signalFromGeneratorB;
wire [14-1:0] signalFromGeneratorC;
wire [14-1:0] adc_a;                    //Input In

wire          MHzSync; //Don't need to use this
reg          adc_clk;


SignalGeneration sigGen
(
    .dac_a_o        ( signalFromGeneratorA       ), //Carrier Out
    .dac_b_o        ( signalFromGeneratorB       ), //Modulation Out
    .dac_a_90out_o  ( signalFromGeneratorC       ), //OutofPhaseModulation Out
    .dac_clk_i      ( adc_clk                    ), //Input 125Mz clock Input
    .syncOutput     (MHzSync                    )   // Sync Output
);

// Lock In Amplifier

wire [14-1:0] outputFromLIA; 

LockInAmplifier LIA
(
    .adcInputChannel1   ( adc_a                     ),
    .dac_clk_i          ( adc_clk                   ),
    .inPhase            ( signalFromGeneratorB      ),
    .outPhase           ( signalFromGeneratorC      ),
    .LIAOutput_O        ( outputFromLIA             )
);

    
    initial begin
    adc_clk = 0;
    forever #1 adc_clk = ~adc_clk;
    end
    
endmodule
