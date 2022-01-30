/*
X=SUM(m0,m1,m5,m8,m9,m10,m11,m15)
X=SUM(A'B'C'D'+ A'B'C'D + A'BC'D + AB'C'D' + AB'C'D + AB'CD'+ AB'CD + ABCD ) 
*/

module lab3_sop(x,a,b,c,d);

input a,b,c,d;
output x;

wire not_a, not_b,not_c,not_d;
wire m0, m1, m5, m8, m9, m10, m11,m15;

not (not_a, a);
not (not_b, b);
not (not_c, c);
not (not_d, d);

and (m0, not_a,not_b,not_c,not_d);
and (m1, not_a,not_b, not_c, d);
and (m5, not_a, b,not_c,d);
and (m8, a, not_b,not_c,not_d);
and (m9, a, not_b,not_c,d);
and (m10, a, not_b,c,not_d);
and (m11, a, not_b,c,d);
and (m15, a, b,c,d);

or (x,m0, m1, m5, m8, m9, m10, m11,m15);

endmodule