// Include paths.
`include "/home/gota/EECS301/lab3/AddSub_V/AddSub.v"
`include "/home/gota/EECS301/lab3/Areg_V/Areg.v"
`include "/home/gota/EECS301/lab3/Control_V/ControlLogic.v"
`include "/home/gota/EECS301/lab3/Mreg_V/Mreg.v"
`include "/home/gota/EECS301/lab3/Qreg_V/Qreg.v"

// The actual multiplier.
module Multiplier(multiplicand, multiplier, start, result, finished, clk);

input [3:0] multiplicand, multiplier;
input start, clk;
output [7:0] result;
output finished;
reg [7:0] m_Result;
assign result = m_Result;

// Internal wires.
wire m_AddSubCtrl;
wire m_MRegCtrl;
wire m_QRegCarry;
wire m_QRegNeg;
wire [1:0] m_ARegCtrl;
wire [1:0] m_QRegCtrl;
wire [3:0] m_QRegOut;
wire [3:0] m_AddSubA;
wire [3:0] m_AddSubB;
wire [3:0] m_AddSubOut;

// Wire up the A register.
Areg ar0 (
    .in(m_AddSubOut),
    .ctrl(m_ARegCtrl),
    .o(m_AddSubA),
    .shiftBit(m_QRegCarry),
    .clk(clk)
);

// Wire up the M register.
Mreg mr0 (
    .in(multiplicand),
    .ctrl(m_MRegCtrl),
    .o(m_AddSubB),
    .clk(clk)
);

// Wire up the Q register.
Qreg qr0 (
    .in(multiplier),
    .ctrl(m_QRegCtrl),
    .carry(m_QRegCarry),
    .o(m_QRegOut),
    .shiftBit(m_QRegNeg),
    .clk(clk)
);

// Wire up the adder.
AddSub as0 (
    .a(m_AddSubA),
    .b(m_AddSubB),
    .ctrl(m_AddSubCtrl),
    .o(m_AddSubOut),
    .clk(clk)
);

// Finally, wire the controller.
ControlLogic cl0 (
    .qReg(m_QRegOut),
    .qNeg(m_QRegNeg),
    .start(start),
    .mSignal(m_MRegCtrl),
    .addSubSignal(m_AddSubCtrl),
    .aSignal(m_ARegCtrl),
    .qSignal(m_QRegCtrl),
    .finished(finished),
    .clk(clk)
);

// Wire result.
always @(posedge clk) begin
    m_Result[3:0] = m_QRegOut;
    m_Result[7:4] = m_AddSubA;
end

endmodule