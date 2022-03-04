// A register can shift, load, or reset.
module Areg(in, ctrl, o, shiftBit, clk);
input [3:0] in;
input [1:0] ctrl;
reg [3:0] m_O;
reg m_ShiftBit;
input clk;
output [3:0] o;
output shiftBit;

// I hate this compiler for not supporting the full language specification.
assign o = m_O;
assign shiftBit = m_ShiftBit;

// Control signals.
parameter CTRL_LOAD = 2'b00, CTRL_RESET = 2'b01, CTRL_SHIFT = 2'b10, CTRL_HOLD = 2'b11;

// Hidden/internal value. This is a register after all.
reg [3:0] m_Reg;

// State system.
always @(posedge clk) begin
    case(ctrl)
        CTRL_LOAD: begin
            m_Reg = in;
            m_ShiftBit = m_Reg[0];
        end
        CTRL_SHIFT: begin
            m_ShiftBit = m_Reg[0];
            m_Reg = m_Reg >> 1;
            m_Reg[3] = m_Reg[2]; // MSB preserved on shift.
        end
        CTRL_RESET: begin
            m_Reg = 0;
            m_ShiftBit = m_Reg[0];
        end
        CTRL_HOLD: begin
            m_ShiftBit = m_Reg[0];
        end
    endcase
    m_O = m_Reg;
end

endmodule