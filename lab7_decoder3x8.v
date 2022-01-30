module lab7_decoder3x8 (output[7:0] Y, input E, input [2:0] A);

wire A_2_not,exp1,exp2;

not(A_2_not,A[2]);
and(exp2,E,A_2_not);
and(exp1,E,A[2]);

lab7_decoder dec0(Y[3:0],exp2,A[1:0]);
lab7_decoder dec1(Y[7:4],exp1,A[1:0]);
 
endmodule