module a_ud_counter(input control,input j,input k,input clk,output [3:0]q,output [3:0]qb);
wire control_not;
not(control_not,control);
wire a,b,c;
JK_FF jk1(j,k,clk,q[0],qb[0]);
araislem a1(control,control_not,q[0],qb[0],a);
JK_FF jk2(j,k,a,q[1],qb[1]);
araislem a2(control,control_not,q[1],qb[1],b);
JK_FF jk3(j,k,a,q[2],qb[2]);
araislem a3(control,control_not,q[2],qb[2],c);
JK_FF jk4(j,k,a,q[3],qb[3]);
endmodule