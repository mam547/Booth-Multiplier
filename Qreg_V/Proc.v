//
// Verilog description for cell Qreg, 
// Thu Mar  3 16:14:03 2022
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module Qreg ( in, ctrl, carry, o, shiftBit, clk ) ;

    input [3:0]in ;
    input [1:0]ctrl ;
    input carry ;
    output [3:0]o ;
    output shiftBit ;
    input clk ;

    wire m_Reg_0, m_Reg_1, m_Reg_2, m_Reg_3, nx28, nx38, nx48, nx58, nx68, nx82, 
         nx96, nx110, nx124, nx169, nx179, nx189, nx199, nx209, nx238;
    wire [8:0] \$dummy ;




    dff reg_m_ShiftBit (.Q (shiftBit), .QB (\$dummy [0]), .D (nx209), .CLK (clk)
        ) ;
    mux21_ni ix210 (.Y (nx209), .A0 (nx68), .A1 (shiftBit), .S0 (nx238)) ;
    mux21_ni ix69 (.Y (nx68), .A0 (in[0]), .A1 (m_Reg_0), .S0 (ctrl[1])) ;
    dff reg_m_Reg_0 (.Q (m_Reg_0), .QB (\$dummy [1]), .D (nx199), .CLK (clk)) ;
    mux21_ni ix200 (.Y (nx199), .A0 (nx58), .A1 (m_Reg_0), .S0 (ctrl[0])) ;
    mux21_ni ix59 (.Y (nx58), .A0 (in[0]), .A1 (m_Reg_1), .S0 (ctrl[1])) ;
    dff reg_m_Reg_1 (.Q (m_Reg_1), .QB (\$dummy [2]), .D (nx189), .CLK (clk)) ;
    mux21_ni ix190 (.Y (nx189), .A0 (nx48), .A1 (m_Reg_1), .S0 (ctrl[0])) ;
    mux21_ni ix49 (.Y (nx48), .A0 (in[1]), .A1 (m_Reg_2), .S0 (ctrl[1])) ;
    dff reg_m_Reg_2 (.Q (m_Reg_2), .QB (\$dummy [3]), .D (nx179), .CLK (clk)) ;
    mux21_ni ix180 (.Y (nx179), .A0 (nx38), .A1 (m_Reg_2), .S0 (ctrl[0])) ;
    mux21_ni ix39 (.Y (nx38), .A0 (in[2]), .A1 (m_Reg_3), .S0 (ctrl[1])) ;
    dff reg_m_Reg_3 (.Q (m_Reg_3), .QB (\$dummy [4]), .D (nx169), .CLK (clk)) ;
    mux21_ni ix170 (.Y (nx169), .A0 (nx28), .A1 (m_Reg_3), .S0 (ctrl[0])) ;
    mux21_ni ix29 (.Y (nx28), .A0 (in[3]), .A1 (carry), .S0 (ctrl[1])) ;
    dff reg_m_O_0 (.Q (o[0]), .QB (\$dummy [5]), .D (nx82), .CLK (clk)) ;
    mux21_ni ix83 (.Y (nx82), .A0 (nx58), .A1 (m_Reg_0), .S0 (ctrl[0])) ;
    dff reg_m_O_1 (.Q (o[1]), .QB (\$dummy [6]), .D (nx96), .CLK (clk)) ;
    mux21_ni ix97 (.Y (nx96), .A0 (nx48), .A1 (m_Reg_1), .S0 (ctrl[0])) ;
    dff reg_m_O_2 (.Q (o[2]), .QB (\$dummy [7]), .D (nx110), .CLK (clk)) ;
    mux21_ni ix111 (.Y (nx110), .A0 (nx38), .A1 (m_Reg_2), .S0 (ctrl[0])) ;
    dff reg_m_O_3 (.Q (o[3]), .QB (\$dummy [8]), .D (nx124), .CLK (clk)) ;
    mux21_ni ix125 (.Y (nx124), .A0 (nx28), .A1 (m_Reg_3), .S0 (ctrl[0])) ;
    nor02ii ix239 (.Y (nx238), .A0 (ctrl[1]), .A1 (ctrl[0])) ;
endmodule