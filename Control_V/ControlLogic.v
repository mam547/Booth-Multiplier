// Main control for the multiplier.
module ControlLogic(qReg, qNeg, start, mSignal, addSubSignal, aSignal, qSignal, finished, clk);

input [3:0] qReg;
input qNeg, start, clk;
output [1:0] aSignal, qSignal;
output mSignal, addSubSignal, finished;
reg [1:0] m_ASignal, m_QSignal;
reg m_MSignal, m_AddSubSignal, m_Finished;
assign aSignal = m_ASignal;
assign qSignal = m_QSignal;
assign mSignal = m_MSignal;
assign addSubSignal = m_AddSubSignal;
assign finished = m_Finished;

// States.
parameter ST_INIT = 3'b000, ST_CMP = 3'b001, ST_ADDSUBRES = 3'b010, ST_GLITCH2 = 3'b011, ST_SHIFT = 3'b100, ST_CNT = 3'b101, ST_END = 3'b110, ST_GLITCH = 3'b111;

// Control signals.
parameter CTRL_LOAD = 2'b00, CTRL_RESET = 2'b01, CTRL_SHIFT = 2'b10, CTRL_HOLD = 2'b11;
parameter CTRL2_LOAD = 1'b1, CTRL2_HOLD = 1'b0;
parameter CTRL_ADD = 1'b0, CTRL_SUB = 1'b1;
parameter SIG_FALSE = 1'b0, SIG_TRUE = 1'b1;

// Private variables.
reg [2:0] m_Cnt;
reg [2:0] m_CurrState;
reg [2:0] m_NextState;
reg m_QNeg;

// Main driver code.
always @(negedge clk) begin

    // Reset.
    if (start == 1'b1) m_CurrState = ST_INIT;
    else m_CurrState = m_NextState;

    // State machine.
    case (m_CurrState)

        // Initial state. Add and sub isn't used so shouldn't be touched.
        ST_INIT: begin
            m_Cnt = 4;
            m_QNeg = 0;
            m_MSignal = CTRL2_LOAD;
            m_ASignal = CTRL_RESET;
            m_QSignal = CTRL_LOAD;
            m_NextState = ST_CMP;
            m_Finished = SIG_FALSE;
        end

        // Check to see if to do addition or subtraction state.
        ST_CMP: begin

            // Sub.
            if (qReg[0] == 1'b1 && m_QNeg == 1'b0) begin
                m_AddSubSignal = CTRL_SUB;
                m_NextState = ST_ADDSUBRES;
            end

            // Add.
            else if (qReg[0] == 1'b0 && m_QNeg == 1'b1) begin
                m_AddSubSignal = CTRL_ADD;
                m_NextState = ST_ADDSUBRES;
            end

            // Shift.
            else begin
                m_NextState = ST_SHIFT;
            end

            // Common state functions.
            m_MSignal = CTRL2_HOLD;
            m_ASignal = CTRL_HOLD;
            m_QSignal = CTRL_HOLD;
            m_Finished = SIG_FALSE;

        end

        // Add or subtract items result.
        ST_ADDSUBRES: begin
            m_MSignal = CTRL2_HOLD;
            m_ASignal = CTRL_LOAD;
            m_QSignal = CTRL_HOLD;
            m_NextState = ST_SHIFT;
            m_Finished = SIG_FALSE;
        end

        // Shift items.
        ST_SHIFT: begin
            m_MSignal = CTRL2_HOLD;
            m_ASignal = CTRL_SHIFT;
            m_QSignal = CTRL_SHIFT;
            m_NextState = ST_CNT;
            m_Finished = SIG_FALSE;
            m_Cnt = m_Cnt - 1;
        end

        // Counting logic.
        ST_CNT: begin
            if (m_Cnt == 0) m_NextState = ST_END;
            else m_NextState = ST_CMP;
            m_QNeg = qNeg;
            m_MSignal = CTRL2_HOLD;
            m_ASignal = CTRL_HOLD;
            m_QSignal = CTRL_HOLD;
            m_Finished = SIG_FALSE;
        end

        // Finished.
        ST_END: begin
            m_MSignal = CTRL2_HOLD;
            m_ASignal = CTRL_HOLD;
            m_QSignal = CTRL_HOLD;
            m_Finished = SIG_TRUE;
            m_NextState = ST_END;
        end

        // Glitch state. An error occured somewhere.
        ST_GLITCH: begin
            #10 $display("ERR: GLITCH STATE REACHED!");
        end

        // Glitch state. An error occured somewhere.
        ST_GLITCH2: begin
            #10 $display("ERR: GLITCH STATE REACHED!");
        end

    endcase

end

endmodule