`include "Define.v"

module Pc
(
    input wire clk,
    input wire rst,

    input wire hold,
    
    output reg[`InstAddrWidth] pc
)

always @(posedge clk) begin

    // reset
    if (rst == `GlobalReset) begin
        pc <= `ZeroWord;
    // hold
    end else if (hold == `GeneralEnable) begin
        pc <= pc;
    end else begin
        pc <= pc + 4'h4;
    end
    
end

endmodule