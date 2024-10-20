module RST_SYNC #(parameter NUM_STAGES = 2)
(
    input  wire rst,
    input  wire clk,
    output wire sync_rst
);

reg [NUM_STAGES-1:0] sync_rst_reg;

always @(posedge clk or negedge rst) begin
    if(!rst) begin
        sync_rst_reg <= 'b0;
    end
    else begin
        sync_rst_reg  <= {sync_rst_reg[NUM_STAGES-2:0],1'b1};
    end
end

assign sync_rst = sync_rst_reg[NUM_STAGES-1];

endmodule