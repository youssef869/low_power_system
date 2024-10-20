module FIFO #(parameter DATA_WIDTH = 8)
(
    input  wire                  w_clk,
    input  wire                  w_rst_n,
    input  wire [DATA_WIDTH-1:0] wr_data,
    input  wire                  w_inc,
    input  wire                  r_clk,
    input  wire                  r_inc,
    input  wire                  r_rst_n,
    output wire [DATA_WIDTH-1:0] rd_data,
    output wire                  empty,
    output wire                  full
);

wire [2:0] w_addr, r_addr;
wire [3:0] w_ptr, r_ptr, wq2_rptr, rq2_wptr;

FIFO_MEM_CNTRL #(.DATA_WIDTH(DATA_WIDTH)) FIFO_MEM_CNTRL_U0(
.w_clk(w_clk),
.w_rst_n(w_rst_n),
.w_data(wr_data),
.w_clken(w_inc && !full),
.w_addr(w_addr),
.r_addr(r_addr),
.r_data(rd_data)
);

FIFO_WR FIFO_WR_U0(
.w_clk(w_clk),
.w_inc(w_inc),
.w_rst_n(w_rst_n),
.wq2_rptr(wq2_rptr),
.w_addr(w_addr),
.w_ptr(w_ptr),
.w_full(full)
);

FIFO_RD FIFO_RD_U0(
.r_clk(r_clk),
.r_inc(r_inc),
.r_rst_n(r_rst_n),
.rq2_wptr(rq2_wptr),
.r_addr(r_addr),
.r_ptr(r_ptr),
.r_empty(empty)
);

DF_SYNC DF_SYNC_U0(
.CLK(w_clk),
.RST(w_rst_n),
.ASYNC(r_ptr),
.SYNC(wq2_rptr)
);

DF_SYNC DF_SYNC_U1(
.CLK(r_clk),
.RST(r_rst_n),
.ASYNC(w_ptr),
.SYNC(rq2_wptr)
);
    
endmodule