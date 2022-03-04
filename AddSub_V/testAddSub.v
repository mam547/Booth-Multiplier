// Test bench for adding/subtracting.
module testAddSub();

reg [3:0] a;
reg [3:0] b;
reg ctrl;
wire [3:0] o;
reg clk;
integer i;
integer j;
integer k;

AddSub as0 (
    .a(a),
    .b(b),
    .ctrl(ctrl),
    .o(o),
    .clk(clk)
);

initial begin

    // Start at 0 for all vars.
    a = 0;
    b = 0;
    clk = 1'b0;

    // Do adds first, then subs later.
    for (k = 0; k < 2; k = k + 1) begin
        ctrl = k;

        // Go through all values of a.
        for (i = 0; i < 16; i = i + 1) begin
            a = i;

            // Go through all values of b.
            for (j = 0; j < 16; j = j + 1) begin
                b = j;
                #10 $display("A: %b, B: %b, Ctrl: %b, O: %b", a, b, ctrl, o);
            end

        end

    end

    // Done!
    $stop;
    
end

always 
    #5 clk = ~clk;

endmodule