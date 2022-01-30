module mux(input [1:0] in,input s,output out);
wire [1:0] w;
wire not_s;
not(not_s,s);
and(w[0],in[0],s);
and(w[1],in[1],not_s);
or(out,w[0],w[1]);
endmodule