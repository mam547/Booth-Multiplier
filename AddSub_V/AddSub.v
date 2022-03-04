// Add or subtract inputs depending on control. 0 for add, 1 for sub. Returns the result.
module AddSub(a, b, ctrl, o, clk);

input [3:0] a, b;
input ctrl, clk;
output [3:0] o;

reg [3:0] m_O;
assign o = m_O;

parameter CTRL_ADD = 1'b0, CTRL_SUB = 1'b1;

always @(posedge clk) begin
    case(ctrl)
        CTRL_ADD: begin
            m_O = a + b;
        end
        CTRL_SUB: begin
            m_O = a - b;
        end
    endcase
end

endmodule