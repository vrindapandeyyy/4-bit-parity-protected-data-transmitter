module parity_generator(
input a,b,c,d,
output p, _output
);
assign p = a^b^c^d;
assign _output = {a,b,c,d,p};
endmodule
