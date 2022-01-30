module lab6_full_adder( input A, input B,input Cin, output S,output Cout);

 wire wire1,wire2,wire3;

 lab6_halfadder half1(A,B,wire1,wire2);
 lab6_halfadder half2(wire1,Cin,S,wire3);
 or(Cout,wire2,wire3);
 endmodule