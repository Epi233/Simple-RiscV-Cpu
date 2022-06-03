`define GlobalReset 1'b0
`define GlobalSet 1'b1

`define GeneralEnable 1'b1
`define GeneralDisable 1'b0

`define ZeroWord 32'b0

`define WordWidth 31:0
`define DoubleWordWidth 63:0

`define InstAddrWidth 31:0
`define GeneralRegAddrWidth 4:0

// R-Instruction
`define RTypeInstOpCode 7'b0110011
`define RTypeFunct3_add 3'b000
`define RTypeFunct7_add 7'b0000000
`define RTypeFunct3_sub 3'b000
`define RTypeFunct7_sub 7'b0100000
`define RTypeFunct3_sll 3'b001
`define RTypeFunct3_xor 3'b100
`define RTypeFunct3_srl 3'b101
`define RTypeFunct3_sra 3'b101
`define RTypeFunct3_or 3'b110
`define RTypeFunct3_and 3'b111

// I-Instruction
`define ITypeInstOpCode 7'b0010011
`define ITypeFunct3_addi 3'b000
`define ITypeFunct3_slti 3'b010
`define ITypeFunct3_sltiu 3'b011
`define ITypeFunct3_xori 3'b100
`define ITypeFunct3_ori 3'b110
`define ITypeFunct3_andi 3'b111
`define ITypeFunct3_slli 3'b001
`define ITypeFunct3_sri 3'b101
