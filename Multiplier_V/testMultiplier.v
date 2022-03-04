// Test bench for the multiplication unit.
module testMultiplier();

// Parameters.
reg [3:0] multiplicand;
reg [3:0] multiplier;
reg reset;
reg clk;
wire [7:0] result;
wire finished;

Multiplier mp0 (
    .multiplicand(multiplicand),
    .multiplier(multiplier),
    .start(reset),
    .result(result),
    .finished(finished),
    .clk(clk)
);

initial begin

    // Setup initial values.
    clk = 1'b0;
    multiplicand = 4'b0100;
    multiplier = 4'b0011;
    reset = 1'b1;
    #10 reset = 1'b0;

end

always 
    #5 clk = ~clk;

always @(posedge clk) begin
    if (finished == 1'b1) begin
        $display("Finished! Result: %b", result);
        $stop;
    end
end

endmodule