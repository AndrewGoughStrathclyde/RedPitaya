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
   input                dac_clk_i       ,   //125MHz clock
 
   input     signed [ 14-1: 0] adcInputChannel1,   //Input from channel 1 of ADC

   input     signed [ 14-1: 0] inPhase         ,   //In Phase Modulation
   input     signed [ 14-1: 0] outPhase        ,   //Out of phase Modulation
   
   input                mhzClockIn      ,   // Flag set to 1 to sync clock between here and modulation generation
   
   output   signed  [ 14-1: 0] LIAOutput_O
);

    reg signed [14-1:0]    LIAOutput;
    reg signed [28-1:0]    demodSignalInPhase;     // needs to be 28 bit as two 14 bit signals multiplied can be at maximum 28 bit
    
    reg [8-1:0]     clockCount = 4'h0;
    
    reg signed [64-1:0]    resultAccumulator = 64'h0000000000000000;
    
always @(posedge dac_clk_i) begin
    //if (mhzClockIn == 1)
    //begin
    //clockCount <= 0;
    //end

    //LIAOutput = 14'b11110000011000;
    
    //Demod - multiplying incoming signal with reference
    demodSignalInPhase = $signed(inPhase) * $signed(adcInputChannel1); 
    
    
    //LIAOutput = inPhase; Inphase coming in okay
    //LIAOutput = adcInputChannel1; Also looks like it's coming in okay
    
    //implement low pass filter here to discard the high frequency output
    
    //Should be able to implement a low pass filter by adding together the last X samples - high frequency should cancel out, low frequency won't
    
    // if high frequency is at 1MHz, low frequency is at 2KHz, clock is at 125MHz
    // add samples to the accumulator continuously here
    //LIAOutput = (demodSignalInPhase>>>14);
    resultAccumulator = ($signed(resultAccumulator) + $signed(demodSignalInPhase));
    //LIAOutput = resultAccumulator;
    //0 is actually 136
    
    //Clock count now seems to be working
    if (clockCount==8'b01111101) // Change this line to change the number of samples you're averaging over, 1 modulation = 1Mhz or 125 samples, currently averaging over 1 modulation
    begin
    LIAOutput = ($signed(resultAccumulator)>>>7)+($signed(resultAccumulator)>>>13)+($signed(resultAccumulator)>>>14);
    resultAccumulator = 64'h0000000000000000; 
    clockCount = 0;
    end
    else
    begin
    clockCount = clockCount+1;
    end
    
end


/*
always @(dac_clk_i) begin
    //Triggerers the accumulator every 125 samples - or at 1MHz
    if (clockCount==8'b01111101) // Change this line to change the number of samples you're averaging over, 1 modulation = 125mHz
    begin
    //LIAOutput = LIAOutput+1;
    //LIAOutput = $signed(resultAccumulator)>>>50;
    resultAccumulator = 64'h0000000000000000; 
    clockCount = 0;
    end
    else
    begin
    clockCount = clockCount+1;
    end
end*/

assign LIAOutput_O = LIAOutput; 

endmodule
