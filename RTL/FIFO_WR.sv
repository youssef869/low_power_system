module FIFO_WR(
    input  wire       w_clk,
    input  wire       w_inc,
    input  wire       w_rst_n,
    input  wire [3:0] wq2_rptr,
    output reg  [2:0] w_addr,
    output reg  [3:0] w_ptr,
    output wire       w_full
);

reg [3:0] w_ptr_bin;

//write address calculation
always @(posedge w_clk or negedge w_rst_n) begin
    if(!w_rst_n) begin
        w_addr <= 3'b0;
        w_ptr_bin  <= 4'b0;
    end
    else if(w_inc && !w_full) begin
        w_addr     <= w_addr + 3'b1;
        w_ptr_bin  <= w_ptr_bin + 4'b1;
    end
end

//binary to gray conversion
always @(*) begin
    case(w_ptr_bin)
        4'd0: w_ptr = 4'b0000;
        4'd1: w_ptr = 4'b0001;
        4'd2: w_ptr = 4'b0011;
        4'd3: w_ptr = 4'b0010;
        4'd4: w_ptr = 4'b0110;
        4'd5: w_ptr = 4'b0111;
        4'd6: w_ptr = 4'b0101;
        4'd7: w_ptr = 4'b0100;
        4'd8: w_ptr = 4'b1100;
        4'd9: w_ptr = 4'b1101;
        4'd10: w_ptr = 4'b1111;
        4'd11: w_ptr = 4'b1110;
        4'd12: w_ptr = 4'b1010;
        4'd13: w_ptr = 4'b1011;
        4'd14: w_ptr = 4'b1001;
        4'd15: w_ptr = 4'b1000;

    endcase
end

//full flag condition
assign w_full = w_ptr[3] != wq2_rptr[3] && w_ptr[2] != wq2_rptr[2] && w_ptr[1:0] == wq2_rptr[1:0];


endmodule