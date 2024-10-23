module CLK_GATE (
input      CLK_EN,
input      CLK,
output     GATED_CLK
);

reg latch_out ;

always @(CLK or CLK_EN) begin
  if(!CLK) begin
      latch_out <= CLK_EN ;
  end
end
 
 
assign  GATED_CLK = CLK && latch_out ;

/*

TLATNCAX12M U0_TLATNCAX12M (
.E(CLK_EN),
.CK(CLK),
.ECK(GATED_CLK)
);

*/


endmodule
