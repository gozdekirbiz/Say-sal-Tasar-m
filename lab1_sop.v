/*
X=B'C+ACD+CD'

X1=B'C(A+A')(D+D')
X1=AB'CD+AB'CD'+A'B'CD+A'B'CD'

X2=ACD(B+B')
X2=ABCD+AB'CD

X3=CD'(A+A')(B+B')
X3=ABCD'+AB'CD'+A'BCD'+A'B'CD'

X=AB'CD+AB'CD'+A'B'CD+A'B'CD'+ABCD+ABCD'+A'BCD'

*/

module lab1_sop(x,a,b,c,d);
input a,b,c,d;
output x;

wire not_a;
wire not_b;
wire not_c;
wire not_d;

wire exp1;
wire exp2;
wire exp3;
wire exp4;
wire exp5;
wire exp6;
wire exp7;

not(not_a,a);
not(not_b,b);
not(not_c,c);
not(not_d,d);

and(exp1,a,not_b,c,d);
and(exp2,a,not_b,c,not_d);
and(exp3,not_a,not_b,c,d);
and(exp4,not_a,not_b,c,not_d);
and(exp5,a,b,c,d);
and(exp6,a,b,c,not_d);
and(exp7,not_a,b,c,not_d);

or(x,exp1,exp2,exp3,exp4,exp5,exp6,exp7);
endmodule