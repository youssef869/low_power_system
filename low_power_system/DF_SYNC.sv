module DF_SYNC (
input    wire         CLK,
input    wire         RST,
input    wire [3:0]   ASYNC,
output   reg  [3:0]   SYNC
);


reg [1:0] sync_reg [3:0] ;

integer  i ;

always @(posedge CLK or negedge RST)
 begin
  if(!RST)
   begin
     for (i=0; i<4; i=i+1)
      sync_reg[i] <= 2'b0 ;
   end
  else
   begin
    for (i=0; i<4; i=i+1)
     sync_reg[i] <= {sync_reg[i][0],ASYNC[i]};
   end  
 end


always @(*)
 begin
  for (i=0; i<4; i=i+1)
    SYNC[i] = sync_reg[i][1] ; 
 end  

endmodule