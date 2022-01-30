module lab6_testbench();
reg [3:0] A;
reg [3:0] B;
wire compare;
wire c;

lab6_comparator test_c(A,B,compare,c);

	initial begin
	A=4'b0100;B=4'b1000;
	#100
	A=4'b0101;B=4'b0101;
	#100
	A=4'b1000;B=4'b0111;
	#100
	A=4'b1011;B=4'b1000;
	#100
	A=4'b0001;B=4'b0001;
	#100
	A=4'b1100;B=4'b1001;
	#100
	A=4'b0100;B=4'b0100;
	#100
	A=4'b1000;B=4'b0110;

	end
	
endmodule
