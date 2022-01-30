module testbench;
reg j,k,clk;
wire q,qb;

initial begin
 clk=0;
 forever #10 clk = ~clk;
end
flipflop jkff (j,k,clk,q,qb);
initial begin
 j <= 1;
 k <= 0;
 #20;
 j <= 0;
 k <= 0;
 #20;
 j <= 0;
 k <= 1;
 #20;
 j <= 1;
 k <= 0;
 #20;
 j <= 1;
 k <= 1;
 #20;
 j <= 0;
 k <= 0;
 #20;
 j <= 1;
 k <= 0;
 #20;
 j <= 0;
 k <= 1;
 #20;
end
endmodule