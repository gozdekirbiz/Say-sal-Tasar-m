module mux4x1(input [3:0]in,input [1:0]s,output out);
wire [1:0]w;
mux mux1(in[1:0],s[1],w[0]);
mux mux2(in[3:2],s[1],w[1]);
mux mux3(w[1:0],s[0],out);
endmodule