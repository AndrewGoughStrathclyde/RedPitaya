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
   output   signed  [ 14-1: 0] MiscRamp, 
   
   output   signed  [ 14-1: 0] combinedOutput
);

    //reg signed [14-1:0]    LIAOutput;
    reg signed [64-1:0]    InPhaseOutput;
    reg signed [64-1:0]    OutPhaseOutput;
    reg signed [28-1:0]    demodSignalInPhase;     // needs to be 28 bit as two 14 bit signals multiplied can be at maximum 28 bit
    reg signed [28-1:0]    demodSignalOutPhase;     // needs to be 28 bit as two 14 bit signals multiplied can be at maximum 28 bit
    reg signed [14-1:0]    actualOutput; 
    
    reg signed [64-1:0]    resultAccumulator = 64'h0000000000000000;
    reg signed [64-1:0]    outPhaseResultAccumulator = 64'h0000000000000000;
    reg signed [14-1:0]    miscRampOutput = 14'b10000000000000;
    reg signed [14-1:0]    internalCombinedOutput = 14'b00000000000000;
    reg signed [ 2-1:0]    outputCounter = 2'b00;
    
always @(posedge dac_clk_i) begin
 //   if (mhzClockIn == 1)
 //   begin
 //   clockCount = 10'b0001111101;
 //   end

    //LIAOutput = 14'b11110000011000;
    
    
    //Demod - multiplying incoming signal with reference
    demodSignalInPhase = $signed(inPhase) * $signed(adcInputChannel1); 
    demodSignalOutPhase = $signed(outPhase) * $signed(adcInputChannel1); 


    resultAccumulator = (resultAccumulator + demodSignalInPhase);
    outPhaseResultAccumulator = (outPhaseResultAccumulator + demodSignalOutPhase);
    if(mhzClockIn == 1)    
    begin
    //Creation of Ramp Here
    miscRampOutput <= miscRampOutput + 1'b1;
    
    // Bit shift on the end can be changed in order to change the results which are being output in order to calibrate LIA - might need to vary depending on input waveform amplitude
//    InPhaseOutput<= (({{16{resultAccumulator[63]}},resultAccumulator[63:15]})+({{22{resultAccumulator[63]}},resultAccumulator[63:21]})+({{23{resultAccumulator[63]}},resultAccumulator[63:22]}));// Doing 1/125, this will need to be calibrated with the actual experimental conditions
    InPhaseOutput<= (({{19{resultAccumulator[63]}},resultAccumulator[63:18]})+({{25{resultAccumulator[63]}},resultAccumulator[63:24]})+({{26{resultAccumulator[63]}},resultAccumulator[63:25]}));// Doing 1/125, this will need to be calibrated with the actual experimental conditions
    OutPhaseOutput<= (({{19{outPhaseResultAccumulator[63]}},outPhaseResultAccumulator[63:18]})+({{25{outPhaseResultAccumulator[63]}},outPhaseResultAccumulator[63:24]})+({{26{outPhaseResultAccumulator[63]}},outPhaseResultAccumulator[63:25]}));// Doing 1/125, this will need to be calibrated with the actual experimental conditions
//    OutPhaseOutput<=  ((outPhaseResultAccumulator>>>16)+(outPhaseResultAccumulator>>>22)+(outPhaseResultAccumulator>>>23));// Doing 1/125, this will need to be calibrated with the actual experimental conditions
    resultAccumulator <= 64'h0000000000000000; 
    outPhaseResultAccumulator <= 64'h0000000000000000;
    outputCounter = 2'b10;
    end
    
    if (outputCounter >  2'b00)
    begin
        
        if (outputCounter == 2'b10) 
        begin
        internalCombinedOutput = InPhaseOutput; 
        end
        
        if (outputCounter == 2'b11) 
        begin
        internalCombinedOutput = OutPhaseOutput; 
        end  
        
        outputCounter = outputCounter+ 2'b01;
        
    end
    else
    begin
    
    internalCombinedOutput = 14'b00000000000000;
    
    end
    
end

assign LIAOutput_InPhaseOutput = InPhaseOutput; 
assign LIAOutput_OutPhaseOutput= OutPhaseOutput; 
assign MiscRamp                = miscRampOutput;
assign combinedOutput          = internalCombinedOutput; 

endmodule
