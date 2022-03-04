//
// Verilog description for cell AddSub, 
// Thu Mar  3 16:03:08 2022
//
// LeonardoSpectrum Level 3, 2009a.6 
//


module AddSub ( a, b, ctrl, o, clk ) ;

    input [3:0]a ;
    input [3:0]b ;
    input ctrl ;
    output [3:0]o ;
    input clk ;

    wire nx4, nx20, nx22, nx24, nx26, nx44, nx46, nx48, nx66, nx68, nx70, nx156, 
         nx158, nx167;
    wire [3:0] \$dummy ;




    dff reg_m_O_0 (.Q (o[0]), .QB (\$dummy [0]), .D (nx4), .CLK (clk)) ;
    xor2 ix5 (.Y (nx4), .A0 (a[0]), .A1 (b[0])) ;
    dff reg_m_O_1 (.Q (o[1]), .QB (\$dummy [1]), .D (nx26), .CLK (clk)) ;
    xor2 ix27 (.Y (nx26), .A0 (nx20), .A1 (nx24)) ;
    mux21_ni ix21 (.Y (nx20), .A0 (ctrl), .A1 (a[0]), .S0 (b[0])) ;
    xnor2 ix25 (.Y (nx24), .A0 (a[1]), .A1 (nx22)) ;
    xnor2 ix23 (.Y (nx22), .A0 (b[1]), .A1 (ctrl)) ;
    dff reg_m_O_2 (.Q (o[2]), .QB (\$dummy [2]), .D (nx48), .CLK (clk)) ;
    xnor2 ix49 (.Y (nx48), .A0 (nx156), .A1 (nx46)) ;
    aoi22 ix157 (.Y (nx156), .A0 (nx158), .A1 (a[1]), .B0 (nx20), .B1 (nx24)) ;
    xnor2 ix47 (.Y (nx46), .A0 (a[2]), .A1 (nx44)) ;
    xnor2 ix45 (.Y (nx44), .A0 (b[2]), .A1 (ctrl)) ;
    dff reg_m_O_3 (.Q (o[3]), .QB (\$dummy [3]), .D (nx70), .CLK (clk)) ;
    xnor2 ix71 (.Y (nx70), .A0 (nx167), .A1 (nx68)) ;
    mux21_ni ix168 (.Y (nx167), .A0 (nx44), .A1 (nx156), .S0 (nx46)) ;
    xnor2 ix69 (.Y (nx68), .A0 (a[3]), .A1 (nx66)) ;
    xnor2 ix67 (.Y (nx66), .A0 (b[3]), .A1 (ctrl)) ;
    inv02 ix159 (.Y (nx158), .A (nx22)) ;
endmodule
