module testbench();
reg [3:0]d;
reg Sin;
reg clk,sl,op;
wire q;
register d1(Sin, d, op, sl, clk,q);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
if(op)
sl=0;
else
sl=1;
d=4'b1011;
#10 sl=1;
#10 sl=1;
#10 sl=1;
#10 sl=0;d=4'b0000;
#100 $finish;
end 
endmodule