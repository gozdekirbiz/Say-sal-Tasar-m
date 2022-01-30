module testbench();

reg a,b,c,d;
wire x_exp, x_nand, x_nor;

lab4_nand test_nand(x_nand, a, b, c, d);
lab4_expression test_exp(x_exp, a, b, c, d);
lab4_nor	test_nor(x_nor,a,b,c,d);

	initial begin
	
		a = 1'b0;
		b = 1'b0;
		c = 1'b0;
		d = 1'b0;
		
		#100
	
		a = 1'b0;
		b = 1'b0;
		c = 1'b0;
		d = 1'b1;
		
		#100
	
		a = 1'b0;
		b = 1'b0;
		c = 1'b1;
		d = 1'b0;
		
		#100
	
		a = 1'b0;
		b = 1'b0;
		c = 1'b1;
		d = 1'b1;
		
		#100
	
		a = 1'b0;
		b = 1'b1;
		c = 1'b0;
		d = 1'b0;
		
		#100
	
		a = 1'b0;
		b = 1'b1;
		c = 1'b0;
		d = 1'b1;
		
		#100
	
		a = 1'b0;
		b = 1'b1;
		c = 1'b1;
		d = 1'b0;
		
		#100
	
		a = 1'b0;
		b = 1'b1;
		c = 1'b1;
		d = 1'b1;
		
		#100
	
		a = 1'b1;
		b = 1'b0;
		c = 1'b0;
		d = 1'b0;
		
		#100
	
		a = 1'b1;
		b = 1'b0;
		c = 1'b0;
		d = 1'b1;
		
		#100
	
		a = 1'b1;
		b = 1'b0;
		c = 1'b1;
		d = 1'b0;
		
		#100
	
		a = 1'b1;
		b = 1'b0;
		c = 1'b1;
		d = 1'b1;
		
		#100
	
		a = 1'b1;
		b = 1'b1;
		c = 1'b0;
		d = 1'b0;
		
		#100
	
		a = 1'b1;
		b = 1'b1;
		c = 1'b0;
		d = 1'b1;
		
		#100
	
		a = 1'b1;
		b = 1'b1;
		c = 1'b1;
		d = 1'b0;
		
		#100
	
		a = 1'b1;
		b = 1'b1;
		c = 1'b1;
		d = 1'b1;
		
	end
		
endmodule