/*
X=A'B'C' + A'C'D + AB' + ACD
X=[(A'B'C' + A'C'D + AB' + ACD)']'
X=[(A+B+C)(A+C+D')(A'+B)(A'+C'+D')]'
X=[[(A+B+C)'+(A+C+D')'+(A'+B)'+(A'+C'+D')]']'
*/

module lab4_nor(x,a,b,c,d);

input a,b,c,d;
output x;

wire not_a, not_b,not_c,not_d,not_x;
wire exp0, exp1, exp2,exp3,exp4;

not (not_a, a);
not (not_b, b);
not (not_c,	c);
not (not_d, d);

nor (exp0, a, b,c);
nor (exp1, a, c,not_d);
nor (exp2, not_a, b);
nor (exp3, not_a,not_c,not_d);

nor (exp4, exp0, exp1, exp2,exp3);

nor (x,exp4);

endmodule