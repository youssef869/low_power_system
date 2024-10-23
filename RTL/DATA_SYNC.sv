module DATA_SYNC #(parameter NUM_STAGES = 2,
                             BUS_WIDTH = 8) 
(
    input  wire [BUS_WIDTH-1:0] unsync_bus,
    input  wire                 bus_enable,
    input  wire                 clk,
    input  wire                 rst,
    output reg  [BUS_WIDTH-1:0] sync_bus,
    output reg                  enable_pulse
);



reg [NUM_STAGES-1:0] sync_enable_reg;
wire pulse_gen_in, pulse_gen_out;
reg pulse_gen_reg;
wire [BUS_WIDTH-1:0] sync_bus_comb;


always @(posedge clk or negedge rst) begin
    if(!rst) begin
        sync_enable_reg <= 'b0;
    end
    else begin
        sync_enable_reg <= {sync_enable_reg[NUM_STAGES-2:0],bus_enable};
    end
end



always @(posedge clk or negedge rst) begin
    if(!rst) begin 
        pulse_gen_reg <= 1'b0;
        enable_pulse  <= 1'b0;
    end
    else begin
        pulse_gen_reg <= pulse_gen_in;
        enable_pulse  <= pulse_gen_out;
    end
end

always @(posedge clk or negedge rst) begin
    if(!rst) begin 
        sync_bus <= 'b0;
    end
    else begin
        sync_bus <= sync_bus_comb;
    end
end

assign sync_bus_comb = pulse_gen_out ? unsync_bus : sync_bus;

assign pulse_gen_in = sync_enable_reg[NUM_STAGES-1];

assign pulse_gen_out =pulse_gen_in && !pulse_gen_reg;

endmodule
