module parity_tb;
reg a,b,c,d;
wire error;
wire p;
wire _output;
reg [4:0]rec_word;
integer i;
top_module uut(
.a(a),
.b(b),
.c(c),
.d(d),
.error(error),
.p(p),
._output(_output)
);
initial
begin
for(i=0;i<16;i=i+1) begin
{a,b,c,d} = i;
#10;

rec_word = _output;
rec_word[2] = ~rec_word[2];
#5;
if(error)
$display("%b   %b   %b   PASS",
                      a,b,c,d,_output,
                      rec_word);
        else
            $display("%b   %b   %b   FAIL",
                      a,b,c,d, _output,
                      rec_word);
end
$finish;
end
endmodule
