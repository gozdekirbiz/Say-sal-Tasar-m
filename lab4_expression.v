/*
X=A'B'C' + A'C'D + AB' + ACD
*/

module lab4_expression(x,a,b,c,d);

input a,b,c,d;
output x;

wire not_a, not_b,not_c;
wire exp0, exp1, exp2,exp3;

not (not_a, a);
not (not_b, b);
not (not_c,	c);

and (exp0, not_a, not_b,not_c);
and (exp1, not_a,not_c,d);
and (exp2, a, not_b);
and (exp3, a,c,d);

or (x, exp0, exp1, exp2,exp3);

endmodule