//
// Verilog description for cell Multiplier, 
// Thu Mar  3 16:42:05 2022
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module Multiplier ( multiplicand, multiplier, start, result, finished, clk ) ;

    input [3:0]multiplicand ;
    input [3:0]multiplier ;
    input start ;
    output [7:0]result ;
    output finished ;
    input clk ;

    wire m_QRegOut_0, m_QRegCtrl_1, m_QRegCtrl_0, m_ARegCtrl_1, m_ARegCtrl_0, 
         m_QRegNeg, m_MRegCtrl, m_AddSubCtrl, qr0_m_Reg_0, qr0_m_Reg_1, 
         qr0_m_Reg_2, qr0_m_Reg_3, m_QRegCarry, m_AddSubOut_0, m_AddSubA_0, 
         ar0_m_Reg_0, nx30, nx36, ar0_m_Reg_1, m_AddSubOut_1, m_AddSubB_0, 
         mr0_m_Reg_0, nx52, nx70, m_AddSubA_1, nx78, m_AddSubB_1, mr0_m_Reg_1, 
         nx98, nx106, nx108, nx110, ar0_m_Reg_2, m_AddSubOut_2, m_AddSubA_2, 
         nx136, m_AddSubB_2, mr0_m_Reg_2, nx156, nx164, nx166, nx168, 
         ar0_m_Reg_3, m_AddSubOut_3, m_AddSubA_3, nx171, nx196, m_AddSubB_3, 
         mr0_m_Reg_3, nx216, nx224, nx226, nx228, nx282, nx292, nx304, nx314, 
         nx324, nx334, nx344, nx354, nx368, m_QRegOut_1, nx388, m_QRegOut_2, 
         nx408, m_QRegOut_3, nx428, nx179, nx189, nx199, nx209, nx219, nx229, 
         nx239, nx249, nx259, nx269, nx279, nx289, nx299, nx333, nx335, nx339, 
         nx341, nx347, nx349, nx358, nx369, nx395, nx434, nx476, nx478, nx480, 
         nx482, cl0_m_NextState_1, cl0_m_NextState_0, cl0_m_NextState_2, 
         cl0_nx145, cl0_m_Cnt_2, cl0_nx14, cl0_nx147, cl0_m_Cnt_1, cl0_nx148, 
         cl0_m_Cnt_0, cl0_NOT_clk, cl0_nx82, cl0_nx102, cl0_nx116, cl0_m_QNeg, 
         cl0_nx156, cl0_nx160, cl0_nx164, cl0_nx153, cl0_nx155, cl0_nx163, 
         cl0_nx165, cl0_nx173, cl0_nx175, cl0_nx183, cl0_nx185, cl0_nx195, 
         cl0_nx205, cl0_nx215, cl0_nx225, cl0_nx235, cl0_nx245, cl0_nx255, 
         cl0_nx263, cl0_nx265, cl0_nx275, cl0_nx285, cl0_nx298, cl0_nx304, 
         cl0_nx306, cl0_nx313, cl0_nx317, cl0_nx319, cl0_nx321, cl0_nx332, 
         cl0_nx334, cl0_nx340, cl0_nx345, cl0_nx349, cl0_nx355, cl0_nx357, 
         cl0_nx359, cl0_nx362, cl0_nx365, cl0_nx367, cl0_nx369, cl0_nx371, 
         cl0_nx392, cl0_nx410, cl0_nx412, cl0_nx414, cl0_nx416, cl0_nx418, 
         cl0_nx424, cl0_nx426, nx545, nx547, nx549;
    wire [45:0] \$dummy ;




    dff qr0_reg_m_ShiftBit (.Q (m_QRegNeg), .QB (\$dummy [0]), .D (nx299), .CLK (
        clk)) ;
    mux21_ni ix300 (.Y (nx299), .A0 (nx354), .A1 (m_QRegNeg), .S0 (nx434)) ;
    mux21_ni ix355 (.Y (nx354), .A0 (multiplier[0]), .A1 (qr0_m_Reg_0), .S0 (
             m_QRegCtrl_1)) ;
    dff qr0_reg_m_Reg_0 (.Q (qr0_m_Reg_0), .QB (\$dummy [1]), .D (nx289), .CLK (
        clk)) ;
    mux21_ni ix345 (.Y (nx344), .A0 (multiplier[0]), .A1 (qr0_m_Reg_1), .S0 (
             m_QRegCtrl_1)) ;
    dff qr0_reg_m_Reg_1 (.Q (qr0_m_Reg_1), .QB (\$dummy [2]), .D (nx279), .CLK (
        clk)) ;
    mux21_ni ix335 (.Y (nx334), .A0 (multiplier[1]), .A1 (qr0_m_Reg_2), .S0 (
             m_QRegCtrl_1)) ;
    dff qr0_reg_m_Reg_2 (.Q (qr0_m_Reg_2), .QB (\$dummy [3]), .D (nx269), .CLK (
        clk)) ;
    mux21_ni ix325 (.Y (nx324), .A0 (multiplier[2]), .A1 (qr0_m_Reg_3), .S0 (
             m_QRegCtrl_1)) ;
    dff qr0_reg_m_Reg_3 (.Q (qr0_m_Reg_3), .QB (\$dummy [4]), .D (nx259), .CLK (
        clk)) ;
    mux21_ni ix315 (.Y (nx314), .A0 (multiplier[3]), .A1 (m_QRegCarry), .S0 (
             m_QRegCtrl_1)) ;
    dff ar0_reg_m_ShiftBit (.Q (m_QRegCarry), .QB (\$dummy [5]), .D (nx304), .CLK (
        clk)) ;
    ao22 ix305 (.Y (nx304), .A0 (nx476), .A1 (ar0_m_Reg_0), .B0 (m_AddSubOut_0)
         , .B1 (nx36)) ;
    mux21 ix250 (.Y (nx249), .A0 (nx333), .A1 (nx335), .S0 (nx30)) ;
    dff ar0_reg_m_Reg_0 (.Q (ar0_m_Reg_0), .QB (nx333), .D (nx249), .CLK (clk)
        ) ;
    aoi22 ix336 (.Y (nx335), .A0 (nx476), .A1 (ar0_m_Reg_1), .B0 (m_AddSubOut_0)
          , .B1 (nx36)) ;
    mux21 ix240 (.Y (nx239), .A0 (nx339), .A1 (nx341), .S0 (nx30)) ;
    dff ar0_reg_m_Reg_1 (.Q (ar0_m_Reg_1), .QB (nx339), .D (nx239), .CLK (clk)
        ) ;
    aoi22 ix342 (.Y (nx341), .A0 (nx476), .A1 (ar0_m_Reg_2), .B0 (m_AddSubOut_1)
          , .B1 (nx36)) ;
    mux21 ix230 (.Y (nx229), .A0 (nx347), .A1 (nx349), .S0 (nx30)) ;
    dff ar0_reg_m_Reg_2 (.Q (ar0_m_Reg_2), .QB (nx347), .D (nx229), .CLK (clk)
        ) ;
    aoi22 ix350 (.Y (nx349), .A0 (nx476), .A1 (ar0_m_Reg_3), .B0 (m_AddSubOut_2)
          , .B1 (nx36)) ;
    dff ar0_reg_m_Reg_3 (.Q (ar0_m_Reg_3), .QB (\$dummy [6]), .D (nx219), .CLK (
        clk)) ;
    mux21_ni ix220 (.Y (nx219), .A0 (nx171), .A1 (ar0_m_Reg_3), .S0 (nx476)) ;
    nor02ii ix239 (.Y (nx171), .A0 (m_ARegCtrl_0), .A1 (m_AddSubOut_3)) ;
    dff as0_reg_m_O_3 (.Q (m_AddSubOut_3), .QB (\$dummy [7]), .D (nx228), .CLK (
        clk)) ;
    xnor2 ix229 (.Y (nx228), .A0 (nx358), .A1 (nx226)) ;
    mux21_ni ix359 (.Y (nx358), .A0 (nx164), .A1 (nx369), .S0 (nx166)) ;
    xnor2 ix165 (.Y (nx164), .A0 (m_AddSubCtrl), .A1 (m_AddSubB_2)) ;
    dff mr0_reg_m_O_2 (.Q (m_AddSubB_2), .QB (\$dummy [8]), .D (nx156), .CLK (
        clk)) ;
    mux21_ni ix157 (.Y (nx156), .A0 (mr0_m_Reg_2), .A1 (multiplicand[2]), .S0 (
             nx480)) ;
    dff mr0_reg_m_Reg_2 (.Q (mr0_m_Reg_2), .QB (\$dummy [9]), .D (nx199), .CLK (
        clk)) ;
    mux21_ni ix200 (.Y (nx199), .A0 (mr0_m_Reg_2), .A1 (multiplicand[2]), .S0 (
             nx480)) ;
    aoi22 ix370 (.Y (nx369), .A0 (nx70), .A1 (nx108), .B0 (nx395), .B1 (
          m_AddSubA_1)) ;
    mux21_ni ix71 (.Y (nx70), .A0 (m_AddSubCtrl), .A1 (m_AddSubA_0), .S0 (
             m_AddSubB_0)) ;
    dff ar0_reg_m_O_0 (.Q (m_AddSubA_0), .QB (\$dummy [10]), .D (nx282), .CLK (
        clk)) ;
    mux21 ix283 (.Y (nx282), .A0 (nx333), .A1 (nx335), .S0 (nx30)) ;
    nand02_2x ix31 (.Y (nx30), .A0 (nx476), .A1 (m_ARegCtrl_0)) ;
    dff mr0_reg_m_O_0 (.Q (m_AddSubB_0), .QB (\$dummy [11]), .D (nx52), .CLK (
        clk)) ;
    mux21_ni ix53 (.Y (nx52), .A0 (mr0_m_Reg_0), .A1 (multiplicand[0]), .S0 (
             nx480)) ;
    dff mr0_reg_m_Reg_0 (.Q (mr0_m_Reg_0), .QB (\$dummy [12]), .D (nx179), .CLK (
        clk)) ;
    mux21_ni ix180 (.Y (nx179), .A0 (mr0_m_Reg_0), .A1 (multiplicand[0]), .S0 (
             nx480)) ;
    xnor2 ix109 (.Y (nx108), .A0 (m_AddSubA_1), .A1 (nx106)) ;
    dff ar0_reg_m_O_1 (.Q (m_AddSubA_1), .QB (\$dummy [13]), .D (nx78), .CLK (
        clk)) ;
    mux21 ix79 (.Y (nx78), .A0 (nx339), .A1 (nx341), .S0 (nx30)) ;
    xnor2 ix107 (.Y (nx106), .A0 (m_AddSubCtrl), .A1 (m_AddSubB_1)) ;
    dff mr0_reg_m_O_1 (.Q (m_AddSubB_1), .QB (\$dummy [14]), .D (nx98), .CLK (
        clk)) ;
    mux21_ni ix99 (.Y (nx98), .A0 (mr0_m_Reg_1), .A1 (multiplicand[1]), .S0 (
             nx480)) ;
    dff mr0_reg_m_Reg_1 (.Q (mr0_m_Reg_1), .QB (\$dummy [15]), .D (nx189), .CLK (
        clk)) ;
    mux21_ni ix190 (.Y (nx189), .A0 (mr0_m_Reg_1), .A1 (multiplicand[1]), .S0 (
             nx480)) ;
    xnor2 ix167 (.Y (nx166), .A0 (m_AddSubA_2), .A1 (nx164)) ;
    dff ar0_reg_m_O_2 (.Q (m_AddSubA_2), .QB (\$dummy [16]), .D (nx136), .CLK (
        clk)) ;
    mux21 ix140 (.Y (nx136), .A0 (nx347), .A1 (nx349), .S0 (nx30)) ;
    xnor2 ix227 (.Y (nx226), .A0 (m_AddSubA_3), .A1 (nx224)) ;
    dff ar0_reg_m_O_3 (.Q (m_AddSubA_3), .QB (\$dummy [17]), .D (nx196), .CLK (
        clk)) ;
    mux21_ni ix197 (.Y (nx196), .A0 (nx171), .A1 (ar0_m_Reg_3), .S0 (nx476)) ;
    xnor2 ix225 (.Y (nx224), .A0 (m_AddSubCtrl), .A1 (m_AddSubB_3)) ;
    dff mr0_reg_m_O_3 (.Q (m_AddSubB_3), .QB (\$dummy [18]), .D (nx216), .CLK (
        clk)) ;
    mux21_ni ix217 (.Y (nx216), .A0 (mr0_m_Reg_3), .A1 (multiplicand[3]), .S0 (
             nx482)) ;
    dff mr0_reg_m_Reg_3 (.Q (mr0_m_Reg_3), .QB (\$dummy [19]), .D (nx209), .CLK (
        clk)) ;
    mux21_ni ix210 (.Y (nx209), .A0 (mr0_m_Reg_3), .A1 (multiplicand[3]), .S0 (
             nx480)) ;
    dff as0_reg_m_O_2 (.Q (m_AddSubOut_2), .QB (\$dummy [20]), .D (nx168), .CLK (
        clk)) ;
    xnor2 ix169 (.Y (nx168), .A0 (nx369), .A1 (nx166)) ;
    nor02_2x ix37 (.Y (nx36), .A0 (m_ARegCtrl_0), .A1 (nx478)) ;
    dff as0_reg_m_O_1 (.Q (m_AddSubOut_1), .QB (\$dummy [21]), .D (nx110), .CLK (
        clk)) ;
    xor2 ix111 (.Y (nx110), .A0 (nx70), .A1 (nx108)) ;
    dff as0_reg_m_O_0 (.Q (m_AddSubOut_0), .QB (\$dummy [22]), .D (nx292), .CLK (
        clk)) ;
    xor2 ix293 (.Y (nx292), .A0 (m_AddSubA_0), .A1 (m_AddSubB_0)) ;
    dff qr0_reg_m_O_0 (.Q (m_QRegOut_0), .QB (\$dummy [23]), .D (nx368), .CLK (
        clk)) ;
    dff reg_m_Result_0 (.Q (result[0]), .QB (\$dummy [24]), .D (m_QRegOut_0), .CLK (
        clk)) ;
    dff reg_m_Result_1 (.Q (result[1]), .QB (\$dummy [25]), .D (m_QRegOut_1), .CLK (
        clk)) ;
    dff qr0_reg_m_O_1 (.Q (m_QRegOut_1), .QB (\$dummy [26]), .D (nx388), .CLK (
        clk)) ;
    dff reg_m_Result_2 (.Q (result[2]), .QB (\$dummy [27]), .D (m_QRegOut_2), .CLK (
        clk)) ;
    dff qr0_reg_m_O_2 (.Q (m_QRegOut_2), .QB (\$dummy [28]), .D (nx408), .CLK (
        clk)) ;
    dff reg_m_Result_3 (.Q (result[3]), .QB (\$dummy [29]), .D (m_QRegOut_3), .CLK (
        clk)) ;
    dff qr0_reg_m_O_3 (.Q (m_QRegOut_3), .QB (\$dummy [30]), .D (nx428), .CLK (
        clk)) ;
    dff reg_m_Result_4 (.Q (result[4]), .QB (\$dummy [31]), .D (m_AddSubA_0), .CLK (
        clk)) ;
    dff reg_m_Result_5 (.Q (result[5]), .QB (\$dummy [32]), .D (m_AddSubA_1), .CLK (
        clk)) ;
    dff reg_m_Result_6 (.Q (result[6]), .QB (\$dummy [33]), .D (m_AddSubA_2), .CLK (
        clk)) ;
    dff reg_m_Result_7 (.Q (result[7]), .QB (\$dummy [34]), .D (m_AddSubA_3), .CLK (
        clk)) ;
    inv02 ix396 (.Y (nx395), .A (nx106)) ;
    buf02 ix475 (.Y (nx476), .A (m_ARegCtrl_1)) ;
    buf02 ix477 (.Y (nx478), .A (m_ARegCtrl_1)) ;
    buf02 ix479 (.Y (nx480), .A (m_MRegCtrl)) ;
    buf02 ix481 (.Y (nx482), .A (m_MRegCtrl)) ;
    nor02ii ix435 (.Y (nx434), .A0 (m_QRegCtrl_1), .A1 (nx545)) ;
    dff cl0_reg_m_Finished (.Q (finished), .QB (\$dummy [35]), .D (cl0_nx225), .CLK (
        cl0_NOT_clk)) ;
    nor04 cl0_ix165 (.Y (cl0_nx164), .A0 (cl0_nx298), .A1 (start), .A2 (
          cl0_m_NextState_0), .A3 (cl0_nx317)) ;
    dff cl0_reg_m_NextState_2 (.Q (cl0_m_NextState_2), .QB (\$dummy [36]), .D (
        cl0_nx185), .CLK (cl0_nx414)) ;
    ao21 cl0_ix186 (.Y (cl0_nx185), .A0 (cl0_m_NextState_2), .A1 (cl0_nx424), .B0 (
         cl0_nx183)) ;
    dff cl0_reg_m_NextState_0 (.Q (cl0_m_NextState_0), .QB (cl0_nx306), .D (
        cl0_nx195), .CLK (cl0_nx414)) ;
    inv02 cl0_ix311 (.Y (cl0_NOT_clk), .A (clk)) ;
    ao21 cl0_ix117 (.Y (cl0_nx116), .A0 (cl0_nx416), .A1 (cl0_nx147), .B0 (
         cl0_nx362)) ;
    nor04 cl0_ix314 (.Y (cl0_nx313), .A0 (start), .A1 (cl0_m_NextState_1), .A2 (
          cl0_nx298), .A3 (cl0_nx306)) ;
    dff cl0_reg_m_NextState_1 (.Q (cl0_m_NextState_1), .QB (cl0_nx317), .D (
        cl0_nx215), .CLK (cl0_nx414)) ;
    aoi221 cl0_ix320 (.Y (cl0_nx319), .A0 (cl0_nx416), .A1 (cl0_nx321), .B0 (
           cl0_nx410), .B1 (cl0_nx345), .C0 (cl0_nx160)) ;
    nor03_2x cl0_ix322 (.Y (cl0_nx321), .A0 (cl0_m_Cnt_0), .A1 (cl0_m_Cnt_1), .A2 (
             cl0_m_Cnt_2)) ;
    dff cl0_reg_m_Cnt_0 (.Q (cl0_m_Cnt_0), .QB (\$dummy [37]), .D (cl0_nx155), .CLK (
        cl0_nx414)) ;
    ao21 cl0_ix156 (.Y (cl0_nx155), .A0 (cl0_m_Cnt_0), .A1 (cl0_nx14), .B0 (
         cl0_nx153)) ;
    nor03 cl0_ix154 (.Y (cl0_nx153), .A0 (cl0_m_Cnt_0), .A1 (cl0_nx298), .A2 (
          cl0_nx14)) ;
    dff cl0_reg_m_Cnt_1 (.Q (cl0_m_Cnt_1), .QB (\$dummy [38]), .D (cl0_nx165), .CLK (
        cl0_nx414)) ;
    ao21 cl0_ix166 (.Y (cl0_nx165), .A0 (cl0_m_Cnt_1), .A1 (cl0_nx14), .B0 (
         cl0_nx163)) ;
    nor03 cl0_ix164 (.Y (cl0_nx163), .A0 (cl0_nx298), .A1 (cl0_nx332), .A2 (
          cl0_nx14)) ;
    aoi21 cl0_ix333 (.Y (cl0_nx332), .A0 (cl0_m_Cnt_1), .A1 (cl0_m_Cnt_0), .B0 (
          cl0_nx334)) ;
    nor02_2x cl0_ix335 (.Y (cl0_nx334), .A0 (cl0_m_Cnt_0), .A1 (cl0_m_Cnt_1)) ;
    dff cl0_reg_m_Cnt_2 (.Q (cl0_m_Cnt_2), .QB (\$dummy [39]), .D (cl0_nx175), .CLK (
        cl0_nx414)) ;
    ao21 cl0_ix176 (.Y (cl0_nx175), .A0 (cl0_m_Cnt_2), .A1 (cl0_nx14), .B0 (
         cl0_nx173)) ;
    aoi21 cl0_ix174 (.Y (cl0_nx173), .A0 (cl0_nx340), .A1 (cl0_nx410), .B0 (
          cl0_nx14)) ;
    aoi21 cl0_ix341 (.Y (cl0_nx340), .A0 (cl0_m_Cnt_2), .A1 (cl0_nx148), .B0 (
          cl0_nx321)) ;
    nor02ii cl0_ix101 (.Y (cl0_nx145), .A0 (start), .A1 (cl0_m_NextState_2)) ;
    nor03_2x cl0_ix346 (.Y (cl0_nx345), .A0 (start), .A1 (cl0_m_NextState_0), .A2 (
             cl0_nx317)) ;
    dff cl0_reg_m_QNeg (.Q (cl0_m_QNeg), .QB (cl0_nx359), .D (cl0_nx205), .CLK (
        cl0_nx414)) ;
    ao32 cl0_ix206 (.Y (cl0_nx205), .A0 (m_QRegNeg), .A1 (cl0_nx410), .A2 (
         cl0_nx416), .B0 (cl0_m_QNeg), .B1 (cl0_nx355)) ;
    aoi21 cl0_ix184 (.Y (cl0_nx183), .A0 (cl0_nx365), .A1 (cl0_nx369), .B0 (
          cl0_nx424)) ;
    aoi22 cl0_ix370 (.Y (cl0_nx369), .A0 (cl0_nx416), .A1 (cl0_nx321), .B0 (
          cl0_nx418), .B1 (cl0_nx319)) ;
    nor04 cl0_ix372 (.Y (cl0_nx371), .A0 (start), .A1 (cl0_m_NextState_1), .A2 (
          cl0_m_NextState_2), .A3 (cl0_nx306)) ;
    dff cl0_reg_m_QSignal_0 (.Q (m_QRegCtrl_0), .QB (\$dummy [40]), .D (
        cl0_nx235), .CLK (cl0_NOT_clk)) ;
    dff cl0_reg_m_QSignal_1 (.Q (m_QRegCtrl_1), .QB (\$dummy [41]), .D (
        cl0_nx245), .CLK (cl0_NOT_clk)) ;
    nand02_2x cl0_ix103 (.Y (cl0_nx102), .A0 (cl0_nx362), .A1 (cl0_nx298)) ;
    dff cl0_reg_m_ASignal_0 (.Q (m_ARegCtrl_0), .QB (\$dummy [42]), .D (
        cl0_nx255), .CLK (cl0_NOT_clk)) ;
    dff cl0_reg_m_ASignal_1 (.Q (m_ARegCtrl_1), .QB (\$dummy [43]), .D (
        cl0_nx265), .CLK (cl0_NOT_clk)) ;
    ao21 cl0_ix266 (.Y (cl0_nx265), .A0 (m_ARegCtrl_1), .A1 (cl0_nx424), .B0 (
         cl0_nx263)) ;
    aoi21 cl0_ix264 (.Y (cl0_nx263), .A0 (cl0_nx349), .A1 (cl0_nx298), .B0 (
          cl0_nx424)) ;
    dff cl0_reg_m_AddSubSignal (.Q (m_AddSubCtrl), .QB (\$dummy [44]), .D (
        cl0_nx285), .CLK (cl0_NOT_clk)) ;
    ao32 cl0_ix286 (.Y (cl0_nx285), .A0 (m_QRegOut_0), .A1 (cl0_nx359), .A2 (
         cl0_nx418), .B0 (m_AddSubCtrl), .B1 (cl0_nx392)) ;
    nand02_2x cl0_ix393 (.Y (cl0_nx392), .A0 (cl0_nx418), .A1 (cl0_nx156)) ;
    dff cl0_reg_m_MSignal (.Q (m_MRegCtrl), .QB (\$dummy [45]), .D (cl0_nx275), 
        .CLK (cl0_NOT_clk)) ;
    inv02 cl0_ix161 (.Y (cl0_nx160), .A (cl0_nx392)) ;
    inv02 cl0_ix358 (.Y (cl0_nx357), .A (cl0_nx102)) ;
    inv02 cl0_ix45 (.Y (cl0_nx148), .A (cl0_nx334)) ;
    inv02 cl0_ix63 (.Y (cl0_nx147), .A (cl0_nx321)) ;
    inv02 cl0_ix15 (.Y (cl0_nx14), .A (cl0_nx362)) ;
    inv02 cl0_ix299 (.Y (cl0_nx298), .A (cl0_nx145)) ;
    inv02 cl0_ix409 (.Y (cl0_nx410), .A (cl0_nx298)) ;
    inv02 cl0_ix411 (.Y (cl0_nx412), .A (cl0_nx367)) ;
    inv02 cl0_ix413 (.Y (cl0_nx414), .A (clk)) ;
    buf02 cl0_ix415 (.Y (cl0_nx416), .A (cl0_nx313)) ;
    buf02 cl0_ix417 (.Y (cl0_nx418), .A (cl0_nx371)) ;
    mux21_ni cl0_ix226 (.Y (cl0_nx225), .A0 (cl0_nx164), .A1 (finished), .S0 (
             cl0_nx424)) ;
    mux21_ni cl0_ix196 (.Y (cl0_nx195), .A0 (cl0_nx116), .A1 (cl0_m_NextState_0)
             , .S0 (cl0_nx424)) ;
    mux21 cl0_ix216 (.Y (cl0_nx215), .A0 (cl0_nx319), .A1 (cl0_nx317), .S0 (
          cl0_nx424)) ;
    or02 cl0_ix127 (.Y (cl0_nx349), .A0 (start), .A1 (cl0_nx306)) ;
    or02 cl0_ix185 (.Y (cl0_nx367), .A0 (start), .A1 (cl0_nx317)) ;
    nor02ii cl0_ix356 (.Y (cl0_nx355), .A0 (cl0_nx416), .A1 (cl0_nx102)) ;
    nor02_2x cl0_ix191 (.Y (cl0_nx304), .A0 (cl0_nx349), .A1 (cl0_nx367)) ;
    and02 cl0_ix363 (.Y (cl0_nx362), .A0 (cl0_nx349), .A1 (cl0_nx367)) ;
    oai21 cl0_ix366 (.Y (cl0_nx365), .A0 (nx549), .A1 (cl0_nx412), .B0 (
          cl0_nx349)) ;
    mux21_ni cl0_ix236 (.Y (cl0_nx235), .A0 (cl0_nx14), .A1 (nx545), .S0 (
             cl0_nx426)) ;
    mux21_ni cl0_ix246 (.Y (cl0_nx245), .A0 (cl0_nx102), .A1 (m_QRegCtrl_1), .S0 (
             cl0_nx426)) ;
    mux21_ni cl0_ix256 (.Y (cl0_nx255), .A0 (cl0_nx82), .A1 (m_ARegCtrl_0), .S0 (
             cl0_nx426)) ;
    mux21_ni cl0_ix276 (.Y (cl0_nx275), .A0 (cl0_nx357), .A1 (m_MRegCtrl), .S0 (
             cl0_nx426)) ;
    buf02 cl0_ix423 (.Y (cl0_nx424), .A (cl0_nx304)) ;
    buf02 cl0_ix425 (.Y (cl0_nx426), .A (cl0_nx304)) ;
    mux21_ni ix290 (.Y (nx289), .A0 (nx344), .A1 (qr0_m_Reg_0), .S0 (nx545)) ;
    mux21_ni ix280 (.Y (nx279), .A0 (nx334), .A1 (qr0_m_Reg_1), .S0 (nx545)) ;
    mux21_ni ix270 (.Y (nx269), .A0 (nx324), .A1 (qr0_m_Reg_2), .S0 (nx545)) ;
    mux21_ni ix260 (.Y (nx259), .A0 (nx314), .A1 (qr0_m_Reg_3), .S0 (nx545)) ;
    mux21_ni ix369 (.Y (nx368), .A0 (nx344), .A1 (qr0_m_Reg_0), .S0 (nx545)) ;
    mux21_ni ix389 (.Y (nx388), .A0 (nx334), .A1 (qr0_m_Reg_1), .S0 (nx547)) ;
    mux21_ni ix409 (.Y (nx408), .A0 (nx324), .A1 (qr0_m_Reg_2), .S0 (nx547)) ;
    mux21_ni ix429 (.Y (nx428), .A0 (nx314), .A1 (qr0_m_Reg_3), .S0 (nx547)) ;
    xor2 cl0_ix352 (.Y (cl0_nx156), .A0 (m_QRegOut_0), .A1 (cl0_m_QNeg)) ;
    mux21 cl0_ix83 (.Y (cl0_nx82), .A0 (cl0_nx345), .A1 (cl0_nx362), .S0 (nx549)
          ) ;
    buf02 ix544 (.Y (nx545), .A (m_QRegCtrl_0)) ;
    buf02 ix546 (.Y (nx547), .A (m_QRegCtrl_0)) ;
    inv02 ix548 (.Y (nx549), .A (cl0_nx298)) ;
endmodule

