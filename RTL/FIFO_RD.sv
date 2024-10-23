module FIFO_RD(
    input  wire       r_clk,
    input  wire       r_inc,
    input  wire       r_rst_n,
    input  wire [3:0] rq2_wptr,
    output reg  [2:0] r_addr,
    output reg  [3:0] r_ptr,
    output wire       r_empty
);

reg [3:0] r_ptr_bin;

//read address calculation
always @(posedge r_clk or negedge r_rst_n) begin
    if(!r_rst_n) begin
        r_addr <= 3'b0;
        r_ptr_bin  <= 4'b0;
    end
    else if(r_inc && !r_empty) begin
        r_addr     <= r_addr + 3'b1;
        r_ptr_bin  <= r_ptr_bin + 4'b1;
    end
end

//binary to gray conversion
always @(*) begin
    case(r_ptr_bin)
        4'd0: r_ptr = 4'b0000;
        4'd1: r_ptr = 4'b0001;
        4'd2: r_ptr = 4'b0011;
        4'd3: r_ptr = 4'b0010;
        4'd4: r_ptr = 4'b0110;
        4'd5: r_ptr = 4'b0111;
        4'd6: r_ptr = 4'b0101;
        4'd7: r_ptr = 4'b0100;
        4'd8: r_ptr = 4'b1100;
        4'd9: r_ptr = 4'b1101;
        4'd10: r_ptr = 4'b1111;
        4'd11: r_ptr = 4'b1110;
        4'd12: r_ptr = 4'b1010;
        4'd13: r_ptr = 4'b1011;
        4'd14: r_ptr = 4'b1001;
        4'd15: r_ptr = 4'b1000;

    endcase
end

//empty flag condition
assign r_empty = (r_ptr == rq2_wptr);


endmodule