module mux16x1(input [15:0]in,input[3:0]s,output out);
wire [3:0] w;

mux mux1(in[3:0],s[1:0],w[0]);
mux mux2(in[7:4],s[1:0],w[1]);
mux mux3(in[11:8],s[1:0],w[2]);
mux mux4(in[15:12],s[1:0],w[3]);
mux mux5(w[3:0],s[3:2],out);

endmodule