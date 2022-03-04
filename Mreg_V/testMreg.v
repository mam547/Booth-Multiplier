// Test bench for the M register.
module testMReg();

// Parameters.
reg [3:0] in;
reg ctrl;
wire [3:0] o;
reg clk;

// Control signals.
parameter CTRL_LOAD = 1'b1, CTRL_HOLD = 1'b0;

Mreg mr0 (
    .in(in),
    .ctrl(ctrl),
    .o(o),
    .clk(clk)
);

initial begin

    // Setup vars.
    in = 4'b0111;
    clk = 1'b0;

    // Test loading.
    ctrl = CTRL_LOAD;
    #10 $display("Load Out: %b", o);

    // Test holding.
    ctrl = CTRL_HOLD;
    #10 $display("Hold Out: %b", o);

    // Test loading.
    in = 4'b1010;
    ctrl = CTRL_LOAD;
    #10 $display("Load Out: %b", o);

    // Done!
    $stop;

end

always 
    #5 clk = ~clk;

endmodule