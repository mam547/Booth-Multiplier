// Test bench for the A register.
module testAReg();

// Parameters.
reg [3:0] in;
reg [1:0] ctrl;
wire [3:0] o;
wire shiftOut;
reg clk;

// Control signals.
parameter CTRL_LOAD = 2'b00, CTRL_RESET = 2'b01, CTRL_SHIFT = 2'b10, CTRL_HOLD = 2'b11;

Areg ar0 (
    .in(in),
    .ctrl(ctrl),
    .o(o),
    .shiftBit(shiftOut),
    .clk(clk)
);

initial begin

    // Setup vars.
    in = 4'b0111;
    clk = 1'b0;

    // Test reset.
    ctrl = CTRL_RESET;
    #10 $display("Reset Out: %b", o);

    // Test loading.
    ctrl = CTRL_LOAD;
    #10 $display("Load Out: %b", o);

    // Test holding.
    ctrl = CTRL_HOLD;
    #10 $display("Hold Out: %b", o);

    // Test shifting.
    ctrl = CTRL_SHIFT;
    #10 $display("Shift Out: %b", o);
    $display("Shifted Bit Out: %b", shiftOut);

    // Test loading.
    in = 4'b1010;
    ctrl = CTRL_LOAD;
    #10 $display("Load Out: %b", o);

    // Test shifting.
    ctrl = CTRL_SHIFT;
    #10 $display("Shift Out: %b", o);
    $display("Shifted Bit Out: %b", shiftOut);

    // Done!
    $stop;

end

always 
    #5 clk = ~clk;

endmodule