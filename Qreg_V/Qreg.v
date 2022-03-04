// A register that can shift, load, hold or reset.
module Qreg(in, ctrl, carry, o, shiftBit, clk);

// Control signals.
parameter CTRL_LOAD = 2'b00, CTRL_RESET = 2'b01, CTRL_SHIFT = 2'b10, CTRL_HOLD = 2'b11;

input [3:0] in;
input [1:0] ctrl;
input carry, clk;
output [3:0] o;
output shiftBit;
reg [3:0] m_O;
reg m_ShiftBit;
assign o = m_O;
assign shiftBit = m_ShiftBit;

// Hidden/internal value. This is a register after all.
reg [3:0] m_Reg;

// Reset hardware is not defined.
always @(posedge clk) begin
    case(ctrl)
        CTRL_LOAD: begin
            m_Reg = in;
            m_ShiftBit = m_Reg[0];
        end
        CTRL_SHIFT: begin
            m_ShiftBit = m_Reg[0];
            m_Reg = m_Reg >> 1;
            m_Reg[3] = carry;
        end
        CTRL_HOLD: begin
            m_ShiftBit = m_Reg[0];
        end
    endcase
    m_O = m_Reg;
end

endmodule