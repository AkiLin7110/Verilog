/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Jun 11 20:58:39 2020
/////////////////////////////////////////////////////////////


module GCD_DW01_sub_0 ( A, B, DIFF );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_7 ( .A(A[7]), .B(n2), .C(carry[7]), .Y(DIFF[7]) );
  CLKINVX1 U1 ( .A(B[7]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n9) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n8) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n3) );
  XNOR2X1 U11 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
endmodule


module GCD ( CLK, RST_N, A, B, START, Y, DONE, ERROR );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Y;
  input CLK, RST_N, START;
  output DONE, ERROR;
  wire   \state[0] , N39, N41, n12, n13, n14, n15, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139;
  wire   [1:0] state_next;
  wire   [7:0] diff;
  wire   [7:0] reg_a;
  wire   [7:0] data_b;
  wire   [7:0] reg_b;
  wire   [7:0] data_a;

  GCD_DW01_sub_0 sub_148 ( .A(data_a), .B(data_b), .DIFF(diff) );
  DFFRX1 \Y_reg[7]  ( .D(n82), .CK(CLK), .RN(RST_N), .Q(Y[7]), .QN(n57) );
  DFFRX1 \Y_reg[6]  ( .D(n81), .CK(CLK), .RN(RST_N), .Q(Y[6]), .QN(n56) );
  DFFRX1 \Y_reg[5]  ( .D(n80), .CK(CLK), .RN(RST_N), .Q(Y[5]), .QN(n55) );
  DFFRX1 \Y_reg[4]  ( .D(n79), .CK(CLK), .RN(RST_N), .Q(Y[4]), .QN(n54) );
  DFFRX1 \Y_reg[3]  ( .D(n78), .CK(CLK), .RN(RST_N), .Q(Y[3]), .QN(n53) );
  DFFRX1 \Y_reg[2]  ( .D(n77), .CK(CLK), .RN(RST_N), .Q(Y[2]), .QN(n52) );
  DFFRX1 \Y_reg[1]  ( .D(n76), .CK(CLK), .RN(RST_N), .Q(Y[1]), .QN(n51) );
  DFFRX1 \Y_reg[0]  ( .D(n75), .CK(CLK), .RN(RST_N), .Q(Y[0]), .QN(n50) );
  DFFRX1 ERROR_reg ( .D(n89), .CK(CLK), .RN(RST_N), .Q(ERROR), .QN(n58) );
  DFFRX1 \state_reg[1]  ( .D(state_next[1]), .CK(CLK), .RN(RST_N), .QN(n100)
         );
  DFFRX1 \state_reg[0]  ( .D(state_next[0]), .CK(CLK), .RN(RST_N), .Q(
        \state[0] ) );
  DFFSRX1 \reg_a_reg[1]  ( .D(n97), .CK(CLK), .SN(n72), .RN(RST_N), .Q(
        reg_a[1]), .QN(n108) );
  DFFSRX1 \reg_b_reg[6]  ( .D(n88), .CK(CLK), .SN(n64), .RN(RST_N), .Q(
        reg_b[6]), .QN(n106) );
  DFFSRX1 \reg_a_reg[2]  ( .D(n96), .CK(CLK), .SN(n71), .RN(RST_N), .Q(
        reg_a[2]), .QN(n103) );
  DFFSRX1 \reg_a_reg[4]  ( .D(n94), .CK(CLK), .SN(n69), .RN(RST_N), .Q(
        reg_a[4]), .QN(n105) );
  DFFSRX1 \reg_a_reg[3]  ( .D(n95), .CK(CLK), .SN(n70), .RN(RST_N), .Q(
        reg_a[3]), .QN(n102) );
  DFFSRX1 \reg_a_reg[5]  ( .D(n93), .CK(CLK), .SN(n68), .RN(RST_N), .Q(
        reg_a[5]), .QN(n104) );
  DFFSRX1 \reg_a_reg[7]  ( .D(n91), .CK(CLK), .SN(n66), .RN(RST_N), .Q(
        reg_a[7]), .QN(n107) );
  DFFSRX1 \reg_a_reg[6]  ( .D(n92), .CK(CLK), .SN(n67), .RN(RST_N), .QN(n114)
         );
  DFFSRX1 \reg_b_reg[7]  ( .D(n90), .CK(CLK), .SN(n65), .RN(RST_N), .QN(n115)
         );
  DFFSRX1 \reg_b_reg[5]  ( .D(n87), .CK(CLK), .SN(n63), .RN(RST_N), .QN(n113)
         );
  DFFSRX1 \reg_b_reg[4]  ( .D(n86), .CK(CLK), .SN(n62), .RN(RST_N), .QN(n112)
         );
  DFFSRX1 \reg_b_reg[3]  ( .D(n85), .CK(CLK), .SN(n61), .RN(RST_N), .QN(n111)
         );
  DFFSRX1 \reg_b_reg[2]  ( .D(n84), .CK(CLK), .SN(n60), .RN(RST_N), .QN(n110)
         );
  DFFSRX1 \reg_b_reg[1]  ( .D(n83), .CK(CLK), .SN(n59), .RN(RST_N), .Q(
        reg_b[1]), .QN(n116) );
  DFFSRX1 \reg_b_reg[0]  ( .D(n99), .CK(CLK), .SN(n74), .RN(RST_N), .Q(
        reg_b[0]), .QN(n101) );
  DFFSRX1 \reg_a_reg[0]  ( .D(n98), .CK(CLK), .SN(n73), .RN(RST_N), .Q(
        reg_a[0]), .QN(n109) );
  OAI22XL U103 ( .A0(n139), .A1(n101), .B0(n117), .B1(n109), .Y(data_a[0]) );
  OAI22XL U104 ( .A0(n139), .A1(n107), .B0(n117), .B1(n115), .Y(data_b[7]) );
  CLKINVX1 U105 ( .A(RST_N), .Y(n119) );
  OAI22XL U106 ( .A0(n139), .A1(n108), .B0(n117), .B1(n116), .Y(data_b[1]) );
  OAI22XL U107 ( .A0(n139), .A1(n109), .B0(n117), .B1(n101), .Y(data_b[0]) );
  OAI22XL U108 ( .A0(n139), .A1(n116), .B0(n117), .B1(n108), .Y(data_a[1]) );
  CLKINVX1 U109 ( .A(n117), .Y(n139) );
  OAI22XL U110 ( .A0(n139), .A1(n103), .B0(n117), .B1(n110), .Y(data_b[2]) );
  OAI22XL U111 ( .A0(n139), .A1(n102), .B0(n117), .B1(n111), .Y(data_b[3]) );
  OAI22XL U112 ( .A0(n139), .A1(n105), .B0(n117), .B1(n112), .Y(data_b[4]) );
  OAI22XL U113 ( .A0(n139), .A1(n104), .B0(n117), .B1(n113), .Y(data_b[5]) );
  OAI22XL U114 ( .A0(n139), .A1(n114), .B0(n117), .B1(n106), .Y(data_b[6]) );
  OAI22XL U115 ( .A0(n139), .A1(n110), .B0(n117), .B1(n103), .Y(data_a[2]) );
  OAI22XL U116 ( .A0(n139), .A1(n111), .B0(n117), .B1(n102), .Y(data_a[3]) );
  OAI22XL U117 ( .A0(n139), .A1(n112), .B0(n117), .B1(n105), .Y(data_a[4]) );
  OAI22XL U118 ( .A0(n139), .A1(n113), .B0(n117), .B1(n104), .Y(data_a[5]) );
  OAI22XL U119 ( .A0(n139), .A1(n106), .B0(n117), .B1(n114), .Y(data_a[6]) );
  CLKBUFX3 U120 ( .A(n15), .Y(n118) );
  AO21X1 U121 ( .A0(n35), .A1(n36), .B0(N41), .Y(n15) );
  NOR4X1 U122 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  NOR4X1 U123 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n35) );
  NOR2BX1 U124 ( .AN(n12), .B(n13), .Y(state_next[1]) );
  OAI22XL U125 ( .A0(n115), .A1(n139), .B0(n117), .B1(n107), .Y(data_a[7]) );
  OAI21XL U126 ( .A0(n13), .A1(n12), .B0(n14), .Y(state_next[0]) );
  NAND2X1 U127 ( .A(n119), .B(data_b[1]), .Y(n59) );
  NAND2X1 U128 ( .A(n119), .B(data_b[2]), .Y(n60) );
  NAND2X1 U129 ( .A(n119), .B(data_b[3]), .Y(n61) );
  NAND2X1 U130 ( .A(n119), .B(data_b[4]), .Y(n62) );
  NAND2X1 U131 ( .A(n119), .B(data_b[5]), .Y(n63) );
  NAND2X1 U132 ( .A(n119), .B(data_b[6]), .Y(n64) );
  NAND2X1 U133 ( .A(n119), .B(data_b[7]), .Y(n65) );
  NAND2X1 U134 ( .A(n119), .B(data_b[0]), .Y(n74) );
  NAND2X1 U135 ( .A(diff[0]), .B(n119), .Y(n73) );
  NAND2X1 U136 ( .A(diff[7]), .B(n119), .Y(n66) );
  NAND2X1 U137 ( .A(diff[6]), .B(n119), .Y(n67) );
  NAND2X1 U138 ( .A(diff[5]), .B(n119), .Y(n68) );
  NAND2X1 U139 ( .A(diff[4]), .B(n119), .Y(n69) );
  NAND2X1 U140 ( .A(diff[3]), .B(n119), .Y(n70) );
  NAND2X1 U141 ( .A(diff[2]), .B(n119), .Y(n71) );
  NAND2X1 U142 ( .A(diff[1]), .B(n119), .Y(n72) );
  CLKBUFX3 U143 ( .A(N39), .Y(n117) );
  OAI22XL U144 ( .A0(reg_a[7]), .A1(n115), .B0(n137), .B1(n126), .Y(N39) );
  CLKINVX1 U145 ( .A(n127), .Y(n137) );
  AO22X1 U146 ( .A0(n138), .A1(diff[7]), .B0(A[7]), .B1(START), .Y(n91) );
  NAND2BX1 U147 ( .AN(n118), .B(n58), .Y(n12) );
  AO22X1 U148 ( .A0(n138), .A1(diff[6]), .B0(A[6]), .B1(START), .Y(n92) );
  AO22X1 U149 ( .A0(n138), .A1(diff[5]), .B0(A[5]), .B1(START), .Y(n93) );
  AO22X1 U150 ( .A0(n138), .A1(diff[4]), .B0(A[4]), .B1(START), .Y(n94) );
  AO22X1 U151 ( .A0(n138), .A1(diff[3]), .B0(A[3]), .B1(START), .Y(n95) );
  AO22X1 U152 ( .A0(n138), .A1(diff[2]), .B0(A[2]), .B1(START), .Y(n96) );
  AO22X1 U153 ( .A0(n138), .A1(diff[1]), .B0(A[1]), .B1(START), .Y(n97) );
  OAI2BB2XL U154 ( .B0(n50), .B1(n118), .A0N(n118), .A1N(data_a[0]), .Y(n75)
         );
  OAI2BB2XL U155 ( .B0(n51), .B1(n118), .A0N(n118), .A1N(data_a[1]), .Y(n76)
         );
  OAI2BB2XL U156 ( .B0(n52), .B1(n118), .A0N(n118), .A1N(data_a[2]), .Y(n77)
         );
  OAI2BB2XL U157 ( .B0(n53), .B1(n118), .A0N(n118), .A1N(data_a[3]), .Y(n78)
         );
  OAI2BB2XL U158 ( .B0(n54), .B1(n118), .A0N(n118), .A1N(data_a[4]), .Y(n79)
         );
  OAI2BB2XL U159 ( .B0(n55), .B1(n118), .A0N(n118), .A1N(data_a[5]), .Y(n80)
         );
  OAI2BB2XL U160 ( .B0(n56), .B1(n118), .A0N(n118), .A1N(data_a[6]), .Y(n81)
         );
  OAI2BB2XL U161 ( .B0(n57), .B1(n118), .A0N(n118), .A1N(data_a[7]), .Y(n82)
         );
  AO22X1 U162 ( .A0(B[1]), .A1(START), .B0(n138), .B1(data_b[1]), .Y(n83) );
  AO22X1 U163 ( .A0(B[2]), .A1(START), .B0(n138), .B1(data_b[2]), .Y(n84) );
  AO22X1 U164 ( .A0(B[3]), .A1(START), .B0(n138), .B1(data_b[3]), .Y(n85) );
  AO22X1 U165 ( .A0(B[4]), .A1(START), .B0(n138), .B1(data_b[4]), .Y(n86) );
  AO22X1 U166 ( .A0(B[5]), .A1(START), .B0(n138), .B1(data_b[5]), .Y(n87) );
  AO22X1 U167 ( .A0(B[6]), .A1(START), .B0(n138), .B1(data_b[6]), .Y(n88) );
  AO22X1 U168 ( .A0(B[7]), .A1(START), .B0(n138), .B1(data_b[7]), .Y(n90) );
  AO22X1 U169 ( .A0(B[0]), .A1(START), .B0(n138), .B1(data_b[0]), .Y(n99) );
  AO22X1 U170 ( .A0(n138), .A1(diff[0]), .B0(A[0]), .B1(START), .Y(n98) );
  OAI22XL U171 ( .A0(n58), .A1(n13), .B0(n45), .B1(n14), .Y(n89) );
  AOI22X1 U172 ( .A0(n46), .A1(n47), .B0(n48), .B1(n49), .Y(n45) );
  NOR4X1 U173 ( .A(B[7]), .B(B[6]), .C(B[5]), .D(B[4]), .Y(n49) );
  NOR4X1 U174 ( .A(B[3]), .B(B[2]), .C(B[1]), .D(B[0]), .Y(n48) );
  NAND3BX1 U175 ( .AN(\state[0] ), .B(n100), .C(START), .Y(n14) );
  NAND2X1 U176 ( .A(\state[0] ), .B(n100), .Y(n13) );
  NOR4X1 U177 ( .A(A[3]), .B(A[2]), .C(A[1]), .D(A[0]), .Y(n46) );
  NOR4X1 U178 ( .A(A[7]), .B(A[6]), .C(A[5]), .D(A[4]), .Y(n47) );
  XOR2X1 U179 ( .A(B[7]), .B(A[7]), .Y(n44) );
  XOR2X1 U180 ( .A(B[1]), .B(A[1]), .Y(n40) );
  XOR2X1 U181 ( .A(B[6]), .B(A[6]), .Y(n43) );
  XOR2X1 U182 ( .A(B[2]), .B(A[2]), .Y(n39) );
  XOR2X1 U183 ( .A(B[0]), .B(A[0]), .Y(n41) );
  XOR2X1 U184 ( .A(B[5]), .B(A[5]), .Y(n37) );
  XOR2X1 U185 ( .A(B[3]), .B(A[3]), .Y(n42) );
  XOR2X1 U186 ( .A(B[4]), .B(A[4]), .Y(n38) );
  NOR2X1 U187 ( .A(\state[0] ), .B(n100), .Y(DONE) );
  CLKINVX1 U188 ( .A(START), .Y(n138) );
  NAND2X1 U189 ( .A(reg_a[7]), .B(n115), .Y(n127) );
  OR2X1 U190 ( .A(reg_b[6]), .B(n114), .Y(n133) );
  NAND2X1 U191 ( .A(reg_a[5]), .B(n113), .Y(n132) );
  NAND2X1 U192 ( .A(reg_a[4]), .B(n112), .Y(n131) );
  NAND2X1 U193 ( .A(reg_a[3]), .B(n111), .Y(n129) );
  NOR2BX1 U194 ( .AN(reg_b[0]), .B(reg_a[0]), .Y(n121) );
  OAI2BB1X1 U195 ( .A0N(n121), .A1N(reg_b[1]), .B0(reg_a[1]), .Y(n120) );
  NAND2X1 U196 ( .A(reg_a[2]), .B(n110), .Y(n128) );
  OAI211X1 U197 ( .A0(reg_b[1]), .A1(n121), .B0(n120), .C0(n128), .Y(n122) );
  OAI221XL U198 ( .A0(reg_a[2]), .A1(n110), .B0(reg_a[3]), .B1(n111), .C0(n122), .Y(n123) );
  NAND3X1 U199 ( .A(n131), .B(n129), .C(n123), .Y(n124) );
  OAI221XL U200 ( .A0(reg_a[4]), .A1(n112), .B0(reg_a[5]), .B1(n113), .C0(n124), .Y(n125) );
  AOI32X1 U201 ( .A0(n133), .A1(n132), .A2(n125), .B0(reg_b[6]), .B1(n114), 
        .Y(n126) );
  NAND4BX1 U202 ( .AN(n117), .B(n129), .C(n128), .D(n127), .Y(n136) );
  NOR2BX1 U203 ( .AN(reg_a[0]), .B(reg_b[0]), .Y(n130) );
  OAI22XL U204 ( .A0(n130), .A1(n116), .B0(reg_a[1]), .B1(n130), .Y(n134) );
  NAND4X1 U205 ( .A(n134), .B(n133), .C(n132), .D(n131), .Y(n135) );
  NOR2X1 U206 ( .A(n136), .B(n135), .Y(N41) );
endmodule

