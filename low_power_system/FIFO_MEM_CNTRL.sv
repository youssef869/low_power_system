module FIFO_MEM_CNTRL #(parameter DATA_WIDTH = 8) (
    input  wire                  w_clk,
    input  wire                  w_rst_n,
    input  wire [DATA_WIDTH-1:0] w_data,
    input  wire                  w_clken,
    input  wire [2:0]            w_addr,
    input  wire [2:0]            r_addr,
    output wire [DATA_WIDTH-1:0] r_data
);

reg [DATA_WIDTH-1:0] FIFO_BUFFER [7:0];
integer i;

always @(posedge w_clk or negedge w_rst_n) begin
    if(!w_rst_n) begin
        for (i = 0; i < 8 ; i = i+1) begin
            FIFO_BUFFER[i] <= 'b0;
        end
    end
    else if(w_clken) begin
        FIFO_BUFFER[w_addr] <= w_data;
    end
end

assign r_data = FIFO_BUFFER[r_addr];
    
endmodule