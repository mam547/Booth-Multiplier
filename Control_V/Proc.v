//
// Verilog description for cell ControlLogic, 
// Thu Mar  3 16:29:26 2022
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module ControlLogic ( qReg, qNeg, start, mSignal, addSubSignal, aSignal, qSignal, 
                      finished, clk ) ;

    input [3:0]qReg ;
    input qNeg ;
    input start ;
    output mSignal ;
    output addSubSignal ;
    output [1:0]aSignal ;
    output [1:0]qSignal ;
    output finished ;
    input clk ;

    wire m_NextState_1, m_NextState_0, m_NextState_2, nx440, m_Cnt_2, nx14, 
         nx442, m_Cnt_1, nx443, m_Cnt_0, NOT_clk, nx82, nx102, nx116, m_QNeg, 
         nx156, nx160, nx164, nx448, nx450, nx458, nx460, nx468, nx470, nx478, 
         nx480, nx490, nx500, nx510, nx520, nx530, nx540, nx550, nx558, nx560, 
         nx570, nx580, nx593, nx599, nx601, nx608, nx612, nx614, nx616, nx627, 
         nx629, nx635, nx640, nx644, nx650, nx652, nx654, nx657, nx660, nx662, 
         nx664, nx666, nx687, nx705, nx707, nx709, nx711, nx713, nx719, nx721;
    wire [10:0] \$dummy ;




    dff reg_m_Finished (.Q (finished), .QB (\$dummy [0]), .D (nx520), .CLK (
        NOT_clk)) ;
    nor04 ix165 (.Y (nx164), .A0 (nx593), .A1 (start), .A2 (m_NextState_0), .A3 (
          nx612)) ;
    dff reg_m_NextState_2 (.Q (m_NextState_2), .QB (\$dummy [1]), .D (nx480), .CLK (
        nx709)) ;
    ao21 ix481 (.Y (nx480), .A0 (m_NextState_2), .A1 (nx719), .B0 (nx478)) ;
    dff reg_m_NextState_0 (.Q (m_NextState_0), .QB (nx601), .D (nx490), .CLK (
        nx709)) ;
    inv02 ix606 (.Y (NOT_clk), .A (clk)) ;
    ao21 ix117 (.Y (nx116), .A0 (nx711), .A1 (nx442), .B0 (nx657)) ;
    nor04 ix609 (.Y (nx608), .A0 (start), .A1 (m_NextState_1), .A2 (nx593), .A3 (
          nx601)) ;
    dff reg_m_NextState_1 (.Q (m_NextState_1), .QB (nx612), .D (nx510), .CLK (
        nx709)) ;
    aoi221 ix615 (.Y (nx614), .A0 (nx711), .A1 (nx616), .B0 (nx705), .B1 (nx640)
           , .C0 (nx160)) ;
    nor03_2x ix617 (.Y (nx616), .A0 (m_Cnt_0), .A1 (m_Cnt_1), .A2 (m_Cnt_2)) ;
    dff reg_m_Cnt_0 (.Q (m_Cnt_0), .QB (\$dummy [2]), .D (nx450), .CLK (nx709)
        ) ;
    ao21 ix451 (.Y (nx450), .A0 (m_Cnt_0), .A1 (nx14), .B0 (nx448)) ;
    nor03 ix449 (.Y (nx448), .A0 (m_Cnt_0), .A1 (nx593), .A2 (nx14)) ;
    dff reg_m_Cnt_1 (.Q (m_Cnt_1), .QB (\$dummy [3]), .D (nx460), .CLK (nx709)
        ) ;
    ao21 ix461 (.Y (nx460), .A0 (m_Cnt_1), .A1 (nx14), .B0 (nx458)) ;
    nor03 ix459 (.Y (nx458), .A0 (nx593), .A1 (nx627), .A2 (nx14)) ;
    aoi21 ix628 (.Y (nx627), .A0 (m_Cnt_1), .A1 (m_Cnt_0), .B0 (nx629)) ;
    nor02_2x ix630 (.Y (nx629), .A0 (m_Cnt_0), .A1 (m_Cnt_1)) ;
    dff reg_m_Cnt_2 (.Q (m_Cnt_2), .QB (\$dummy [4]), .D (nx470), .CLK (nx709)
        ) ;
    ao21 ix471 (.Y (nx470), .A0 (m_Cnt_2), .A1 (nx14), .B0 (nx468)) ;
    aoi21 ix469 (.Y (nx468), .A0 (nx635), .A1 (nx705), .B0 (nx14)) ;
    aoi21 ix636 (.Y (nx635), .A0 (m_Cnt_2), .A1 (nx443), .B0 (nx616)) ;
    nor02ii ix101 (.Y (nx440), .A0 (start), .A1 (m_NextState_2)) ;
    nor03_2x ix641 (.Y (nx640), .A0 (start), .A1 (m_NextState_0), .A2 (nx612)) ;
    dff reg_m_QNeg (.Q (m_QNeg), .QB (nx654), .D (nx500), .CLK (nx709)) ;
    ao32 ix501 (.Y (nx500), .A0 (qNeg), .A1 (nx705), .A2 (nx711), .B0 (m_QNeg), 
         .B1 (nx650)) ;
    aoi21 ix479 (.Y (nx478), .A0 (nx660), .A1 (nx664), .B0 (nx719)) ;
    aoi22 ix665 (.Y (nx664), .A0 (nx711), .A1 (nx616), .B0 (nx713), .B1 (nx614)
          ) ;
    nor04 ix667 (.Y (nx666), .A0 (start), .A1 (m_NextState_1), .A2 (
          m_NextState_2), .A3 (nx601)) ;
    dff reg_m_QSignal_0 (.Q (qSignal[0]), .QB (\$dummy [5]), .D (nx530), .CLK (
        NOT_clk)) ;
    dff reg_m_QSignal_1 (.Q (qSignal[1]), .QB (\$dummy [6]), .D (nx540), .CLK (
        NOT_clk)) ;
    nand02_2x ix103 (.Y (nx102), .A0 (nx657), .A1 (nx593)) ;
    dff reg_m_ASignal_0 (.Q (aSignal[0]), .QB (\$dummy [7]), .D (nx550), .CLK (
        NOT_clk)) ;
    dff reg_m_ASignal_1 (.Q (aSignal[1]), .QB (\$dummy [8]), .D (nx560), .CLK (
        NOT_clk)) ;
    ao21 ix561 (.Y (nx560), .A0 (aSignal[1]), .A1 (nx719), .B0 (nx558)) ;
    aoi21 ix559 (.Y (nx558), .A0 (nx644), .A1 (nx593), .B0 (nx719)) ;
    dff reg_m_AddSubSignal (.Q (addSubSignal), .QB (\$dummy [9]), .D (nx580), .CLK (
        NOT_clk)) ;
    ao32 ix581 (.Y (nx580), .A0 (qReg[0]), .A1 (nx654), .A2 (nx713), .B0 (
         addSubSignal), .B1 (nx687)) ;
    nand02_2x ix688 (.Y (nx687), .A0 (nx713), .A1 (nx156)) ;
    dff reg_m_MSignal (.Q (mSignal), .QB (\$dummy [10]), .D (nx570), .CLK (
        NOT_clk)) ;
    inv02 ix161 (.Y (nx160), .A (nx687)) ;
    inv02 ix653 (.Y (nx652), .A (nx102)) ;
    inv02 ix45 (.Y (nx443), .A (nx629)) ;
    inv02 ix63 (.Y (nx442), .A (nx616)) ;
    inv02 ix15 (.Y (nx14), .A (nx657)) ;
    inv02 ix594 (.Y (nx593), .A (nx440)) ;
    inv02 ix704 (.Y (nx705), .A (nx593)) ;
    inv02 ix706 (.Y (nx707), .A (nx662)) ;
    inv02 ix708 (.Y (nx709), .A (clk)) ;
    buf02 ix710 (.Y (nx711), .A (nx608)) ;
    buf02 ix712 (.Y (nx713), .A (nx666)) ;
    mux21_ni ix521 (.Y (nx520), .A0 (nx164), .A1 (finished), .S0 (nx719)) ;
    mux21_ni ix491 (.Y (nx490), .A0 (nx116), .A1 (m_NextState_0), .S0 (nx719)) ;
    mux21 ix511 (.Y (nx510), .A0 (nx614), .A1 (nx612), .S0 (nx719)) ;
    or02 ix127 (.Y (nx644), .A0 (start), .A1 (nx601)) ;
    or02 ix185 (.Y (nx662), .A0 (start), .A1 (nx612)) ;
    xnor2 ix647 (.Y (nx156), .A0 (qReg[0]), .A1 (nx654)) ;
    nor02ii ix651 (.Y (nx650), .A0 (nx711), .A1 (nx102)) ;
    nor02_2x ix191 (.Y (nx599), .A0 (nx644), .A1 (nx662)) ;
    and02 ix658 (.Y (nx657), .A0 (nx644), .A1 (nx662)) ;
    oai21 ix661 (.Y (nx660), .A0 (nx440), .A1 (nx707), .B0 (nx644)) ;
    mux21_ni ix531 (.Y (nx530), .A0 (nx14), .A1 (qSignal[0]), .S0 (nx721)) ;
    mux21_ni ix541 (.Y (nx540), .A0 (nx102), .A1 (qSignal[1]), .S0 (nx721)) ;
    mux21_ni ix551 (.Y (nx550), .A0 (nx82), .A1 (aSignal[0]), .S0 (nx721)) ;
    mux21 ix83 (.Y (nx82), .A0 (nx657), .A1 (nx640), .S0 (nx593)) ;
    mux21_ni ix571 (.Y (nx570), .A0 (nx652), .A1 (mSignal), .S0 (nx721)) ;
    buf02 ix718 (.Y (nx719), .A (nx599)) ;
    buf02 ix720 (.Y (nx721), .A (nx599)) ;
endmodule
