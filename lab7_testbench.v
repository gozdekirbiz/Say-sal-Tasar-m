module lab7_testbench();
reg [3:0] B;
wire [15:0] z;
lab7_decoder4x16 dec4(z,B);
initial begin
B=4'b0011;
#100
B=4'b0111;
#100
B=4'b1011;
#100
B=4'b0101;
end

endmodule