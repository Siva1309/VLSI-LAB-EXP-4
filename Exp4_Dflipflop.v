module D_Ff(q,d,clk,rest);
output q;
input d, clk, reset;
reg q;
always @(posedge reset or negedge if (reset)
q = 1'b0;
else
q = d;
end
endmodule
