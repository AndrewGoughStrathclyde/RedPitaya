`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2018 11:41:20
// Design Name: 
// Module Name: SignalGeneration
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


module SignalGeneration
(
   input                 dac_clk_i       ,  //!< DAC clock
   output     [ 14-1: 0] dac_a_o         ,  //!< DAC data CHA // Sin Modulation 
   output     [ 14-1: 0] dac_b_o         ,  //!< DAC data CHB // Carrier Wave
   output     [ 14-1: 0] dac_a_90out_o   ,  //!               //Cosine Modulation
   output                syncOutput
);
    reg [14-1:0]    dacOutputA = 14'b00000000000000;
    reg [14-1:0]    dacOutputB = 14'b00000000000000;
    reg [14-1:0]    dacOutputC = 14'b00000000000000;
    reg [7-1:0]     clkCounterA = 7'b0000000;
    reg [9-1:0]     clkCounterB = 9'b000000000;
    reg             sync;
//always @(posedge dac_clk_i) begin
//dacOutputA <= 14'b00000000000000; // 0 output
//dacOutputB <= 14'b00000000000000;

//dacOutputA <= 14'b00111111111110; // Position : 32 , Value : 4095
//dacOutputB <= 14'b01111111111110; // Position : 32 , Value : 4095
//end

always @(posedge dac_clk_i) begin
	case(clkCounterA)
	7'b0000000: begin dacOutputA <= 14'b00000000000000; dacOutputC <= 14'b00111111111111; sync = 0;end // Position : 1 , Sin Value : 0 , Cos Value : 4095
    7'b0000001: begin dacOutputA <= 14'b00000011001101; dacOutputC <= 14'b00111111111001; end // Position : 2 , Sin Value : 206 , Cos Value : 4090
    7'b0000010: begin dacOutputA <= 14'b00000110011010; dacOutputC <= 14'b00111111101010; end // Position : 3 , Sin Value : 411 , Cos Value : 4074
    7'b0000011: begin dacOutputA <= 14'b00001001100111; dacOutputC <= 14'b00111111010000; end // Position : 4 , Sin Value : 615 , Cos Value : 4049
    7'b0000100: begin dacOutputA <= 14'b00001100110001; dacOutputC <= 14'b00111110101100; end // Position : 5 , Sin Value : 818 , Cos Value : 4013
    7'b0000101: begin dacOutputA <= 14'b00001111111010; dacOutputC <= 14'b00111101111110; end // Position : 6 , Sin Value : 1018 , Cos Value : 3966
    7'b0000110: begin dacOutputA <= 14'b00010011000000; dacOutputC <= 14'b00111101000110; end // Position : 7 , Sin Value : 1216 , Cos Value : 3910
    7'b0000111: begin dacOutputA <= 14'b00010110000011; dacOutputC <= 14'b00111100000100; end // Position : 8 , Sin Value : 1411 , Cos Value : 3844
    7'b0001000: begin dacOutputA <= 14'b00011001000010; dacOutputC <= 14'b00111010111000; end // Position : 9 , Sin Value : 1603 , Cos Value : 3768
    7'b0001001: begin dacOutputA <= 14'b00011011111101; dacOutputC <= 14'b00111001100011; end // Position : 10 , Sin Value : 1790 , Cos Value : 3683
    7'b0001010: begin dacOutputA <= 14'b00011110110100; dacOutputC <= 14'b00111000000100; end // Position : 11 , Sin Value : 1973 , Cos Value : 3588
    7'b0001011: begin dacOutputA <= 14'b00100001100110; dacOutputC <= 14'b00110110011100; end // Position : 12 , Sin Value : 2151 , Cos Value : 3485
    7'b0001100: begin dacOutputA <= 14'b00100100010010; dacOutputC <= 14'b00110100101100; end // Position : 13 , Sin Value : 2323 , Cos Value : 3372
    7'b0001101: begin dacOutputA <= 14'b00100110111001; dacOutputC <= 14'b00110010110011; end // Position : 14 , Sin Value : 2489 , Cos Value : 3251
    7'b0001110: begin dacOutputA <= 14'b00101001011001; dacOutputC <= 14'b00110000110010; end // Position : 15 , Sin Value : 2650 , Cos Value : 3122
    7'b0001111: begin dacOutputA <= 14'b00101011110011; dacOutputC <= 14'b00101110101001; end // Position : 16 , Sin Value : 2803 , Cos Value : 2985
    7'b0010000: begin dacOutputA <= 14'b00101110000101; dacOutputC <= 14'b00101100011000; end // Position : 17 , Sin Value : 2950 , Cos Value : 2841
    7'b0010001: begin dacOutputA <= 14'b00110000010000; dacOutputC <= 14'b00101010000000; end // Position : 18 , Sin Value : 3089 , Cos Value : 2689
    7'b0010010: begin dacOutputA <= 14'b00110010010011; dacOutputC <= 14'b00100111100010; end // Position : 19 , Sin Value : 3220 , Cos Value : 2530
    7'b0010011: begin dacOutputA <= 14'b00110100001110; dacOutputC <= 14'b00100100111101; end // Position : 20 , Sin Value : 3343 , Cos Value : 2365
    7'b0010100: begin dacOutputA <= 14'b00110110000001; dacOutputC <= 14'b00100010010010; end // Position : 21 , Sin Value : 3458 , Cos Value : 2194
    7'b0010101: begin dacOutputA <= 14'b00110111101011; dacOutputC <= 14'b00011111100001; end // Position : 22 , Sin Value : 3563 , Cos Value : 2018
    7'b0010110: begin dacOutputA <= 14'b00111001001100; dacOutputC <= 14'b00011100101100; end // Position : 23 , Sin Value : 3660 , Cos Value : 1836
    7'b0010111: begin dacOutputA <= 14'b00111010100011; dacOutputC <= 14'b00011001110001; end // Position : 24 , Sin Value : 3748 , Cos Value : 1650
    7'b0011000: begin dacOutputA <= 14'b00111011110010; dacOutputC <= 14'b00010110110011; end // Position : 25 , Sin Value : 3826 , Cos Value : 1460
    7'b0011001: begin dacOutputA <= 14'b00111100110110; dacOutputC <= 14'b00010011110001; end // Position : 26 , Sin Value : 3895 , Cos Value : 1265
    7'b0011010: begin dacOutputA <= 14'b00111101110001; dacOutputC <= 14'b00010000101100; end // Position : 27 , Sin Value : 3953 , Cos Value : 1068
    7'b0011011: begin dacOutputA <= 14'b00111110100001; dacOutputC <= 14'b00001101100100; end // Position : 28 , Sin Value : 4002 , Cos Value : 868
    7'b0011100: begin dacOutputA <= 14'b00111111001000; dacOutputC <= 14'b00001010011001; end // Position : 29 , Sin Value : 4040 , Cos Value : 666
    7'b0011101: begin dacOutputA <= 14'b00111111100100; dacOutputC <= 14'b00000111001110; end // Position : 30 , Sin Value : 4069 , Cos Value : 462
    7'b0011110: begin dacOutputA <= 14'b00111111110110; dacOutputC <= 14'b00000100000001; end // Position : 31 , Sin Value : 4087 , Cos Value : 257
    7'b0011111: begin dacOutputA <= 14'b00111111111110; dacOutputC <= 14'b00000000110011; end // Position : 32 , Sin Value : 4095 , Cos Value : 51
    7'b0100000: begin dacOutputA <= 14'b00111111111100; dacOutputC <= 14'b11111101100101; end // Position : 33 , Sin Value : 4092 , Cos Value : -154
    7'b0100001: begin dacOutputA <= 14'b00111111101111; dacOutputC <= 14'b11111010011000; end // Position : 34 , Sin Value : 4079 , Cos Value : -360
    7'b0100010: begin dacOutputA <= 14'b00111111010111; dacOutputC <= 14'b11110111001011; end // Position : 35 , Sin Value : 4056 , Cos Value : -564
    7'b0100011: begin dacOutputA <= 14'b00111110110110; dacOutputC <= 14'b11110100000000; end // Position : 36 , Sin Value : 4022 , Cos Value : -767
    7'b0100100: begin dacOutputA <= 14'b00111110001010; dacOutputC <= 14'b11110000110111; end // Position : 37 , Sin Value : 3979 , Cos Value : -968
    7'b0100101: begin dacOutputA <= 14'b00111101010101; dacOutputC <= 14'b11101101110000; end // Position : 38 , Sin Value : 3925 , Cos Value : -1167
    7'b0100110: begin dacOutputA <= 14'b00111100010101; dacOutputC <= 14'b11101010101101; end // Position : 39 , Sin Value : 3862 , Cos Value : -1363
    7'b0100111: begin dacOutputA <= 14'b00111011001100; dacOutputC <= 14'b11100111101100; end // Position : 40 , Sin Value : 3788 , Cos Value : -1555
    7'b0101000: begin dacOutputA <= 14'b00111001111001; dacOutputC <= 14'b11100100110000; end // Position : 41 , Sin Value : 3705 , Cos Value : -1744
    7'b0101001: begin dacOutputA <= 14'b00111000011100; dacOutputC <= 14'b11100001111000; end // Position : 42 , Sin Value : 3613 , Cos Value : -1928
    7'b0101010: begin dacOutputA <= 14'b00110110110111; dacOutputC <= 14'b11011111000101; end // Position : 43 , Sin Value : 3512 , Cos Value : -2107
    7'b0101011: begin dacOutputA <= 14'b00110101001001; dacOutputC <= 14'b11011100010111; end // Position : 44 , Sin Value : 3401 , Cos Value : -2280
    7'b0101100: begin dacOutputA <= 14'b00110011010010; dacOutputC <= 14'b11011001101111; end // Position : 45 , Sin Value : 3282 , Cos Value : -2448
    7'b0101101: begin dacOutputA <= 14'b00110001010011; dacOutputC <= 14'b11010111001101; end // Position : 46 , Sin Value : 3155 , Cos Value : -2610
    7'b0101110: begin dacOutputA <= 14'b00101111001100; dacOutputC <= 14'b11010100110010; end // Position : 47 , Sin Value : 3020 , Cos Value : -2765
    7'b0101111: begin dacOutputA <= 14'b00101100111101; dacOutputC <= 14'b11010010011110; end // Position : 48 , Sin Value : 2877 , Cos Value : -2914
    7'b0110000: begin dacOutputA <= 14'b00101010100111; dacOutputC <= 14'b11010000010001; end // Position : 49 , Sin Value : 2727 , Cos Value : -3055
    7'b0110001: begin dacOutputA <= 14'b00101000001010; dacOutputC <= 14'b11001110001100; end // Position : 50 , Sin Value : 2570 , Cos Value : -3188
    7'b0110010: begin dacOutputA <= 14'b00100101100110; dacOutputC <= 14'b11001100001111; end // Position : 51 , Sin Value : 2407 , Cos Value : -3313
    7'b0110011: begin dacOutputA <= 14'b00100010111101; dacOutputC <= 14'b11001010011010; end // Position : 52 , Sin Value : 2237 , Cos Value : -3430
    7'b0110100: begin dacOutputA <= 14'b00100000001110; dacOutputC <= 14'b11001000101110; end // Position : 53 , Sin Value : 2062 , Cos Value : -3538
    7'b0110101: begin dacOutputA <= 14'b00011101011001; dacOutputC <= 14'b11000111001011; end // Position : 54 , Sin Value : 1882 , Cos Value : -3637
    7'b0110110: begin dacOutputA <= 14'b00011010100000; dacOutputC <= 14'b11000101110001; end // Position : 55 , Sin Value : 1697 , Cos Value : -3727
    7'b0110111: begin dacOutputA <= 14'b00010111100011; dacOutputC <= 14'b11000100100000; end // Position : 56 , Sin Value : 1507 , Cos Value : -3807
    7'b0111000: begin dacOutputA <= 14'b00010100100010; dacOutputC <= 14'b11000011011001; end // Position : 57 , Sin Value : 1314 , Cos Value : -3878
    7'b0111001: begin dacOutputA <= 14'b00010001011101; dacOutputC <= 14'b11000010011100; end // Position : 58 , Sin Value : 1118 , Cos Value : -3940
    7'b0111010: begin dacOutputA <= 14'b00001110010110; dacOutputC <= 14'b11000001101001; end // Position : 59 , Sin Value : 918 , Cos Value : -3991
    7'b0111011: begin dacOutputA <= 14'b00001011001100; dacOutputC <= 14'b11000001000000; end // Position : 60 , Sin Value : 717 , Cos Value : -4032
    7'b0111100: begin dacOutputA <= 14'b00001000000001; dacOutputC <= 14'b11000000100001; end // Position : 61 , Sin Value : 513 , Cos Value : -4063
    7'b0111101: begin dacOutputA <= 14'b00000100110100; dacOutputC <= 14'b11000000001100; end // Position : 62 , Sin Value : 308 , Cos Value : -4083
    7'b0111110: begin dacOutputA <= 14'b00000001100110; dacOutputC <= 14'b11000000000010; end // Position : 63 , Sin Value : 103 , Cos Value : -4094
    7'b0111111: begin dacOutputA <= 14'b11111110011001; dacOutputC <= 14'b11000000000010; end // Position : 64 , Sin Value : -103 , Cos Value : -4094
    7'b1000000: begin dacOutputA <= 14'b11111011001011; dacOutputC <= 14'b11000000001100; end // Position : 65 , Sin Value : -308 , Cos Value : -4083
    7'b1000001: begin dacOutputA <= 14'b11110111111110; dacOutputC <= 14'b11000000100001; end // Position : 66 , Sin Value : -513 , Cos Value : -4063
    7'b1000010: begin dacOutputA <= 14'b11110100110011; dacOutputC <= 14'b11000001000000; end // Position : 67 , Sin Value : -717 , Cos Value : -4032
    7'b1000011: begin dacOutputA <= 14'b11110001101001; dacOutputC <= 14'b11000001101001; end // Position : 68 , Sin Value : -918 , Cos Value : -3991
    7'b1000100: begin dacOutputA <= 14'b11101110100010; dacOutputC <= 14'b11000010011100; end // Position : 69 , Sin Value : -1118 , Cos Value : -3940
    7'b1000101: begin dacOutputA <= 14'b11101011011101; dacOutputC <= 14'b11000011011001; end // Position : 70 , Sin Value : -1314 , Cos Value : -3878
    7'b1000110: begin dacOutputA <= 14'b11101000011100; dacOutputC <= 14'b11000100100000; end // Position : 71 , Sin Value : -1507 , Cos Value : -3807
    7'b1000111: begin dacOutputA <= 14'b11100101011111; dacOutputC <= 14'b11000101110001; end // Position : 72 , Sin Value : -1697 , Cos Value : -3727
    7'b1001000: begin dacOutputA <= 14'b11100010100110; dacOutputC <= 14'b11000111001011; end // Position : 73 , Sin Value : -1882 , Cos Value : -3637
    7'b1001001: begin dacOutputA <= 14'b11011111110001; dacOutputC <= 14'b11001000101110; end // Position : 74 , Sin Value : -2062 , Cos Value : -3538
    7'b1001010: begin dacOutputA <= 14'b11011101000010; dacOutputC <= 14'b11001010011010; end // Position : 75 , Sin Value : -2237 , Cos Value : -3430
    7'b1001011: begin dacOutputA <= 14'b11011010011001; dacOutputC <= 14'b11001100001111; end // Position : 76 , Sin Value : -2407 , Cos Value : -3313
    7'b1001100: begin dacOutputA <= 14'b11010111110101; dacOutputC <= 14'b11001110001100; end // Position : 77 , Sin Value : -2570 , Cos Value : -3188
    7'b1001101: begin dacOutputA <= 14'b11010101011000; dacOutputC <= 14'b11010000010001; end // Position : 78 , Sin Value : -2727 , Cos Value : -3055
    7'b1001110: begin dacOutputA <= 14'b11010011000010; dacOutputC <= 14'b11010010011110; end // Position : 79 , Sin Value : -2877 , Cos Value : -2914
    7'b1001111: begin dacOutputA <= 14'b11010000110011; dacOutputC <= 14'b11010100110010; end // Position : 80 , Sin Value : -3020 , Cos Value : -2765
    7'b1010000: begin dacOutputA <= 14'b11001110101100; dacOutputC <= 14'b11010111001101; end // Position : 81 , Sin Value : -3155 , Cos Value : -2610
    7'b1010001: begin dacOutputA <= 14'b11001100101101; dacOutputC <= 14'b11011001101111; end // Position : 82 , Sin Value : -3282 , Cos Value : -2448
    7'b1010010: begin dacOutputA <= 14'b11001010110110; dacOutputC <= 14'b11011100010111; end // Position : 83 , Sin Value : -3401 , Cos Value : -2280
    7'b1010011: begin dacOutputA <= 14'b11001001001000; dacOutputC <= 14'b11011111000101; end // Position : 84 , Sin Value : -3512 , Cos Value : -2107
    7'b1010100: begin dacOutputA <= 14'b11000111100011; dacOutputC <= 14'b11100001111000; end // Position : 85 , Sin Value : -3613 , Cos Value : -1928
    7'b1010101: begin dacOutputA <= 14'b11000110000110; dacOutputC <= 14'b11100100110000; end // Position : 86 , Sin Value : -3705 , Cos Value : -1744
    7'b1010110: begin dacOutputA <= 14'b11000100110011; dacOutputC <= 14'b11100111101100; end // Position : 87 , Sin Value : -3788 , Cos Value : -1555
    7'b1010111: begin dacOutputA <= 14'b11000011101010; dacOutputC <= 14'b11101010101101; end // Position : 88 , Sin Value : -3862 , Cos Value : -1363
    7'b1011000: begin dacOutputA <= 14'b11000010101010; dacOutputC <= 14'b11101101110000; end // Position : 89 , Sin Value : -3925 , Cos Value : -1167
    7'b1011001: begin dacOutputA <= 14'b11000001110101; dacOutputC <= 14'b11110000110111; end // Position : 90 , Sin Value : -3979 , Cos Value : -968
    7'b1011010: begin dacOutputA <= 14'b11000001001001; dacOutputC <= 14'b11110100000000; end // Position : 91 , Sin Value : -4022 , Cos Value : -767
    7'b1011011: begin dacOutputA <= 14'b11000000101000; dacOutputC <= 14'b11110111001011; end // Position : 92 , Sin Value : -4056 , Cos Value : -564
    7'b1011100: begin dacOutputA <= 14'b11000000010000; dacOutputC <= 14'b11111010011000; end // Position : 93 , Sin Value : -4079 , Cos Value : -360
    7'b1011101: begin dacOutputA <= 14'b11000000000011; dacOutputC <= 14'b11111101100101; end // Position : 94 , Sin Value : -4092 , Cos Value : -154
    7'b1011110: begin dacOutputA <= 14'b11000000000001; dacOutputC <= 14'b00000000110011; end // Position : 95 , Sin Value : -4095 , Cos Value : 51
    7'b1011111: begin dacOutputA <= 14'b11000000001001; dacOutputC <= 14'b00000100000001; end // Position : 96 , Sin Value : -4087 , Cos Value : 257
    7'b1100000: begin dacOutputA <= 14'b11000000011011; dacOutputC <= 14'b00000111001110; end // Position : 97 , Sin Value : -4069 , Cos Value : 462
    7'b1100001: begin dacOutputA <= 14'b11000000110111; dacOutputC <= 14'b00001010011001; end // Position : 98 , Sin Value : -4040 , Cos Value : 666
    7'b1100010: begin dacOutputA <= 14'b11000001011110; dacOutputC <= 14'b00001101100100; end // Position : 99 , Sin Value : -4002 , Cos Value : 868
    7'b1100011: begin dacOutputA <= 14'b11000010001110; dacOutputC <= 14'b00010000101100; end // Position : 100 , Sin Value : -3953 , Cos Value : 1068
    7'b1100100: begin dacOutputA <= 14'b11000011001001; dacOutputC <= 14'b00010011110001; end // Position : 101 , Sin Value : -3895 , Cos Value : 1265
    7'b1100101: begin dacOutputA <= 14'b11000100001101; dacOutputC <= 14'b00010110110011; end // Position : 102 , Sin Value : -3826 , Cos Value : 1460
    7'b1100110: begin dacOutputA <= 14'b11000101011100; dacOutputC <= 14'b00011001110001; end // Position : 103 , Sin Value : -3748 , Cos Value : 1650
    7'b1100111: begin dacOutputA <= 14'b11000110110011; dacOutputC <= 14'b00011100101100; end // Position : 104 , Sin Value : -3660 , Cos Value : 1836
    7'b1101000: begin dacOutputA <= 14'b11001000010100; dacOutputC <= 14'b00011111100001; end // Position : 105 , Sin Value : -3563 , Cos Value : 2018
    7'b1101001: begin dacOutputA <= 14'b11001001111110; dacOutputC <= 14'b00100010010010; end // Position : 106 , Sin Value : -3458 , Cos Value : 2194
    7'b1101010: begin dacOutputA <= 14'b11001011110001; dacOutputC <= 14'b00100100111101; end // Position : 107 , Sin Value : -3343 , Cos Value : 2365
    7'b1101011: begin dacOutputA <= 14'b11001101101100; dacOutputC <= 14'b00100111100010; end // Position : 108 , Sin Value : -3220 , Cos Value : 2530
    7'b1101100: begin dacOutputA <= 14'b11001111101111; dacOutputC <= 14'b00101010000000; end // Position : 109 , Sin Value : -3089 , Cos Value : 2689
    7'b1101101: begin dacOutputA <= 14'b11010001111010; dacOutputC <= 14'b00101100011000; end // Position : 110 , Sin Value : -2950 , Cos Value : 2841
    7'b1101110: begin dacOutputA <= 14'b11010100001100; dacOutputC <= 14'b00101110101001; end // Position : 111 , Sin Value : -2803 , Cos Value : 2985
    7'b1101111: begin dacOutputA <= 14'b11010110100110; dacOutputC <= 14'b00110000110010; end // Position : 112 , Sin Value : -2650 , Cos Value : 3122
    7'b1110000: begin dacOutputA <= 14'b11011001000110; dacOutputC <= 14'b00110010110011; end // Position : 113 , Sin Value : -2489 , Cos Value : 3251
    7'b1110001: begin dacOutputA <= 14'b11011011101101; dacOutputC <= 14'b00110100101100; end // Position : 114 , Sin Value : -2323 , Cos Value : 3372
    7'b1110010: begin dacOutputA <= 14'b11011110011001; dacOutputC <= 14'b00110110011100; end // Position : 115 , Sin Value : -2151 , Cos Value : 3485
    7'b1110011: begin dacOutputA <= 14'b11100001001011; dacOutputC <= 14'b00111000000100; end // Position : 116 , Sin Value : -1973 , Cos Value : 3588
    7'b1110100: begin dacOutputA <= 14'b11100100000010; dacOutputC <= 14'b00111001100011; end // Position : 117 , Sin Value : -1790 , Cos Value : 3683
    7'b1110101: begin dacOutputA <= 14'b11100110111101; dacOutputC <= 14'b00111010111000; end // Position : 118 , Sin Value : -1603 , Cos Value : 3768
    7'b1110110: begin dacOutputA <= 14'b11101001111100; dacOutputC <= 14'b00111100000100; end // Position : 119 , Sin Value : -1411 , Cos Value : 3844
    7'b1110111: begin dacOutputA <= 14'b11101100111111; dacOutputC <= 14'b00111101000110; end // Position : 120 , Sin Value : -1216 , Cos Value : 3910
    7'b1111000: begin dacOutputA <= 14'b11110000000101; dacOutputC <= 14'b00111101111110; end // Position : 121 , Sin Value : -1018 , Cos Value : 3966
    7'b1111001: begin dacOutputA <= 14'b11110011001110; dacOutputC <= 14'b00111110101100; end // Position : 122 , Sin Value : -818 , Cos Value : 4013
    7'b1111010: begin dacOutputA <= 14'b11110110011000; dacOutputC <= 14'b00111111010000; end // Position : 123 , Sin Value : -615 , Cos Value : 4049
    7'b1111011: begin dacOutputA <= 14'b11111001100101; dacOutputC <= 14'b00111111101010; end // Position : 124 , Sin Value : -411 , Cos Value : 4074
		default: begin 
		    sync = 1;
			dacOutputA <= 14'b11111100110010;        // Position : 125 , Value : -206
			dacOutputC <= 14'b00111111101010;        // Position : 125 , Value : 4074
			clkCounterB <= clkCounterB+1;
		end
	endcase
	if(clkCounterA != 7'b1111100)begin
	clkCounterA = clkCounterA+1;
	end
	else begin
	clkCounterA = 0;
	end
	case(clkCounterB)
        9'b000000000: dacOutputB <= 14'b00000000000000; // Position : 1 , Value : 0
        9'b000000001: dacOutputB <= 14'b00000000110011; // Position : 2 , Value : 51
        9'b000000010: dacOutputB <= 14'b00000001100110; // Position : 3 , Value : 103
        9'b000000011: dacOutputB <= 14'b00000010011010; // Position : 4 , Value : 154
        9'b000000100: dacOutputB <= 14'b00000011001101; // Position : 5 , Value : 206
        9'b000000101: dacOutputB <= 14'b00000100000001; // Position : 6 , Value : 257
        9'b000000110: dacOutputB <= 14'b00000100110100; // Position : 7 , Value : 308
        9'b000000111: dacOutputB <= 14'b00000101100111; // Position : 8 , Value : 360
        9'b000001000: dacOutputB <= 14'b00000110011010; // Position : 9 , Value : 411
        9'b000001001: dacOutputB <= 14'b00000111001110; // Position : 10 , Value : 462
        9'b000001010: dacOutputB <= 14'b00001000000001; // Position : 11 , Value : 513
        9'b000001011: dacOutputB <= 14'b00001000110100; // Position : 12 , Value : 564
        9'b000001100: dacOutputB <= 14'b00001001100111; // Position : 13 , Value : 615
        9'b000001101: dacOutputB <= 14'b00001010011001; // Position : 14 , Value : 666
        9'b000001110: dacOutputB <= 14'b00001011001100; // Position : 15 , Value : 717
        9'b000001111: dacOutputB <= 14'b00001011111111; // Position : 16 , Value : 767
        9'b000010000: dacOutputB <= 14'b00001100110001; // Position : 17 , Value : 818
        9'b000010001: dacOutputB <= 14'b00001101100100; // Position : 18 , Value : 868
        9'b000010010: dacOutputB <= 14'b00001110010110; // Position : 19 , Value : 918
        9'b000010011: dacOutputB <= 14'b00001111001000; // Position : 20 , Value : 968
        9'b000010100: dacOutputB <= 14'b00001111111010; // Position : 21 , Value : 1018
        9'b000010101: dacOutputB <= 14'b00010000101100; // Position : 22 , Value : 1068
        9'b000010110: dacOutputB <= 14'b00010001011101; // Position : 23 , Value : 1118
        9'b000010111: dacOutputB <= 14'b00010010001111; // Position : 24 , Value : 1167
        9'b000011000: dacOutputB <= 14'b00010011000000; // Position : 25 , Value : 1216
        9'b000011001: dacOutputB <= 14'b00010011110001; // Position : 26 , Value : 1265
        9'b000011010: dacOutputB <= 14'b00010100100010; // Position : 27 , Value : 1314
        9'b000011011: dacOutputB <= 14'b00010101010010; // Position : 28 , Value : 1363
        9'b000011100: dacOutputB <= 14'b00010110000011; // Position : 29 , Value : 1411
        9'b000011101: dacOutputB <= 14'b00010110110011; // Position : 30 , Value : 1460
        9'b000011110: dacOutputB <= 14'b00010111100011; // Position : 31 , Value : 1507
        9'b000011111: dacOutputB <= 14'b00011000010011; // Position : 32 , Value : 1555
        9'b000100000: dacOutputB <= 14'b00011001000010; // Position : 33 , Value : 1603
        9'b000100001: dacOutputB <= 14'b00011001110001; // Position : 34 , Value : 1650
        9'b000100010: dacOutputB <= 14'b00011010100000; // Position : 35 , Value : 1697
        9'b000100011: dacOutputB <= 14'b00011011001111; // Position : 36 , Value : 1744
        9'b000100100: dacOutputB <= 14'b00011011111101; // Position : 37 , Value : 1790
        9'b000100101: dacOutputB <= 14'b00011100101100; // Position : 38 , Value : 1836
        9'b000100110: dacOutputB <= 14'b00011101011001; // Position : 39 , Value : 1882
        9'b000100111: dacOutputB <= 14'b00011110000111; // Position : 40 , Value : 1928
        9'b000101000: dacOutputB <= 14'b00011110110100; // Position : 41 , Value : 1973
        9'b000101001: dacOutputB <= 14'b00011111100001; // Position : 42 , Value : 2018
        9'b000101010: dacOutputB <= 14'b00100000001110; // Position : 43 , Value : 2062
        9'b000101011: dacOutputB <= 14'b00100000111010; // Position : 44 , Value : 2107
        9'b000101100: dacOutputB <= 14'b00100001100110; // Position : 45 , Value : 2151
        9'b000101101: dacOutputB <= 14'b00100010010010; // Position : 46 , Value : 2194
        9'b000101110: dacOutputB <= 14'b00100010111101; // Position : 47 , Value : 2237
        9'b000101111: dacOutputB <= 14'b00100011101000; // Position : 48 , Value : 2280
        9'b000110000: dacOutputB <= 14'b00100100010010; // Position : 49 , Value : 2323
        9'b000110001: dacOutputB <= 14'b00100100111101; // Position : 50 , Value : 2365
        9'b000110010: dacOutputB <= 14'b00100101100110; // Position : 51 , Value : 2407
        9'b000110011: dacOutputB <= 14'b00100110010000; // Position : 52 , Value : 2448
        9'b000110100: dacOutputB <= 14'b00100110111001; // Position : 53 , Value : 2489
        9'b000110101: dacOutputB <= 14'b00100111100010; // Position : 54 , Value : 2530
        9'b000110110: dacOutputB <= 14'b00101000001010; // Position : 55 , Value : 2570
        9'b000110111: dacOutputB <= 14'b00101000110010; // Position : 56 , Value : 2610
        9'b000111000: dacOutputB <= 14'b00101001011001; // Position : 57 , Value : 2650
        9'b000111001: dacOutputB <= 14'b00101010000000; // Position : 58 , Value : 2689
        9'b000111010: dacOutputB <= 14'b00101010100111; // Position : 59 , Value : 2727
        9'b000111011: dacOutputB <= 14'b00101011001101; // Position : 60 , Value : 2765
        9'b000111100: dacOutputB <= 14'b00101011110011; // Position : 61 , Value : 2803
        9'b000111101: dacOutputB <= 14'b00101100011000; // Position : 62 , Value : 2841
        9'b000111110: dacOutputB <= 14'b00101100111101; // Position : 63 , Value : 2877
        9'b000111111: dacOutputB <= 14'b00101101100001; // Position : 64 , Value : 2914
        9'b001000000: dacOutputB <= 14'b00101110000101; // Position : 65 , Value : 2950
        9'b001000001: dacOutputB <= 14'b00101110101001; // Position : 66 , Value : 2985
        9'b001000010: dacOutputB <= 14'b00101111001100; // Position : 67 , Value : 3020
        9'b001000011: dacOutputB <= 14'b00101111101110; // Position : 68 , Value : 3055
        9'b001000100: dacOutputB <= 14'b00110000010000; // Position : 69 , Value : 3089
        9'b001000101: dacOutputB <= 14'b00110000110010; // Position : 70 , Value : 3122
        9'b001000110: dacOutputB <= 14'b00110001010011; // Position : 71 , Value : 3155
        9'b001000111: dacOutputB <= 14'b00110001110011; // Position : 72 , Value : 3188
        9'b001001000: dacOutputB <= 14'b00110010010011; // Position : 73 , Value : 3220
        9'b001001001: dacOutputB <= 14'b00110010110011; // Position : 74 , Value : 3251
        9'b001001010: dacOutputB <= 14'b00110011010010; // Position : 75 , Value : 3282
        9'b001001011: dacOutputB <= 14'b00110011110000; // Position : 76 , Value : 3313
        9'b001001100: dacOutputB <= 14'b00110100001110; // Position : 77 , Value : 3343
        9'b001001101: dacOutputB <= 14'b00110100101100; // Position : 78 , Value : 3372
        9'b001001110: dacOutputB <= 14'b00110101001001; // Position : 79 , Value : 3401
        9'b001001111: dacOutputB <= 14'b00110101100101; // Position : 80 , Value : 3430
        9'b001010000: dacOutputB <= 14'b00110110000001; // Position : 81 , Value : 3458
        9'b001010001: dacOutputB <= 14'b00110110011100; // Position : 82 , Value : 3485
        9'b001010010: dacOutputB <= 14'b00110110110111; // Position : 83 , Value : 3512
        9'b001010011: dacOutputB <= 14'b00110111010001; // Position : 84 , Value : 3538
        9'b001010100: dacOutputB <= 14'b00110111101011; // Position : 85 , Value : 3563
        9'b001010101: dacOutputB <= 14'b00111000000100; // Position : 86 , Value : 3588
        9'b001010110: dacOutputB <= 14'b00111000011100; // Position : 87 , Value : 3613
        9'b001010111: dacOutputB <= 14'b00111000110100; // Position : 88 , Value : 3637
        9'b001011000: dacOutputB <= 14'b00111001001100; // Position : 89 , Value : 3660
        9'b001011001: dacOutputB <= 14'b00111001100011; // Position : 90 , Value : 3683
        9'b001011010: dacOutputB <= 14'b00111001111001; // Position : 91 , Value : 3705
        9'b001011011: dacOutputB <= 14'b00111010001110; // Position : 92 , Value : 3727
        9'b001011100: dacOutputB <= 14'b00111010100011; // Position : 93 , Value : 3748
        9'b001011101: dacOutputB <= 14'b00111010111000; // Position : 94 , Value : 3768
        9'b001011110: dacOutputB <= 14'b00111011001100; // Position : 95 , Value : 3788
        9'b001011111: dacOutputB <= 14'b00111011011111; // Position : 96 , Value : 3807
        9'b001100000: dacOutputB <= 14'b00111011110010; // Position : 97 , Value : 3826
        9'b001100001: dacOutputB <= 14'b00111100000100; // Position : 98 , Value : 3844
        9'b001100010: dacOutputB <= 14'b00111100010101; // Position : 99 , Value : 3862
        9'b001100011: dacOutputB <= 14'b00111100100110; // Position : 100 , Value : 3878
        9'b001100100: dacOutputB <= 14'b00111100110110; // Position : 101 , Value : 3895
        9'b001100101: dacOutputB <= 14'b00111101000110; // Position : 102 , Value : 3910
        9'b001100110: dacOutputB <= 14'b00111101010101; // Position : 103 , Value : 3925
        9'b001100111: dacOutputB <= 14'b00111101100011; // Position : 104 , Value : 3940
        9'b001101000: dacOutputB <= 14'b00111101110001; // Position : 105 , Value : 3953
        9'b001101001: dacOutputB <= 14'b00111101111110; // Position : 106 , Value : 3966
        9'b001101010: dacOutputB <= 14'b00111110001010; // Position : 107 , Value : 3979
        9'b001101011: dacOutputB <= 14'b00111110010110; // Position : 108 , Value : 3991
        9'b001101100: dacOutputB <= 14'b00111110100001; // Position : 109 , Value : 4002
        9'b001101101: dacOutputB <= 14'b00111110101100; // Position : 110 , Value : 4013
        9'b001101110: dacOutputB <= 14'b00111110110110; // Position : 111 , Value : 4022
        9'b001101111: dacOutputB <= 14'b00111110111111; // Position : 112 , Value : 4032
        9'b001110000: dacOutputB <= 14'b00111111001000; // Position : 113 , Value : 4040
        9'b001110001: dacOutputB <= 14'b00111111010000; // Position : 114 , Value : 4049
        9'b001110010: dacOutputB <= 14'b00111111010111; // Position : 115 , Value : 4056
        9'b001110011: dacOutputB <= 14'b00111111011110; // Position : 116 , Value : 4063
        9'b001110100: dacOutputB <= 14'b00111111100100; // Position : 117 , Value : 4069
        9'b001110101: dacOutputB <= 14'b00111111101010; // Position : 118 , Value : 4074
        9'b001110110: dacOutputB <= 14'b00111111101111; // Position : 119 , Value : 4079
        9'b001110111: dacOutputB <= 14'b00111111110011; // Position : 120 , Value : 4083
        9'b001111000: dacOutputB <= 14'b00111111110110; // Position : 121 , Value : 4087
        9'b001111001: dacOutputB <= 14'b00111111111001; // Position : 122 , Value : 4090
        9'b001111010: dacOutputB <= 14'b00111111111100; // Position : 123 , Value : 4092
        9'b001111011: dacOutputB <= 14'b00111111111101; // Position : 124 , Value : 4094
        9'b001111100: dacOutputB <= 14'b00111111111110; // Position : 125 , Value : 4095
        9'b001111101: dacOutputB <= 14'b00111111111111; // Position : 126 , Value : 4095
        9'b001111110: dacOutputB <= 14'b00111111111110; // Position : 127 , Value : 4095
        9'b001111111: dacOutputB <= 14'b00111111111101; // Position : 128 , Value : 4094
        9'b010000000: dacOutputB <= 14'b00111111111100; // Position : 129 , Value : 4092
        9'b010000001: dacOutputB <= 14'b00111111111001; // Position : 130 , Value : 4090
        9'b010000010: dacOutputB <= 14'b00111111110110; // Position : 131 , Value : 4087
        9'b010000011: dacOutputB <= 14'b00111111110011; // Position : 132 , Value : 4083
        9'b010000100: dacOutputB <= 14'b00111111101111; // Position : 133 , Value : 4079
        9'b010000101: dacOutputB <= 14'b00111111101010; // Position : 134 , Value : 4074
        9'b010000110: dacOutputB <= 14'b00111111100100; // Position : 135 , Value : 4069
        9'b010000111: dacOutputB <= 14'b00111111011110; // Position : 136 , Value : 4063
        9'b010001000: dacOutputB <= 14'b00111111010111; // Position : 137 , Value : 4056
        9'b010001001: dacOutputB <= 14'b00111111010000; // Position : 138 , Value : 4049
        9'b010001010: dacOutputB <= 14'b00111111001000; // Position : 139 , Value : 4040
        9'b010001011: dacOutputB <= 14'b00111110111111; // Position : 140 , Value : 4032
        9'b010001100: dacOutputB <= 14'b00111110110110; // Position : 141 , Value : 4022
        9'b010001101: dacOutputB <= 14'b00111110101100; // Position : 142 , Value : 4013
        9'b010001110: dacOutputB <= 14'b00111110100001; // Position : 143 , Value : 4002
        9'b010001111: dacOutputB <= 14'b00111110010110; // Position : 144 , Value : 3991
        9'b010010000: dacOutputB <= 14'b00111110001010; // Position : 145 , Value : 3979
        9'b010010001: dacOutputB <= 14'b00111101111110; // Position : 146 , Value : 3966
        9'b010010010: dacOutputB <= 14'b00111101110001; // Position : 147 , Value : 3953
        9'b010010011: dacOutputB <= 14'b00111101100011; // Position : 148 , Value : 3940
        9'b010010100: dacOutputB <= 14'b00111101010101; // Position : 149 , Value : 3925
        9'b010010101: dacOutputB <= 14'b00111101000110; // Position : 150 , Value : 3910
        9'b010010110: dacOutputB <= 14'b00111100110110; // Position : 151 , Value : 3895
        9'b010010111: dacOutputB <= 14'b00111100100110; // Position : 152 , Value : 3878
        9'b010011000: dacOutputB <= 14'b00111100010101; // Position : 153 , Value : 3862
        9'b010011001: dacOutputB <= 14'b00111100000100; // Position : 154 , Value : 3844
        9'b010011010: dacOutputB <= 14'b00111011110010; // Position : 155 , Value : 3826
        9'b010011011: dacOutputB <= 14'b00111011011111; // Position : 156 , Value : 3807
        9'b010011100: dacOutputB <= 14'b00111011001100; // Position : 157 , Value : 3788
        9'b010011101: dacOutputB <= 14'b00111010111000; // Position : 158 , Value : 3768
        9'b010011110: dacOutputB <= 14'b00111010100011; // Position : 159 , Value : 3748
        9'b010011111: dacOutputB <= 14'b00111010001110; // Position : 160 , Value : 3727
        9'b010100000: dacOutputB <= 14'b00111001111001; // Position : 161 , Value : 3705
        9'b010100001: dacOutputB <= 14'b00111001100011; // Position : 162 , Value : 3683
        9'b010100010: dacOutputB <= 14'b00111001001100; // Position : 163 , Value : 3660
        9'b010100011: dacOutputB <= 14'b00111000110100; // Position : 164 , Value : 3637
        9'b010100100: dacOutputB <= 14'b00111000011100; // Position : 165 , Value : 3613
        9'b010100101: dacOutputB <= 14'b00111000000100; // Position : 166 , Value : 3588
        9'b010100110: dacOutputB <= 14'b00110111101011; // Position : 167 , Value : 3563
        9'b010100111: dacOutputB <= 14'b00110111010001; // Position : 168 , Value : 3538
        9'b010101000: dacOutputB <= 14'b00110110110111; // Position : 169 , Value : 3512
        9'b010101001: dacOutputB <= 14'b00110110011100; // Position : 170 , Value : 3485
        9'b010101010: dacOutputB <= 14'b00110110000001; // Position : 171 , Value : 3458
        9'b010101011: dacOutputB <= 14'b00110101100101; // Position : 172 , Value : 3430
        9'b010101100: dacOutputB <= 14'b00110101001001; // Position : 173 , Value : 3401
        9'b010101101: dacOutputB <= 14'b00110100101100; // Position : 174 , Value : 3372
        9'b010101110: dacOutputB <= 14'b00110100001110; // Position : 175 , Value : 3343
        9'b010101111: dacOutputB <= 14'b00110011110000; // Position : 176 , Value : 3313
        9'b010110000: dacOutputB <= 14'b00110011010010; // Position : 177 , Value : 3282
        9'b010110001: dacOutputB <= 14'b00110010110011; // Position : 178 , Value : 3251
        9'b010110010: dacOutputB <= 14'b00110010010011; // Position : 179 , Value : 3220
        9'b010110011: dacOutputB <= 14'b00110001110011; // Position : 180 , Value : 3188
        9'b010110100: dacOutputB <= 14'b00110001010011; // Position : 181 , Value : 3155
        9'b010110101: dacOutputB <= 14'b00110000110010; // Position : 182 , Value : 3122
        9'b010110110: dacOutputB <= 14'b00110000010000; // Position : 183 , Value : 3089
        9'b010110111: dacOutputB <= 14'b00101111101110; // Position : 184 , Value : 3055
        9'b010111000: dacOutputB <= 14'b00101111001100; // Position : 185 , Value : 3020
        9'b010111001: dacOutputB <= 14'b00101110101001; // Position : 186 , Value : 2985
        9'b010111010: dacOutputB <= 14'b00101110000101; // Position : 187 , Value : 2950
        9'b010111011: dacOutputB <= 14'b00101101100001; // Position : 188 , Value : 2914
        9'b010111100: dacOutputB <= 14'b00101100111101; // Position : 189 , Value : 2877
        9'b010111101: dacOutputB <= 14'b00101100011000; // Position : 190 , Value : 2841
        9'b010111110: dacOutputB <= 14'b00101011110011; // Position : 191 , Value : 2803
        9'b010111111: dacOutputB <= 14'b00101011001101; // Position : 192 , Value : 2765
        9'b011000000: dacOutputB <= 14'b00101010100111; // Position : 193 , Value : 2727
        9'b011000001: dacOutputB <= 14'b00101010000000; // Position : 194 , Value : 2689
        9'b011000010: dacOutputB <= 14'b00101001011001; // Position : 195 , Value : 2650
        9'b011000011: dacOutputB <= 14'b00101000110010; // Position : 196 , Value : 2610
        9'b011000100: dacOutputB <= 14'b00101000001010; // Position : 197 , Value : 2570
        9'b011000101: dacOutputB <= 14'b00100111100010; // Position : 198 , Value : 2530
        9'b011000110: dacOutputB <= 14'b00100110111001; // Position : 199 , Value : 2489
        9'b011000111: dacOutputB <= 14'b00100110010000; // Position : 200 , Value : 2448
        9'b011001000: dacOutputB <= 14'b00100101100110; // Position : 201 , Value : 2407
        9'b011001001: dacOutputB <= 14'b00100100111101; // Position : 202 , Value : 2365
        9'b011001010: dacOutputB <= 14'b00100100010010; // Position : 203 , Value : 2323
        9'b011001011: dacOutputB <= 14'b00100011101000; // Position : 204 , Value : 2280
        9'b011001100: dacOutputB <= 14'b00100010111101; // Position : 205 , Value : 2237
        9'b011001101: dacOutputB <= 14'b00100010010010; // Position : 206 , Value : 2194
        9'b011001110: dacOutputB <= 14'b00100001100110; // Position : 207 , Value : 2151
        9'b011001111: dacOutputB <= 14'b00100000111010; // Position : 208 , Value : 2107
        9'b011010000: dacOutputB <= 14'b00100000001110; // Position : 209 , Value : 2062
        9'b011010001: dacOutputB <= 14'b00011111100001; // Position : 210 , Value : 2018
        9'b011010010: dacOutputB <= 14'b00011110110100; // Position : 211 , Value : 1973
        9'b011010011: dacOutputB <= 14'b00011110000111; // Position : 212 , Value : 1928
        9'b011010100: dacOutputB <= 14'b00011101011001; // Position : 213 , Value : 1882
        9'b011010101: dacOutputB <= 14'b00011100101100; // Position : 214 , Value : 1836
        9'b011010110: dacOutputB <= 14'b00011011111101; // Position : 215 , Value : 1790
        9'b011010111: dacOutputB <= 14'b00011011001111; // Position : 216 , Value : 1744
        9'b011011000: dacOutputB <= 14'b00011010100000; // Position : 217 , Value : 1697
        9'b011011001: dacOutputB <= 14'b00011001110001; // Position : 218 , Value : 1650
        9'b011011010: dacOutputB <= 14'b00011001000010; // Position : 219 , Value : 1603
        9'b011011011: dacOutputB <= 14'b00011000010011; // Position : 220 , Value : 1555
        9'b011011100: dacOutputB <= 14'b00010111100011; // Position : 221 , Value : 1507
        9'b011011101: dacOutputB <= 14'b00010110110011; // Position : 222 , Value : 1460
        9'b011011110: dacOutputB <= 14'b00010110000011; // Position : 223 , Value : 1411
        9'b011011111: dacOutputB <= 14'b00010101010010; // Position : 224 , Value : 1363
        9'b011100000: dacOutputB <= 14'b00010100100010; // Position : 225 , Value : 1314
        9'b011100001: dacOutputB <= 14'b00010011110001; // Position : 226 , Value : 1265
        9'b011100010: dacOutputB <= 14'b00010011000000; // Position : 227 , Value : 1216
        9'b011100011: dacOutputB <= 14'b00010010001111; // Position : 228 , Value : 1167
        9'b011100100: dacOutputB <= 14'b00010001011101; // Position : 229 , Value : 1118
        9'b011100101: dacOutputB <= 14'b00010000101100; // Position : 230 , Value : 1068
        9'b011100110: dacOutputB <= 14'b00001111111010; // Position : 231 , Value : 1018
        9'b011100111: dacOutputB <= 14'b00001111001000; // Position : 232 , Value : 968
        9'b011101000: dacOutputB <= 14'b00001110010110; // Position : 233 , Value : 918
        9'b011101001: dacOutputB <= 14'b00001101100100; // Position : 234 , Value : 868
        9'b011101010: dacOutputB <= 14'b00001100110001; // Position : 235 , Value : 818
        9'b011101011: dacOutputB <= 14'b00001011111111; // Position : 236 , Value : 767
        9'b011101100: dacOutputB <= 14'b00001011001100; // Position : 237 , Value : 717
        9'b011101101: dacOutputB <= 14'b00001010011001; // Position : 238 , Value : 666
        9'b011101110: dacOutputB <= 14'b00001001100111; // Position : 239 , Value : 615
        9'b011101111: dacOutputB <= 14'b00001000110100; // Position : 240 , Value : 564
        9'b011110000: dacOutputB <= 14'b00001000000001; // Position : 241 , Value : 513
        9'b011110001: dacOutputB <= 14'b00000111001110; // Position : 242 , Value : 462
        9'b011110010: dacOutputB <= 14'b00000110011010; // Position : 243 , Value : 411
        9'b011110011: dacOutputB <= 14'b00000101100111; // Position : 244 , Value : 360
        9'b011110100: dacOutputB <= 14'b00000100110100; // Position : 245 , Value : 308
        9'b011110101: dacOutputB <= 14'b00000100000001; // Position : 246 , Value : 257
        9'b011110110: dacOutputB <= 14'b00000011001101; // Position : 247 , Value : 206
        9'b011110111: dacOutputB <= 14'b00000010011010; // Position : 248 , Value : 154
        9'b011111000: dacOutputB <= 14'b00000001100110; // Position : 249 , Value : 103
        9'b011111001: dacOutputB <= 14'b00000000110011; // Position : 250 , Value : 51
        9'b011111010: dacOutputB <= 14'b00000000000000; // Position : 251 , Value : 0
        9'b011111011: dacOutputB <= 14'b11111111001100; // Position : 252 , Value : -51
        9'b011111100: dacOutputB <= 14'b11111110011001; // Position : 253 , Value : -103
        9'b011111101: dacOutputB <= 14'b11111101100101; // Position : 254 , Value : -154
        9'b011111110: dacOutputB <= 14'b11111100110010; // Position : 255 , Value : -206
        9'b011111111: dacOutputB <= 14'b11111011111110; // Position : 256 , Value : -257
        9'b100000000: dacOutputB <= 14'b11111011001011; // Position : 257 , Value : -308
        9'b100000001: dacOutputB <= 14'b11111010011000; // Position : 258 , Value : -360
        9'b100000010: dacOutputB <= 14'b11111001100101; // Position : 259 , Value : -411
        9'b100000011: dacOutputB <= 14'b11111000110001; // Position : 260 , Value : -462
        9'b100000100: dacOutputB <= 14'b11110111111110; // Position : 261 , Value : -513
        9'b100000101: dacOutputB <= 14'b11110111001011; // Position : 262 , Value : -564
        9'b100000110: dacOutputB <= 14'b11110110011000; // Position : 263 , Value : -615
        9'b100000111: dacOutputB <= 14'b11110101100110; // Position : 264 , Value : -666
        9'b100001000: dacOutputB <= 14'b11110100110011; // Position : 265 , Value : -717
        9'b100001001: dacOutputB <= 14'b11110100000000; // Position : 266 , Value : -767
        9'b100001010: dacOutputB <= 14'b11110011001110; // Position : 267 , Value : -818
        9'b100001011: dacOutputB <= 14'b11110010011011; // Position : 268 , Value : -868
        9'b100001100: dacOutputB <= 14'b11110001101001; // Position : 269 , Value : -918
        9'b100001101: dacOutputB <= 14'b11110000110111; // Position : 270 , Value : -968
        9'b100001110: dacOutputB <= 14'b11110000000101; // Position : 271 , Value : -1018
        9'b100001111: dacOutputB <= 14'b11101111010011; // Position : 272 , Value : -1068
        9'b100010000: dacOutputB <= 14'b11101110100010; // Position : 273 , Value : -1118
        9'b100010001: dacOutputB <= 14'b11101101110000; // Position : 274 , Value : -1167
        9'b100010010: dacOutputB <= 14'b11101100111111; // Position : 275 , Value : -1216
        9'b100010011: dacOutputB <= 14'b11101100001110; // Position : 276 , Value : -1265
        9'b100010100: dacOutputB <= 14'b11101011011101; // Position : 277 , Value : -1314
        9'b100010101: dacOutputB <= 14'b11101010101101; // Position : 278 , Value : -1363
        9'b100010110: dacOutputB <= 14'b11101001111100; // Position : 279 , Value : -1411
        9'b100010111: dacOutputB <= 14'b11101001001100; // Position : 280 , Value : -1460
        9'b100011000: dacOutputB <= 14'b11101000011100; // Position : 281 , Value : -1507
        9'b100011001: dacOutputB <= 14'b11100111101100; // Position : 282 , Value : -1555
        9'b100011010: dacOutputB <= 14'b11100110111101; // Position : 283 , Value : -1603
        9'b100011011: dacOutputB <= 14'b11100110001110; // Position : 284 , Value : -1650
        9'b100011100: dacOutputB <= 14'b11100101011111; // Position : 285 , Value : -1697
        9'b100011101: dacOutputB <= 14'b11100100110000; // Position : 286 , Value : -1744
        9'b100011110: dacOutputB <= 14'b11100100000010; // Position : 287 , Value : -1790
        9'b100011111: dacOutputB <= 14'b11100011010011; // Position : 288 , Value : -1836
        9'b100100000: dacOutputB <= 14'b11100010100110; // Position : 289 , Value : -1882
        9'b100100001: dacOutputB <= 14'b11100001111000; // Position : 290 , Value : -1928
        9'b100100010: dacOutputB <= 14'b11100001001011; // Position : 291 , Value : -1973
        9'b100100011: dacOutputB <= 14'b11100000011110; // Position : 292 , Value : -2018
        9'b100100100: dacOutputB <= 14'b11011111110001; // Position : 293 , Value : -2062
        9'b100100101: dacOutputB <= 14'b11011111000101; // Position : 294 , Value : -2107
        9'b100100110: dacOutputB <= 14'b11011110011001; // Position : 295 , Value : -2151
        9'b100100111: dacOutputB <= 14'b11011101101101; // Position : 296 , Value : -2194
        9'b100101000: dacOutputB <= 14'b11011101000010; // Position : 297 , Value : -2237
        9'b100101001: dacOutputB <= 14'b11011100010111; // Position : 298 , Value : -2280
        9'b100101010: dacOutputB <= 14'b11011011101101; // Position : 299 , Value : -2323
        9'b100101011: dacOutputB <= 14'b11011011000010; // Position : 300 , Value : -2365
        9'b100101100: dacOutputB <= 14'b11011010011001; // Position : 301 , Value : -2407
        9'b100101101: dacOutputB <= 14'b11011001101111; // Position : 302 , Value : -2448
        9'b100101110: dacOutputB <= 14'b11011001000110; // Position : 303 , Value : -2489
        9'b100101111: dacOutputB <= 14'b11011000011101; // Position : 304 , Value : -2530
        9'b100110000: dacOutputB <= 14'b11010111110101; // Position : 305 , Value : -2570
        9'b100110001: dacOutputB <= 14'b11010111001101; // Position : 306 , Value : -2610
        9'b100110010: dacOutputB <= 14'b11010110100110; // Position : 307 , Value : -2650
        9'b100110011: dacOutputB <= 14'b11010101111111; // Position : 308 , Value : -2689
        9'b100110100: dacOutputB <= 14'b11010101011000; // Position : 309 , Value : -2727
        9'b100110101: dacOutputB <= 14'b11010100110010; // Position : 310 , Value : -2765
        9'b100110110: dacOutputB <= 14'b11010100001100; // Position : 311 , Value : -2803
        9'b100110111: dacOutputB <= 14'b11010011100111; // Position : 312 , Value : -2841
        9'b100111000: dacOutputB <= 14'b11010011000010; // Position : 313 , Value : -2877
        9'b100111001: dacOutputB <= 14'b11010010011110; // Position : 314 , Value : -2914
        9'b100111010: dacOutputB <= 14'b11010001111010; // Position : 315 , Value : -2950
        9'b100111011: dacOutputB <= 14'b11010001010110; // Position : 316 , Value : -2985
        9'b100111100: dacOutputB <= 14'b11010000110011; // Position : 317 , Value : -3020
        9'b100111101: dacOutputB <= 14'b11010000010001; // Position : 318 , Value : -3055
        9'b100111110: dacOutputB <= 14'b11001111101111; // Position : 319 , Value : -3089
        9'b100111111: dacOutputB <= 14'b11001111001101; // Position : 320 , Value : -3122
        9'b101000000: dacOutputB <= 14'b11001110101100; // Position : 321 , Value : -3155
        9'b101000001: dacOutputB <= 14'b11001110001100; // Position : 322 , Value : -3188
        9'b101000010: dacOutputB <= 14'b11001101101100; // Position : 323 , Value : -3220
        9'b101000011: dacOutputB <= 14'b11001101001100; // Position : 324 , Value : -3251
        9'b101000100: dacOutputB <= 14'b11001100101101; // Position : 325 , Value : -3282
        9'b101000101: dacOutputB <= 14'b11001100001111; // Position : 326 , Value : -3313
        9'b101000110: dacOutputB <= 14'b11001011110001; // Position : 327 , Value : -3343
        9'b101000111: dacOutputB <= 14'b11001011010011; // Position : 328 , Value : -3372
        9'b101001000: dacOutputB <= 14'b11001010110110; // Position : 329 , Value : -3401
        9'b101001001: dacOutputB <= 14'b11001010011010; // Position : 330 , Value : -3430
        9'b101001010: dacOutputB <= 14'b11001001111110; // Position : 331 , Value : -3458
        9'b101001011: dacOutputB <= 14'b11001001100011; // Position : 332 , Value : -3485
        9'b101001100: dacOutputB <= 14'b11001001001000; // Position : 333 , Value : -3512
        9'b101001101: dacOutputB <= 14'b11001000101110; // Position : 334 , Value : -3538
        9'b101001110: dacOutputB <= 14'b11001000010100; // Position : 335 , Value : -3563
        9'b101001111: dacOutputB <= 14'b11000111111011; // Position : 336 , Value : -3588
        9'b101010000: dacOutputB <= 14'b11000111100011; // Position : 337 , Value : -3613
        9'b101010001: dacOutputB <= 14'b11000111001011; // Position : 338 , Value : -3637
        9'b101010010: dacOutputB <= 14'b11000110110011; // Position : 339 , Value : -3660
        9'b101010011: dacOutputB <= 14'b11000110011100; // Position : 340 , Value : -3683
        9'b101010100: dacOutputB <= 14'b11000110000110; // Position : 341 , Value : -3705
        9'b101010101: dacOutputB <= 14'b11000101110001; // Position : 342 , Value : -3727
        9'b101010110: dacOutputB <= 14'b11000101011100; // Position : 343 , Value : -3748
        9'b101010111: dacOutputB <= 14'b11000101000111; // Position : 344 , Value : -3768
        9'b101011000: dacOutputB <= 14'b11000100110011; // Position : 345 , Value : -3788
        9'b101011001: dacOutputB <= 14'b11000100100000; // Position : 346 , Value : -3807
        9'b101011010: dacOutputB <= 14'b11000100001101; // Position : 347 , Value : -3826
        9'b101011011: dacOutputB <= 14'b11000011111011; // Position : 348 , Value : -3844
        9'b101011100: dacOutputB <= 14'b11000011101010; // Position : 349 , Value : -3862
        9'b101011101: dacOutputB <= 14'b11000011011001; // Position : 350 , Value : -3878
        9'b101011110: dacOutputB <= 14'b11000011001001; // Position : 351 , Value : -3895
        9'b101011111: dacOutputB <= 14'b11000010111001; // Position : 352 , Value : -3910
        9'b101100000: dacOutputB <= 14'b11000010101010; // Position : 353 , Value : -3925
        9'b101100001: dacOutputB <= 14'b11000010011100; // Position : 354 , Value : -3940
        9'b101100010: dacOutputB <= 14'b11000010001110; // Position : 355 , Value : -3953
        9'b101100011: dacOutputB <= 14'b11000010000001; // Position : 356 , Value : -3966
        9'b101100100: dacOutputB <= 14'b11000001110101; // Position : 357 , Value : -3979
        9'b101100101: dacOutputB <= 14'b11000001101001; // Position : 358 , Value : -3991
        9'b101100110: dacOutputB <= 14'b11000001011110; // Position : 359 , Value : -4002
        9'b101100111: dacOutputB <= 14'b11000001010011; // Position : 360 , Value : -4013
        9'b101101000: dacOutputB <= 14'b11000001001001; // Position : 361 , Value : -4022
        9'b101101001: dacOutputB <= 14'b11000001000000; // Position : 362 , Value : -4032
        9'b101101010: dacOutputB <= 14'b11000000110111; // Position : 363 , Value : -4040
        9'b101101011: dacOutputB <= 14'b11000000101111; // Position : 364 , Value : -4049
        9'b101101100: dacOutputB <= 14'b11000000101000; // Position : 365 , Value : -4056
        9'b101101101: dacOutputB <= 14'b11000000100001; // Position : 366 , Value : -4063
        9'b101101110: dacOutputB <= 14'b11000000011011; // Position : 367 , Value : -4069
        9'b101101111: dacOutputB <= 14'b11000000010101; // Position : 368 , Value : -4074
        9'b101110000: dacOutputB <= 14'b11000000010000; // Position : 369 , Value : -4079
        9'b101110001: dacOutputB <= 14'b11000000001100; // Position : 370 , Value : -4083
        9'b101110010: dacOutputB <= 14'b11000000001001; // Position : 371 , Value : -4087
        9'b101110011: dacOutputB <= 14'b11000000000110; // Position : 372 , Value : -4090
        9'b101110100: dacOutputB <= 14'b11000000000011; // Position : 373 , Value : -4092
        9'b101110101: dacOutputB <= 14'b11000000000010; // Position : 374 , Value : -4094
        9'b101110110: dacOutputB <= 14'b11000000000001; // Position : 375 , Value : -4095
        9'b101110111: dacOutputB <= 14'b11000000000001; // Position : 376 , Value : -4095
        9'b101111000: dacOutputB <= 14'b11000000000001; // Position : 377 , Value : -4095
        9'b101111001: dacOutputB <= 14'b11000000000010; // Position : 378 , Value : -4094
        9'b101111010: dacOutputB <= 14'b11000000000011; // Position : 379 , Value : -4092
        9'b101111011: dacOutputB <= 14'b11000000000110; // Position : 380 , Value : -4090
        9'b101111100: dacOutputB <= 14'b11000000001001; // Position : 381 , Value : -4087
        9'b101111101: dacOutputB <= 14'b11000000001100; // Position : 382 , Value : -4083
        9'b101111110: dacOutputB <= 14'b11000000010000; // Position : 383 , Value : -4079
        9'b101111111: dacOutputB <= 14'b11000000010101; // Position : 384 , Value : -4074
        9'b110000000: dacOutputB <= 14'b11000000011011; // Position : 385 , Value : -4069
        9'b110000001: dacOutputB <= 14'b11000000100001; // Position : 386 , Value : -4063
        9'b110000010: dacOutputB <= 14'b11000000101000; // Position : 387 , Value : -4056
        9'b110000011: dacOutputB <= 14'b11000000101111; // Position : 388 , Value : -4049
        9'b110000100: dacOutputB <= 14'b11000000110111; // Position : 389 , Value : -4040
        9'b110000101: dacOutputB <= 14'b11000001000000; // Position : 390 , Value : -4032
        9'b110000110: dacOutputB <= 14'b11000001001001; // Position : 391 , Value : -4022
        9'b110000111: dacOutputB <= 14'b11000001010011; // Position : 392 , Value : -4013
        9'b110001000: dacOutputB <= 14'b11000001011110; // Position : 393 , Value : -4002
        9'b110001001: dacOutputB <= 14'b11000001101001; // Position : 394 , Value : -3991
        9'b110001010: dacOutputB <= 14'b11000001110101; // Position : 395 , Value : -3979
        9'b110001011: dacOutputB <= 14'b11000010000001; // Position : 396 , Value : -3966
        9'b110001100: dacOutputB <= 14'b11000010001110; // Position : 397 , Value : -3953
        9'b110001101: dacOutputB <= 14'b11000010011100; // Position : 398 , Value : -3940
        9'b110001110: dacOutputB <= 14'b11000010101010; // Position : 399 , Value : -3925
        9'b110001111: dacOutputB <= 14'b11000010111001; // Position : 400 , Value : -3910
        9'b110010000: dacOutputB <= 14'b11000011001001; // Position : 401 , Value : -3895
        9'b110010001: dacOutputB <= 14'b11000011011001; // Position : 402 , Value : -3878
        9'b110010010: dacOutputB <= 14'b11000011101010; // Position : 403 , Value : -3862
        9'b110010011: dacOutputB <= 14'b11000011111011; // Position : 404 , Value : -3844
        9'b110010100: dacOutputB <= 14'b11000100001101; // Position : 405 , Value : -3826
        9'b110010101: dacOutputB <= 14'b11000100100000; // Position : 406 , Value : -3807
        9'b110010110: dacOutputB <= 14'b11000100110011; // Position : 407 , Value : -3788
        9'b110010111: dacOutputB <= 14'b11000101000111; // Position : 408 , Value : -3768
        9'b110011000: dacOutputB <= 14'b11000101011100; // Position : 409 , Value : -3748
        9'b110011001: dacOutputB <= 14'b11000101110001; // Position : 410 , Value : -3727
        9'b110011010: dacOutputB <= 14'b11000110000110; // Position : 411 , Value : -3705
        9'b110011011: dacOutputB <= 14'b11000110011100; // Position : 412 , Value : -3683
        9'b110011100: dacOutputB <= 14'b11000110110011; // Position : 413 , Value : -3660
        9'b110011101: dacOutputB <= 14'b11000111001011; // Position : 414 , Value : -3637
        9'b110011110: dacOutputB <= 14'b11000111100011; // Position : 415 , Value : -3613
        9'b110011111: dacOutputB <= 14'b11000111111011; // Position : 416 , Value : -3588
        9'b110100000: dacOutputB <= 14'b11001000010100; // Position : 417 , Value : -3563
        9'b110100001: dacOutputB <= 14'b11001000101110; // Position : 418 , Value : -3538
        9'b110100010: dacOutputB <= 14'b11001001001000; // Position : 419 , Value : -3512
        9'b110100011: dacOutputB <= 14'b11001001100011; // Position : 420 , Value : -3485
        9'b110100100: dacOutputB <= 14'b11001001111110; // Position : 421 , Value : -3458
        9'b110100101: dacOutputB <= 14'b11001010011010; // Position : 422 , Value : -3430
        9'b110100110: dacOutputB <= 14'b11001010110110; // Position : 423 , Value : -3401
        9'b110100111: dacOutputB <= 14'b11001011010011; // Position : 424 , Value : -3372
        9'b110101000: dacOutputB <= 14'b11001011110001; // Position : 425 , Value : -3343
        9'b110101001: dacOutputB <= 14'b11001100001111; // Position : 426 , Value : -3313
        9'b110101010: dacOutputB <= 14'b11001100101101; // Position : 427 , Value : -3282
        9'b110101011: dacOutputB <= 14'b11001101001100; // Position : 428 , Value : -3251
        9'b110101100: dacOutputB <= 14'b11001101101100; // Position : 429 , Value : -3220
        9'b110101101: dacOutputB <= 14'b11001110001100; // Position : 430 , Value : -3188
        9'b110101110: dacOutputB <= 14'b11001110101100; // Position : 431 , Value : -3155
        9'b110101111: dacOutputB <= 14'b11001111001101; // Position : 432 , Value : -3122
        9'b110110000: dacOutputB <= 14'b11001111101111; // Position : 433 , Value : -3089
        9'b110110001: dacOutputB <= 14'b11010000010001; // Position : 434 , Value : -3055
        9'b110110010: dacOutputB <= 14'b11010000110011; // Position : 435 , Value : -3020
        9'b110110011: dacOutputB <= 14'b11010001010110; // Position : 436 , Value : -2985
        9'b110110100: dacOutputB <= 14'b11010001111010; // Position : 437 , Value : -2950
        9'b110110101: dacOutputB <= 14'b11010010011110; // Position : 438 , Value : -2914
        9'b110110110: dacOutputB <= 14'b11010011000010; // Position : 439 , Value : -2877
        9'b110110111: dacOutputB <= 14'b11010011100111; // Position : 440 , Value : -2841
        9'b110111000: dacOutputB <= 14'b11010100001100; // Position : 441 , Value : -2803
        9'b110111001: dacOutputB <= 14'b11010100110010; // Position : 442 , Value : -2765
        9'b110111010: dacOutputB <= 14'b11010101011000; // Position : 443 , Value : -2727
        9'b110111011: dacOutputB <= 14'b11010101111111; // Position : 444 , Value : -2689
        9'b110111100: dacOutputB <= 14'b11010110100110; // Position : 445 , Value : -2650
        9'b110111101: dacOutputB <= 14'b11010111001101; // Position : 446 , Value : -2610
        9'b110111110: dacOutputB <= 14'b11010111110101; // Position : 447 , Value : -2570
        9'b110111111: dacOutputB <= 14'b11011000011101; // Position : 448 , Value : -2530
        9'b111000000: dacOutputB <= 14'b11011001000110; // Position : 449 , Value : -2489
        9'b111000001: dacOutputB <= 14'b11011001101111; // Position : 450 , Value : -2448
        9'b111000010: dacOutputB <= 14'b11011010011001; // Position : 451 , Value : -2407
        9'b111000011: dacOutputB <= 14'b11011011000010; // Position : 452 , Value : -2365
        9'b111000100: dacOutputB <= 14'b11011011101101; // Position : 453 , Value : -2323
        9'b111000101: dacOutputB <= 14'b11011100010111; // Position : 454 , Value : -2280
        9'b111000110: dacOutputB <= 14'b11011101000010; // Position : 455 , Value : -2237
        9'b111000111: dacOutputB <= 14'b11011101101101; // Position : 456 , Value : -2194
        9'b111001000: dacOutputB <= 14'b11011110011001; // Position : 457 , Value : -2151
        9'b111001001: dacOutputB <= 14'b11011111000101; // Position : 458 , Value : -2107
        9'b111001010: dacOutputB <= 14'b11011111110001; // Position : 459 , Value : -2062
        9'b111001011: dacOutputB <= 14'b11100000011110; // Position : 460 , Value : -2018
        9'b111001100: dacOutputB <= 14'b11100001001011; // Position : 461 , Value : -1973
        9'b111001101: dacOutputB <= 14'b11100001111000; // Position : 462 , Value : -1928
        9'b111001110: dacOutputB <= 14'b11100010100110; // Position : 463 , Value : -1882
        9'b111001111: dacOutputB <= 14'b11100011010011; // Position : 464 , Value : -1836
        9'b111010000: dacOutputB <= 14'b11100100000010; // Position : 465 , Value : -1790
        9'b111010001: dacOutputB <= 14'b11100100110000; // Position : 466 , Value : -1744
        9'b111010010: dacOutputB <= 14'b11100101011111; // Position : 467 , Value : -1697
        9'b111010011: dacOutputB <= 14'b11100110001110; // Position : 468 , Value : -1650
        9'b111010100: dacOutputB <= 14'b11100110111101; // Position : 469 , Value : -1603
        9'b111010101: dacOutputB <= 14'b11100111101100; // Position : 470 , Value : -1555
        9'b111010110: dacOutputB <= 14'b11101000011100; // Position : 471 , Value : -1507
        9'b111010111: dacOutputB <= 14'b11101001001100; // Position : 472 , Value : -1460
        9'b111011000: dacOutputB <= 14'b11101001111100; // Position : 473 , Value : -1411
        9'b111011001: dacOutputB <= 14'b11101010101101; // Position : 474 , Value : -1363
        9'b111011010: dacOutputB <= 14'b11101011011101; // Position : 475 , Value : -1314
        9'b111011011: dacOutputB <= 14'b11101100001110; // Position : 476 , Value : -1265
        9'b111011100: dacOutputB <= 14'b11101100111111; // Position : 477 , Value : -1216
        9'b111011101: dacOutputB <= 14'b11101101110000; // Position : 478 , Value : -1167
        9'b111011110: dacOutputB <= 14'b11101110100010; // Position : 479 , Value : -1118
        9'b111011111: dacOutputB <= 14'b11101111010011; // Position : 480 , Value : -1068
        9'b111100000: dacOutputB <= 14'b11110000000101; // Position : 481 , Value : -1018
        9'b111100001: dacOutputB <= 14'b11110000110111; // Position : 482 , Value : -968
        9'b111100010: dacOutputB <= 14'b11110001101001; // Position : 483 , Value : -918
        9'b111100011: dacOutputB <= 14'b11110010011011; // Position : 484 , Value : -868
        9'b111100100: dacOutputB <= 14'b11110011001110; // Position : 485 , Value : -818
        9'b111100101: dacOutputB <= 14'b11110100000000; // Position : 486 , Value : -767
        9'b111100110: dacOutputB <= 14'b11110100110011; // Position : 487 , Value : -717
        9'b111100111: dacOutputB <= 14'b11110101100110; // Position : 488 , Value : -666
        9'b111101000: dacOutputB <= 14'b11110110011000; // Position : 489 , Value : -615
        9'b111101001: dacOutputB <= 14'b11110111001011; // Position : 490 , Value : -564
        9'b111101010: dacOutputB <= 14'b11110111111110; // Position : 491 , Value : -513
        9'b111101011: dacOutputB <= 14'b11111000110001; // Position : 492 , Value : -462
        9'b111101100: dacOutputB <= 14'b11111001100101; // Position : 493 , Value : -411
        9'b111101101: dacOutputB <= 14'b11111010011000; // Position : 494 , Value : -360
        9'b111101110: dacOutputB <= 14'b11111011001011; // Position : 495 , Value : -308
        9'b111101111: dacOutputB <= 14'b11111011111110; // Position : 496 , Value : -257
        9'b111110000: dacOutputB <= 14'b11111100110010; // Position : 497 , Value : -206
        9'b111110001: dacOutputB <= 14'b11111101100101; // Position : 498 , Value : -154
        9'b111110010: dacOutputB <= 14'b11111110011001; // Position : 499 , Value : -103
        default: begin 
            clkCounterB = 0;
            dacOutputB <= 14'b11111111001100;            // Position : 500 , Value : -51
        end
    endcase
end




//assign dac_a_o = dacOutputA;
//assign dac_b_o = dacOutputB;

assign dac_a_o = dacOutputB; // Carrier wave output goes to A
assign dac_b_o = ($signed(dacOutputA)); // Modulation wave output goes to B
assign dac_a_90out_o = ($signed(dacOutputC)); //Out of Phase modulation output
assign syncOutput = sync;

 

endmodule
