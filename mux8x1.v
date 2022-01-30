module mux8x1(input [7:0]in,input [2:0]s,output out);
wire [1:0]w;
mux4x1 mux3(in[3:0],s[2:1],w[0]);
mux4x1 mux4(in[7:4],s[2:1],w[1]);
mux mux5(w[1:0],s[0],out);
endmodule
