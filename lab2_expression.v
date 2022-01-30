/* EXPRESSION= (A+B)(B'+C+D)(A'+D)*/


module lab2_expression(x,a,b,c,d);
input a,b,c,d;
output x;

wire not_b, not_a;
wire sub_exp_0, sub_exp1, sub_exp2;

not(not_b,b);
not(not_a,a);

or(sub_exp_0, a, b);
or(sub_exp_1, not_b, c, d);
or(sub_exp_2, not_a, d);

and(x,sub_exp_0, sub_exp_1, sub_exp_2);

endmodule