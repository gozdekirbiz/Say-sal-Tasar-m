
/*
Expression, X=B'C+ACD+CD'
*/

module lab1_expression(x,a,b,c,d);
input a,b,c,d;
output x;

wire not_b, not_d;
wire sub_exp_0, sub_exp_1, sub_exp_2;

not(not_b,b);
not(not_d,d);

and(sub_exp_0, not_b, c);
and(sub_exp_1, a, c, d);
and(sub_exp_2, c, not_d);

or(x,sub_exp_0, sub_exp_1, sub_exp_2);

endmodule