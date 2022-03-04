// A register can load or hold.
module Mreg(in, ctrl, o, clk);

// Control signals.
parameter CTRL_LOAD = 1'b1, CTRL_HOLD = 1'b0;

input [3:0] in;
input ctrl, clk;
output [3:0] o;
reg [3:0] m_O;
assign o = m_O;

// Hidden/internal value. This is a register after all.
reg [3:0] m_Reg;

// Switch function based on control signal.
always @(posedge clk) begin
    case(ctrl)
        CTRL_LOAD: begin
            m_Reg = in;
        end
        CTRL_HOLD: begin
            // The internal register is unchanged on hold, so nothing to do here.
        end
    endcase
    m_O = m_Reg;
end

endmodule