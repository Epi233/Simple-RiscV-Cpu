`include "Define.v"

module Id
(
    input wire rst,

    // Instruction
    input wire[`WordWidth] instruction_i,
    input wire[`WordWidth] instructionAddr_i,

    // Input Reg
    input wire[`WordWidth] sourceRegData1,
    input wire[`WordWidth] sourceRegData2,

    // Out to Ex
    output reg[`WordWidth] instruction_o,
    output reg[`WordWidth] instructionAddr_o,

    // 写寄存器
    output reg doWriteGeneralReg,
    output reg[`GeneralRegAddrWidth] writeGeneralRegAddr,
    // 
    output reg[`WordWidth] regData1,
    output reg[`WordWidth] regData2,

)

wire[6:0] funct7 = instruction_i[31:25];
wire[`GeneralAddrWidth] regSource2 = instruction_i[24:20];
wire[`GeneralAddrWidth] regSource1 = instruction_i[19:15];
wire[2:0] opCode = instruction_i[14:12];
wire[`GeneralAddrWidth] regDestination = instruction_i[11:7];
wire[6:0] opCode = instruction_i[6:0];


always @(*) begin

case (opCode)
    `ITypeInstOpCode: begin
        case (opCode)
            `ITypeFunct3_addi,
            `ITypeFunct3_slti,
            `ITypeFunct3_sltiu,
            `ITypeFunct3_xori,
            `ITypeFunct3_ori,
            `ITypeFunct3_andi,
            `ITypeFunct3_slli,
            `ITypeFunct3_sri 
            begin
                doWriteGeneralReg = `GeneralEnable;
                writeGeneralRegAddr = regDestination;

            end
        endcase
    end


endcase


end




endmodule