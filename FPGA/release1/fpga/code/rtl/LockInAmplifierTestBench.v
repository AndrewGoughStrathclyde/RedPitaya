`timescale 1ns / 1ns
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

wire signed [14-1:0] signalFromGeneratorA;// = 14'b00000000000000;
wire signed [14-1:0] signalFromGeneratorB;// = 14'b00000000000000;
wire signed [14-1:0] signalFromGeneratorC;// = 14'b00000000000000;

wire                    MHzSync; //Don't need to use this
reg                     adc_clk;
reg signed  [14-1:0]    adc_a;


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
wire [14-1:0] miscRamp;

LockInAmplifier LIA
(
    .adcInputChannel1           ( adc_a                     ),
    .dac_clk_i                  ( adc_clk                   ),
    .inPhase                    ( signalFromGeneratorB      ),
    .outPhase                   ( signalFromGeneratorC      ),
    .LIAOutput_InPhaseOutput    ( outputFromLIA             ),
    .LIAOutput_OutPhaseOutput   ( outputFromLIAOutOfPhase   ),
    .MiscRamp                   ( miscRamp                  ),
    .mhzClockIn                 ( MHzSync                   )
);


    
    initial begin
    adc_a = 14'b0000000000000;
    adc_clk = 0;
    forever #8 begin
    adc_clk = ~adc_clk;
    //adc_a = signalFromGeneratorA+signalFromGeneratorB;
    adc_a = signalFromGeneratorA;
    end
    end
    
endmodule
