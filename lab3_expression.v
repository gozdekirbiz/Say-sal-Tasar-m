/*
X=SUM(m0,m1,m5,m8,m9,m10,m11,m15)
X=SUM(A'B'C'D'+ A'B'C'D + A'BC'D + AB'C'D' + AB'C'D + AB'CD'+ AB'CD + ABCD ) 
X=B'C'+AB'+A'C'D+ACD
*/

module lab3_expression(x,a,b,c,d);

input a,b,c,d;
output x;

wire not_a, not_b,not_c,not_d;
wire exp0, exp1, exp2,exp3;

not (not_a, a);
not (not_b, b);
not (not_c, c);
not (not_d, d);

or (exp0, not_b,not_c);
or (exp1, a,not_b);
or (exp2, not_a,not_c,d);
or (exp3, a, c,d);


and (x, exp0, exp1, exp2,exp3);

endmodule