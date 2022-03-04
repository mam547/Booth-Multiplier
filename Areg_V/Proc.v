//
// Verilog description for cell Areg, 
// Thu Mar  3 17:55:45 2022
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module Areg ( in, ctrl, o, shiftBit, clk ) ;

    input [3:0]in ;
    input [1:0]ctrl ;
    output [3:0]o ;
    output shiftBit ;
    input clk ;

    wire nx4, m_Reg_0, nx12, m_Reg_1, m_Reg_2, m_Reg_3, nx24, nx64, nx78, nx92, 
         nx106, nx120, nx139, nx149, nx159, nx169, nx183, nx185, nx189, nx191, 
         nx195, nx197;
    wire [5:0] \$dummy ;




    dff reg_m_ShiftBit (.Q (shiftBit), .QB (\$dummy [0]), .D (nx64), .CLK (clk)
        ) ;
    ao22 ix65 (.Y (nx64), .A0 (ctrl[1]), .A1 (m_Reg_0), .B0 (in[0]), .B1 (nx4)
         ) ;
    mux21 ix170 (.Y (nx169), .A0 (nx183), .A1 (nx185), .S0 (nx12)) ;
    dff reg_m_Reg_0 (.Q (m_Reg_0), .QB (nx183), .D (nx169), .CLK (clk)) ;
    aoi22 ix186 (.Y (nx185), .A0 (ctrl[1]), .A1 (m_Reg_1), .B0 (in[0]), .B1 (nx4
          )) ;
    mux21 ix160 (.Y (nx159), .A0 (nx189), .A1 (nx191), .S0 (nx12)) ;
    dff reg_m_Reg_1 (.Q (m_Reg_1), .QB (nx189), .D (nx159), .CLK (clk)) ;
    aoi22 ix192 (.Y (nx191), .A0 (ctrl[1]), .A1 (m_Reg_2), .B0 (in[1]), .B1 (nx4
          )) ;
    mux21 ix150 (.Y (nx149), .A0 (nx195), .A1 (nx197), .S0 (nx12)) ;
    dff reg_m_Reg_2 (.Q (m_Reg_2), .QB (nx195), .D (nx149), .CLK (clk)) ;
    aoi22 ix198 (.Y (nx197), .A0 (ctrl[1]), .A1 (m_Reg_3), .B0 (in[2]), .B1 (nx4
          )) ;
    dff reg_m_Reg_3 (.Q (m_Reg_3), .QB (\$dummy [1]), .D (nx139), .CLK (clk)) ;
    mux21_ni ix140 (.Y (nx139), .A0 (nx24), .A1 (m_Reg_3), .S0 (ctrl[1])) ;
    nor02ii ix25 (.Y (nx24), .A0 (ctrl[0]), .A1 (in[3])) ;
    nor02_2x ix5 (.Y (nx4), .A0 (ctrl[0]), .A1 (ctrl[1])) ;
    nand02_2x ix13 (.Y (nx12), .A0 (ctrl[1]), .A1 (ctrl[0])) ;
    dff reg_m_O_0 (.Q (o[0]), .QB (\$dummy [2]), .D (nx78), .CLK (clk)) ;
    mux21 ix79 (.Y (nx78), .A0 (nx183), .A1 (nx185), .S0 (nx12)) ;
    dff reg_m_O_1 (.Q (o[1]), .QB (\$dummy [3]), .D (nx92), .CLK (clk)) ;
    mux21 ix93 (.Y (nx92), .A0 (nx189), .A1 (nx191), .S0 (nx12)) ;
    dff reg_m_O_2 (.Q (o[2]), .QB (\$dummy [4]), .D (nx106), .CLK (clk)) ;
    mux21 ix107 (.Y (nx106), .A0 (nx195), .A1 (nx197), .S0 (nx12)) ;
    dff reg_m_O_3 (.Q (o[3]), .QB (\$dummy [5]), .D (nx120), .CLK (clk)) ;
    mux21_ni ix121 (.Y (nx120), .A0 (nx24), .A1 (m_Reg_3), .S0 (ctrl[1])) ;
endmodule
