module register(input Sin,input [3:0]PLin, input op,input sl, input clk,output reg Sout);
wire q0,q1,q2,q3,q4,q5,q6,q7;
wire qb0,qb1,qb2,qb3,qb4,qb5,qb6,qb7;
wire d0,d1,d2,d3;
   dff df3(Sin,clk,q0,qb0);
	dff df2(q0,clk,q1,qb1);
	dff df1(q1,clk,q2,qb2);
	dff df0(q2,clk,q3,qb3);
	 dff a(PLin[3],clk,q4,qb4);
    sl a1(q4,PLin[2],sl,d1);
    dff b(d1,clk,q5,qb5);
    sl b1(q5,PLin[1],sl,d2);
    dff c(d2,clk,q6,qb6);
    sl c1(q6,PLin[0],sl,d3);
    dff d(d3,clk,q7,qb7);
always @(posedge clk) 
begin
	if(op) 
	Sout=q4;
	else
	Sout=q7;
end
endmodule
