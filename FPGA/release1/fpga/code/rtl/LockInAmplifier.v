`timescale 1ns / 1ns
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
   
   output   signed  [ 14-1: 0] LIAOutput_InPhaseOutput,
   output   signed  [ 14-1: 0] LIAOutput_OutPhaseOutput,
   output   signed  [ 14-1: 0] MiscRamp
);

    //reg signed [14-1:0]    LIAOutput;
    reg signed [64-1:0]    InPhaseOutput;
    reg signed [64-1:0]    OutPhaseOutput;
    reg signed [28-1:0]    demodSignalInPhase;     // needs to be 28 bit as two 14 bit signals multiplied can be at maximum 28 bit
    reg signed [28-1:0]    demodSignalOutPhase;     // needs to be 28 bit as two 14 bit signals multiplied can be at maximum 28 bit
    reg signed [14-1:0]    actualOutput; 
    
    reg signed [64-1:0]    resultAccumulator = 64'h0000000000000000;
    reg signed [64-1:0]    outPhaseResultAccumulator = 64'h0000000000000000;
    reg signed [14-1:0]   miscRampOutput = 14'b10000000000000;
    
always @(posedge dac_clk_i) begin
 //   if (mhzClockIn == 1)
 //   begin
 //   clockCount = 10'b0001111101;
 //   end

    //LIAOutput = 14'b11110000011000;
    
    
    //Demod - multiplying incoming signal with reference
    demodSignalInPhase = $signed(inPhase) * $signed(adcInputChannel1); 
    demodSignalOutPhase = $signed(outPhase) * $signed(adcInputChannel1); 


    resultAccumulator = (resultAccumulator + demodSignalInPhase);//>>>14; // Might need to bit shift it to the right 14 bits. 
    outPhaseResultAccumulator = (outPhaseResultAccumulator + demodSignalOutPhase);
    if(mhzClockIn == 1)    
    begin
    //Creation of Ramp Here
    miscRampOutput <= miscRampOutput + 1'b1;
    
    // Bit shift on the end can be changed in order to change the results which are being output in order to calibrate LIA - might need to vary depending on input waveform amplitude
    InPhaseOutput <= ((resultAccumulator>>>7)+(resultAccumulator>>>13)+(resultAccumulator>>>14))>>>9;// Doing 1/125, this will need to be calibrated with the actual experimental conditions
    OutPhaseOutput <= ((outPhaseResultAccumulator>>>7)+(outPhaseResultAccumulator>>>13)+(outPhaseResultAccumulator>>>14))>>>9;//Doing 1/125, this will need to be calibrated with the actual experimental conditions
    resultAccumulator <= 64'h0000000000000000; 
    outPhaseResultAccumulator <= 64'h0000000000000000;
    end
    
end

assign LIAOutput_InPhaseOutput = InPhaseOutput; 
assign LIAOutput_OutPhaseOutput= OutPhaseOutput; 
assign MiscRamp                = miscRampOutput;

endmodule
