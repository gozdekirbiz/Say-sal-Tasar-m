module lab7_decoder4x16( output[15:0] Z, input [3:0]B);

wire B_3_not;

not(B_3_not,B[3]);

lab7_decoder3x8 dec2(Z[7:0],B_3_not,B[2:0]);
lab7_decoder3x8 dec3(Z[15:8],B[3],B[2:0]);

endmodule