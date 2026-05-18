module parity_checker(
input a,b,c,d,
output wire p,
output reg error
);
always @(*) begin
assign error = a^b^c^d^p;
end
endmodule
