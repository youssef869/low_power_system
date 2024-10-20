module SYS_CTRL (
input  wire        CLK,
input  wire        RST,
input  wire [15:0] ALU_OUT,
input  wire        ALU_OUT_Valid,
input  wire [7:0]  RX_P_Data,
input  wire        RX_D_VLD,
input  wire [7:0]  RegFile_RdData,
input  wire        RegFile_RdData_Valid,
input  wire        FIFO_FULL,
output reg         ClkGating_EN,
output wire        ClkDiv_EN,
output reg         ALU_EN,
output reg  [3:0]  ALU_FUN,
output reg  [3:0]  RegFile_Address,
output reg         RegFile_WrEn,
output reg         RegFile_RdEn,
output reg  [7:0]  RegFile_WrData,
output reg  [7:0]  FIFO_WrData,
output reg         FIFO_WrInc

);

assign ClkDiv_EN = 1'b1;

localparam WIDTH = 4;

typedef enum bit [WIDTH-1:0] {
	IDLE   = 'b000,
    RF_WR_CMD_ADDR  = 'b001,
    RF_RD_CMD_ADDR   = 'b010,
    RF_WR_CMD_DATA = 'b011,
    FIFO_WRITE = 'b100,
    ALU_OP_CMD_OPERAND_A = 'b101,
    ALU_OP_CMD_OPERAND_B = 'b110,
    ALU_CMD_FUN   = 'b111

} state_e;


state_e cs, ns;

reg [3:0] RegFile_Address_seq;

always @(posedge CLK or negedge RST) begin
    if(!RST) begin
        cs <= IDLE;
        RegFile_Address_seq <= 4'd0;
    end
    else begin
        cs <= ns;
        RegFile_Address_seq <= RegFile_Address;
    end
end

always @(*) begin

    ClkGating_EN = 1'b0;
    ALU_EN = 1'b0;
    ALU_FUN = 4'b0;
    RegFile_Address = RegFile_Address_seq;
    RegFile_WrEn = 1'b0;
    RegFile_RdEn = 1'b0;
    RegFile_WrData = 8'b0;
    FIFO_WrData = 8'b0;
    FIFO_WrInc = 1'b0; 

    case(cs)
        IDLE: begin

            ClkGating_EN = 1'b0;
            ALU_EN = 1'b0;
            ALU_FUN = 4'b0;
            RegFile_Address = 4'b0;
            RegFile_WrEn = 1'b0;
            RegFile_RdEn = 1'b0;
            RegFile_WrData = 8'b0;
            FIFO_WrData = 8'b0;
            FIFO_WrInc = 1'b0;         

            if(RX_D_VLD) begin
                case(RX_P_Data)
                    8'hAA: ns = RF_WR_CMD_ADDR;
                    8'hBB: ns = RF_RD_CMD_ADDR;
                    8'hCC: ns = ALU_OP_CMD_OPERAND_A;
                    8'hDD: ns = ALU_CMD_FUN;
                    default: ns = IDLE;
                endcase 
            end
            else begin
                ns = IDLE;
            end
        end

        RF_WR_CMD_ADDR: begin
            if(RX_D_VLD) begin
                ns = RF_WR_CMD_DATA;
                RegFile_Address = RX_P_Data;
            end
            else begin
                ns = RF_WR_CMD_ADDR;
            end
        end

        RF_WR_CMD_DATA: begin
            if(RX_D_VLD) begin
                ns = IDLE;
                RegFile_WrEn = 1'b1;
                RegFile_WrData = RX_P_Data;
            end
            else begin
                ns = RF_WR_CMD_DATA;
            end
        end

        RF_RD_CMD_ADDR: begin
            if(RX_D_VLD) begin
                ns = FIFO_WRITE;
                RegFile_RdEn = 1'b1;
                RegFile_Address = RX_P_Data;
            end
            else begin
                ns = RF_RD_CMD_ADDR;
            end
        end

        FIFO_WRITE: begin
            if((RegFile_RdData_Valid || ALU_OUT_Valid) && !FIFO_FULL) begin
                 FIFO_WrData = RegFile_RdData_Valid ? RegFile_RdData : ALU_OUT;
                 FIFO_WrInc  = 1'b1;
                 ns = IDLE;
            end
            else begin
                ns = FIFO_WRITE;
            end
        end

        ALU_OP_CMD_OPERAND_A: begin
            if(RX_D_VLD) begin
                RegFile_WrEn = 1'b1;
                RegFile_WrData = RX_P_Data;
                RegFile_Address = 4'd0;
                ns = ALU_OP_CMD_OPERAND_B;
            end
            else begin
                ns = ALU_OP_CMD_OPERAND_A;
            end
        end

        ALU_OP_CMD_OPERAND_B: begin
            if(RX_D_VLD) begin
                RegFile_WrEn = 1'b1;
                RegFile_WrData = RX_P_Data;
                RegFile_Address = 4'd1;
                ns = ALU_CMD_FUN;
            end
            else begin
                ns = ALU_OP_CMD_OPERAND_B;
            end
        end

        ALU_CMD_FUN: begin
            ClkGating_EN = 1'b1;
            if(RX_D_VLD) begin
                ALU_FUN = RX_P_Data;
                ALU_EN = 1'b1;
                ns = FIFO_WRITE;
            end
            else begin
                ns = ALU_CMD_FUN;
            end
        end

        default: ns = IDLE;

    endcase
end

    
endmodule