module top_module(
input a,b,c,d,
output p, _output, error
);
parity_generator pg(
.a(a),
.b(b),
.c(c),
.d(d),
.p(p),
._output(_output)
);
parity_checker pc(
.a(a),
.b(b),
.c(c),
.d(d),
.p(p),
.error(error)
);
endmodule
