// Testbench for the controller.
module testControl();

// Parameters.
reg [3:0] qReg;
reg qNeg;
reg reset;
reg clk;
wire mSignal;
wire addSubSignal;
wire [1:0] aSignal;
wire [1:0] qSignal;
wire finished;

ControlLogic cl0 (
    .qReg(qReg),
    .qNeg(qNeg),
    .start(reset),
    .mSignal(mSignal),
    .addSubSignal(addSubSignal),
    .aSignal(aSignal),
    .qSignal(qSignal),
    .finished(finished),
    .clk(clk)
);

initial begin

    // Setup controller. Since controller operates on negative cycles, we'll do stuff on the positive ones.
    clk = 1'b1;
    reset = 1'b1;

    // Measure initial state.
    #10 $display("Initial State Signals: A(%b), M(%b), Q(%b), Add/Sub(%b), Finished(%b)", aSignal, mSignal, qSignal, addSubSignal, finished);
    reset = 1'b0;
    qReg = 1'b1011;

    // Measure compare state.
    #10 $display("Compare State Signals: A(%b), M(%b), Q(%b), Add/Sub(%b), Finished(%b)", aSignal, mSignal, qSignal, addSubSignal, finished);

    // Measure add/sub state.
    #10 $display("Add/Sub State Signals: A(%b), M(%b), Q(%b), Add/Sub(%b), Finished(%b)", aSignal, mSignal, qSignal, addSubSignal, finished);

    // Shift state.
    #10 $display("Shift State Signals: A(%b), M(%b), Q(%b), Add/Sub(%b), Finished(%b)", aSignal, mSignal, qSignal, addSubSignal, finished);
    qNeg = 0'b1;

    // Count state.
    #10 $display("Count State Signals: A(%b), M(%b), Q(%b), Add/Sub(%b), Finished(%b)", aSignal, mSignal, qSignal, addSubSignal, finished);

    // Done!
    $stop;

end

always 
    #5 clk = ~clk;

endmodule