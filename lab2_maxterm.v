/* MAXTERM
EXPRESSION:  (A+B)(B'+C+D)(A'+D)

DENKLEM1=(A+B)(C+C')(D+D')= (A+B+C'D)(A+B+C+D)(A+B+C'+D')(A+B+C+D')
DENKLEM2=(B'+C+D)(A+A')=(A+B'C+D)(A'+B'+C+D)
DENKLEM3=(A'+D)(B+B')(C+C') = (A'+B'+C+D)(A'+B+C+D)(A'+B'+C'+D)(A'+B+C'+D)

D1.D2.D3= (A+B+C'+D)(A+B+C+D)(A+B+C'+D')(A+B+C+D')(A+B'+C+D)(A'+B'+C+D)(A'+B+C+D)(A'+B'+C'+D)(A'+B+C'+D)

*/
module lab2_maxterm(x,a,b,c,d);
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
wire exp8;
wire exp9;

not(not_a,a);
not(not_b,b);
not(not_c,c);
not(not_d,d);

or(exp1,a,b,not_c,d);
or(exp2,a,b,c,d);
or(exp3,a,b,not_c,not_d);
or(exp4,a,b,c,not_d);
or(exp5,a,not_b,c,d);
or(exp6,not_a,not_b,c,d);
or(exp7,not_a,b,c,d);
or(exp8,not_a,not_b,not_c,d);
or(exp9,not_a,b,not_c,d);

and(x,exp1,exp2,exp3,exp4,exp5,exp6,exp7,exp8,exp9);
endmodule