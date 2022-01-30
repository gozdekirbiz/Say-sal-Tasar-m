module lab6_comparator(input [3:0]A,input [3:0]B,output u,output c);
wire [3:0] w1;
wire s2;
lab6_fourbitadder fba(A,B,1,w1,c);
or(s2,w1[0],w1[1],w1[2],w1[3]);
not(u,s2);
endmodule