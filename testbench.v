module testbench();
reg [15:0] b;
reg[3:0]s;
wire out;
mux16x1 test_16x1(b,s,out);
initial begin
b=16'b0000000011111111;s=4'b0001;
#100
b=16'b0000000011111110;s=4'b0000;
#100
b=16'b1000001111110110;s=4'b0110;
#100
b=16'b0101010101010101;s=4'b1111;
end
endmodule
