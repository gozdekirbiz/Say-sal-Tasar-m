module lab7_decoder(output [3:0] out,input E, input [1:0] in);
 
 wire in_0_not,in_1_not;
 wire [3:0] w;
 
 not(in_0_not,in[0]);
 not(in_1_not,in[1]);
 
 and(w[0],in_1_not,in_0_not);
 and(w[1],in_1_not,in[0]);
 and(w[2],in[1],in_0_not);
 and(w[3],in[1],in[0]); 
 
 and(out[0],E,w[0]);
 and(out[1],E,w[1]);
 and(out[2],E,w[2]);
 and(out[3],E,w[3]);
 
endmodule