module mux(input [3:0]in, input [1:0]s,output out);
wire [1:0]not_s;
wire [3:0]w;
not(not_s[0],s[0]);
not(not_s[1],s[1]);

and(w[0],in[0],not_s[0],not_s[1]);
and(w[1],in[1],not_s[1],s[0]);
and(w[2],in[2],s[1],not_s[0]);
and(w[3],in[3],s[0],s[1]);

or(out,w[0],w[1],w[2],w[3]);

endmodule