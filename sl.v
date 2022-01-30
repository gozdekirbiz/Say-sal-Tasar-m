module sl(a, b, sl ,q);
    input a,b,sl;
    output q;
    assign q=(~sl&b)|(sl&a);
endmodule