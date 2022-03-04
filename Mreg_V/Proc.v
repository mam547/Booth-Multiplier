//
// Verilog description for cell Mreg, 
// Thu Mar  3 16:07:44 2022
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module Mreg ( in, ctrl, o, clk ) ;

    input [3:0]in ;
    input ctrl ;
    output [3:0]o ;
    input clk ;

    wire m_Reg_0, nx12, m_Reg_1, nx32, m_Reg_2, nx52, m_Reg_3, nx72, nx145, 
         nx155, nx165, nx175;
    wire [7:0] \$dummy ;




    dff reg_m_O_0 (.Q (o[0]), .QB (\$dummy [0]), .D (nx12), .CLK (clk)) ;
    mux21_ni ix13 (.Y (nx12), .A0 (m_Reg_0), .A1 (in[0]), .S0 (ctrl)) ;
    dff reg_m_Reg_0 (.Q (m_Reg_0), .QB (\$dummy [1]), .D (nx145), .CLK (clk)) ;
    mux21_ni ix146 (.Y (nx145), .A0 (m_Reg_0), .A1 (in[0]), .S0 (ctrl)) ;
    dff reg_m_O_1 (.Q (o[1]), .QB (\$dummy [2]), .D (nx32), .CLK (clk)) ;
    mux21_ni ix33 (.Y (nx32), .A0 (m_Reg_1), .A1 (in[1]), .S0 (ctrl)) ;
    dff reg_m_Reg_1 (.Q (m_Reg_1), .QB (\$dummy [3]), .D (nx155), .CLK (clk)) ;
    mux21_ni ix156 (.Y (nx155), .A0 (m_Reg_1), .A1 (in[1]), .S0 (ctrl)) ;
    dff reg_m_O_2 (.Q (o[2]), .QB (\$dummy [4]), .D (nx52), .CLK (clk)) ;
    mux21_ni ix53 (.Y (nx52), .A0 (m_Reg_2), .A1 (in[2]), .S0 (ctrl)) ;
    dff reg_m_Reg_2 (.Q (m_Reg_2), .QB (\$dummy [5]), .D (nx165), .CLK (clk)) ;
    mux21_ni ix166 (.Y (nx165), .A0 (m_Reg_2), .A1 (in[2]), .S0 (ctrl)) ;
    dff reg_m_O_3 (.Q (o[3]), .QB (\$dummy [6]), .D (nx72), .CLK (clk)) ;
    mux21_ni ix73 (.Y (nx72), .A0 (m_Reg_3), .A1 (in[3]), .S0 (ctrl)) ;
    dff reg_m_Reg_3 (.Q (m_Reg_3), .QB (\$dummy [7]), .D (nx175), .CLK (clk)) ;
    mux21_ni ix176 (.Y (nx175), .A0 (m_Reg_3), .A1 (in[3]), .S0 (ctrl)) ;
endmodule
