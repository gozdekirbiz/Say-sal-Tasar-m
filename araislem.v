module araislem(input c,input c_not,input q,input qbar,output o);
wire d,e;
and(d,c_not,q);
and(e,c,qb);
or(o,d,e);
endmodule