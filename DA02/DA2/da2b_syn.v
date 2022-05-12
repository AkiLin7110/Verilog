/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Jun 11 21:02:54 2020
/////////////////////////////////////////////////////////////


module GCD_DW01_add_1 ( A, B, CI, SUM, CO );
  input [5:0] A;
  input [5:0] B;
  output [5:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6;

  ADDFXL U2 ( .A(A[5]), .B(B[5]), .CI(n2), .CO(CO), .S(SUM[5]) );
  ADDFXL U3 ( .A(A[4]), .B(B[4]), .CI(n3), .CO(n2), .S(SUM[4]) );
  ADDFXL U4 ( .A(A[3]), .B(B[3]), .CI(n4), .CO(n3), .S(SUM[3]) );
  ADDFXL U5 ( .A(A[2]), .B(B[2]), .CI(n5), .CO(n4), .S(SUM[2]) );
  ADDFXL U6 ( .A(A[1]), .B(B[1]), .CI(n6), .CO(n5), .S(SUM[1]) );
  ADDFXL U7 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(n6), .S(SUM[0]) );
endmodule


module GCD_DW01_add_2 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7;

  ADDFXL U2 ( .A(A[6]), .B(B[6]), .CI(n2), .CO(CO), .S(SUM[6]) );
  ADDFXL U3 ( .A(A[5]), .B(B[5]), .CI(n3), .CO(n2), .S(SUM[5]) );
  ADDFXL U4 ( .A(A[4]), .B(B[4]), .CI(n4), .CO(n3), .S(SUM[4]) );
  ADDFXL U5 ( .A(A[3]), .B(B[3]), .CI(n5), .CO(n4), .S(SUM[3]) );
  ADDFXL U6 ( .A(A[2]), .B(B[2]), .CI(n6), .CO(n5), .S(SUM[2]) );
  ADDFXL U7 ( .A(A[1]), .B(B[1]), .CI(n7), .CO(n6), .S(SUM[1]) );
  ADDFXL U8 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(n7), .S(SUM[0]) );
endmodule


module GCD_DW_div_uns_0 ( a, b, remainder );
  input [7:0] a;
  input [7:0] b;
  output [7:0] remainder;
  wire   n64, n65, n66, n67, n68, n69, n70, n71, \u_div/SumTmp[0][0] ,
         \u_div/SumTmp[0][1] , \u_div/SumTmp[0][2] , \u_div/SumTmp[0][3] ,
         \u_div/SumTmp[0][4] , \u_div/SumTmp[0][5] , \u_div/SumTmp[0][6] ,
         \u_div/SumTmp[0][7] , \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] ,
         \u_div/SumTmp[1][2] , \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] ,
         \u_div/SumTmp[1][5] , \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] ,
         \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] ,
         \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] ,
         \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] ,
         \u_div/SumTmp[3][4] , \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] ,
         \u_div/SumTmp[4][2] , \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] ,
         \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] ,
         \u_div/SumTmp[6][1] , \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] ,
         \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] , \u_div/CryTmp[3][5] ,
         \u_div/CryTmp[4][1] , \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] ,
         \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , \u_div/u_add_PartRem_1_2/B[4] ,
         \u_div/u_add_PartRem_1_2/B[3] , \u_div/u_add_PartRem_1_2/B[2] ,
         \u_div/u_add_PartRem_1_2/B[1] , \u_div/u_add_PartRem_1_2/B[0] ,
         \u_div/u_add_PartRem_1_2/n5 , \u_div/u_add_PartRem_1_2/n4 ,
         \u_div/u_add_PartRem_1_2/n3 , \u_div/u_add_PartRem_1_2/n2 , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63;

  GCD_DW01_add_1 \u_div/u_add_PartRem_1_1  ( .A({\u_div/PartRem[2][6] , 
        \u_div/PartRem[2][5] , \u_div/PartRem[2][4] , \u_div/PartRem[2][3] , 
        \u_div/PartRem[2][2] , \u_div/PartRem[2][1] }), .B({n7, 
        \u_div/u_add_PartRem_1_2/B[4] , \u_div/u_add_PartRem_1_2/B[3] , 
        \u_div/u_add_PartRem_1_2/B[2] , \u_div/u_add_PartRem_1_2/B[1] , 
        \u_div/u_add_PartRem_1_2/B[0] }), .CI(\u_div/CryTmp[1][1] ), .SUM({
        \u_div/SumTmp[1][6] , \u_div/SumTmp[1][5] , \u_div/SumTmp[1][4] , 
        \u_div/SumTmp[1][3] , \u_div/SumTmp[1][2] , \u_div/SumTmp[1][1] }), 
        .CO(\u_div/CryTmp[1][7] ) );
  GCD_DW01_add_2 \u_div/u_add_PartRem_1_0  ( .A({\u_div/PartRem[1][7] , 
        \u_div/PartRem[1][6] , \u_div/PartRem[1][5] , \u_div/PartRem[1][4] , 
        \u_div/PartRem[1][3] , \u_div/PartRem[1][2] , \u_div/PartRem[1][1] }), 
        .B({n6, n7, \u_div/u_add_PartRem_1_2/B[4] , 
        \u_div/u_add_PartRem_1_2/B[3] , \u_div/u_add_PartRem_1_2/B[2] , 
        \u_div/u_add_PartRem_1_2/B[1] , \u_div/u_add_PartRem_1_2/B[0] }), .CI(
        \u_div/CryTmp[0][1] ), .SUM({\u_div/SumTmp[0][7] , 
        \u_div/SumTmp[0][6] , \u_div/SumTmp[0][5] , \u_div/SumTmp[0][4] , 
        \u_div/SumTmp[0][3] , \u_div/SumTmp[0][2] , \u_div/SumTmp[0][1] }), 
        .CO(n71) );
  ADDFXL \u_div/u_add_PartRem_1_2/U6  ( .A(\u_div/PartRem[3][1] ), .B(
        \u_div/u_add_PartRem_1_2/B[0] ), .CI(\u_div/CryTmp[2][1] ), .CO(
        \u_div/u_add_PartRem_1_2/n5 ), .S(\u_div/SumTmp[2][1] ) );
  ADDFXL \u_div/u_add_PartRem_1_2/U5  ( .A(\u_div/PartRem[3][2] ), .B(
        \u_div/u_add_PartRem_1_2/B[1] ), .CI(\u_div/u_add_PartRem_1_2/n5 ), 
        .CO(\u_div/u_add_PartRem_1_2/n4 ), .S(\u_div/SumTmp[2][2] ) );
  ADDFXL \u_div/u_add_PartRem_1_2/U4  ( .A(\u_div/PartRem[3][3] ), .B(
        \u_div/u_add_PartRem_1_2/B[2] ), .CI(\u_div/u_add_PartRem_1_2/n4 ), 
        .CO(\u_div/u_add_PartRem_1_2/n3 ), .S(\u_div/SumTmp[2][3] ) );
  ADDFXL \u_div/u_add_PartRem_1_2/U3  ( .A(\u_div/PartRem[3][4] ), .B(
        \u_div/u_add_PartRem_1_2/B[3] ), .CI(\u_div/u_add_PartRem_1_2/n3 ), 
        .CO(\u_div/u_add_PartRem_1_2/n2 ), .S(\u_div/SumTmp[2][4] ) );
  ADDFXL \u_div/u_add_PartRem_1_2/U2  ( .A(\u_div/PartRem[3][5] ), .B(
        \u_div/u_add_PartRem_1_2/B[4] ), .CI(\u_div/u_add_PartRem_1_2/n2 ), 
        .CO(\u_div/CryTmp[2][6] ), .S(\u_div/SumTmp[2][5] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_6_0  ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), 
        .S0(n65), .Y(\u_div/PartRem[6][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_0  ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), 
        .S0(n68), .Y(\u_div/PartRem[3][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_7_0  ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), 
        .S0(n64), .Y(\u_div/PartRem[7][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_5_0  ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), 
        .S0(n66), .Y(\u_div/PartRem[5][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_0  ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), 
        .S0(n67), .Y(\u_div/PartRem[4][1] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_0  ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), 
        .S0(n69), .Y(\u_div/PartRem[2][1] ) );
  MX2XL \u_div/u_mx_PartRem_0_1_0  ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(
        n70), .Y(\u_div/PartRem[1][1] ) );
  MX2XL \u_div/u_mx_PartRem_0_0_0  ( .A(a[0]), .B(\u_div/SumTmp[0][0] ), .S0(
        n71), .Y(remainder[0]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(
        \u_div/SumTmp[1][6] ), .S0(n70), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(
        \u_div/SumTmp[1][5] ), .S0(n70), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(
        \u_div/SumTmp[1][4] ), .S0(n70), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(
        \u_div/SumTmp[1][3] ), .S0(n70), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(
        \u_div/SumTmp[1][2] ), .S0(n70), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(
        \u_div/SumTmp[6][1] ), .S0(n65), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(
        \u_div/SumTmp[3][1] ), .S0(n68), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(
        \u_div/SumTmp[5][1] ), .S0(n66), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(
        \u_div/SumTmp[4][1] ), .S0(n67), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(
        \u_div/SumTmp[2][1] ), .S0(n69), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(
        \u_div/SumTmp[1][1] ), .S0(n70), .Y(\u_div/PartRem[1][2] ) );
  MX2XL \u_div/u_mx_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(
        \u_div/SumTmp[0][1] ), .S0(n71), .Y(remainder[1]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(
        \u_div/SumTmp[2][5] ), .S0(n69), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(
        \u_div/SumTmp[3][4] ), .S0(n68), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(
        \u_div/SumTmp[3][3] ), .S0(n68), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(
        \u_div/SumTmp[3][2] ), .S0(n68), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(
        \u_div/SumTmp[4][3] ), .S0(n67), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(
        \u_div/SumTmp[2][4] ), .S0(n69), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(
        \u_div/SumTmp[2][3] ), .S0(n69), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(
        \u_div/SumTmp[2][2] ), .S0(n69), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(
        \u_div/SumTmp[5][2] ), .S0(n66), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(
        \u_div/SumTmp[4][2] ), .S0(n67), .Y(\u_div/PartRem[4][3] ) );
  MX2XL \u_div/u_mx_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/SumTmp[0][2] ), .S0(n71), .Y(remainder[2]) );
  MX2XL \u_div/u_mx_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(
        \u_div/SumTmp[0][3] ), .S0(n71), .Y(remainder[3]) );
  MX2XL \u_div/u_mx_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/SumTmp[0][4] ), .S0(n71), .Y(remainder[4]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/SumTmp[0][5] ), .S0(n71), .Y(remainder[5]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/SumTmp[0][6] ), .S0(n71), .Y(remainder[6]) );
  CLKMX2X2 \u_div/u_mx_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(
        \u_div/SumTmp[0][7] ), .S0(n71), .Y(remainder[7]) );
  CLKINVX1 U1 ( .A(n21), .Y(n2) );
  CLKINVX1 U2 ( .A(n63), .Y(n5) );
  CLKINVX1 U3 ( .A(n26), .Y(n1) );
  CLKINVX1 U4 ( .A(n45), .Y(n3) );
  CLKINVX1 U5 ( .A(\u_div/CryTmp[3][1] ), .Y(n15) );
  NAND2BX1 U6 ( .AN(n62), .B(\u_div/u_add_PartRem_1_2/B[2] ), .Y(n61) );
  CLKINVX1 U7 ( .A(n61), .Y(n4) );
  CLKINVX1 U8 ( .A(\u_div/CryTmp[6][1] ), .Y(n9) );
  CLKINVX1 U9 ( .A(\u_div/CryTmp[5][1] ), .Y(n11) );
  CLKINVX1 U10 ( .A(\u_div/CryTmp[4][1] ), .Y(n13) );
  CLKINVX1 U11 ( .A(b[4]), .Y(\u_div/u_add_PartRem_1_2/B[3] ) );
  CLKINVX1 U12 ( .A(b[5]), .Y(\u_div/u_add_PartRem_1_2/B[4] ) );
  CLKINVX1 U13 ( .A(b[6]), .Y(n7) );
  CLKINVX1 U14 ( .A(b[7]), .Y(n6) );
  CLKINVX1 U15 ( .A(b[1]), .Y(\u_div/u_add_PartRem_1_2/B[0] ) );
  CLKINVX1 U16 ( .A(b[2]), .Y(\u_div/u_add_PartRem_1_2/B[1] ) );
  CLKINVX1 U17 ( .A(b[3]), .Y(\u_div/u_add_PartRem_1_2/B[2] ) );
  CLKINVX1 U18 ( .A(a[7]), .Y(n8) );
  CLKINVX1 U19 ( .A(a[6]), .Y(n10) );
  CLKINVX1 U20 ( .A(a[5]), .Y(n12) );
  CLKINVX1 U21 ( .A(a[4]), .Y(n14) );
  CLKINVX1 U22 ( .A(a[3]), .Y(n16) );
  CLKINVX1 U23 ( .A(a[2]), .Y(n17) );
  CLKINVX1 U24 ( .A(a[1]), .Y(n18) );
  CLKINVX1 U25 ( .A(a[0]), .Y(n19) );
  NOR2X1 U26 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/u_add_PartRem_1_2/B[3] ), 
        .Y(n33) );
  NOR2X1 U27 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/u_add_PartRem_1_2/B[2] ), 
        .Y(n29) );
  NAND2X1 U28 ( .A(\u_div/u_add_PartRem_1_2/B[1] ), .B(\u_div/PartRem[4][2] ), 
        .Y(n27) );
  NAND2X1 U29 ( .A(\u_div/u_add_PartRem_1_2/B[2] ), .B(\u_div/PartRem[4][3] ), 
        .Y(n30) );
  OAI21XL U30 ( .A0(n29), .A1(n27), .B0(n30), .Y(n21) );
  NOR2X1 U31 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/u_add_PartRem_1_2/B[0] ), 
        .Y(n23) );
  NAND2X1 U32 ( .A(\u_div/u_add_PartRem_1_2/B[0] ), .B(\u_div/PartRem[4][1] ), 
        .Y(n22) );
  OAI21XL U33 ( .A0(n23), .A1(n15), .B0(n22), .Y(n26) );
  NOR2X1 U34 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/u_add_PartRem_1_2/B[1] ), 
        .Y(n28) );
  OAI21XL U35 ( .A0(n28), .A1(n29), .B0(n2), .Y(n20) );
  OAI21XL U36 ( .A0(n21), .A1(n26), .B0(n20), .Y(n36) );
  NAND2X1 U37 ( .A(\u_div/u_add_PartRem_1_2/B[3] ), .B(\u_div/PartRem[4][4] ), 
        .Y(n34) );
  OAI21XL U38 ( .A0(n33), .A1(n36), .B0(n34), .Y(\u_div/CryTmp[3][5] ) );
  NAND2BX1 U39 ( .AN(n23), .B(n22), .Y(n24) );
  XNOR2X1 U40 ( .A(\u_div/CryTmp[3][1] ), .B(n24), .Y(\u_div/SumTmp[3][1] ) );
  NAND2BX1 U41 ( .AN(n28), .B(n27), .Y(n25) );
  XNOR2X1 U42 ( .A(n25), .B(n26), .Y(\u_div/SumTmp[3][2] ) );
  OAI21XL U43 ( .A0(n28), .A1(n1), .B0(n27), .Y(n32) );
  NOR2BX1 U44 ( .AN(n30), .B(n29), .Y(n31) );
  XOR2X1 U45 ( .A(n32), .B(n31), .Y(\u_div/SumTmp[3][3] ) );
  NOR2BX1 U46 ( .AN(n34), .B(n33), .Y(n35) );
  XNOR2X1 U47 ( .A(n36), .B(n35), .Y(\u_div/SumTmp[3][4] ) );
  NOR2X1 U48 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/u_add_PartRem_1_2/B[2] ), 
        .Y(n44) );
  NAND2X1 U49 ( .A(\u_div/u_add_PartRem_1_2/B[1] ), .B(\u_div/PartRem[5][2] ), 
        .Y(n45) );
  NAND2X1 U50 ( .A(\u_div/u_add_PartRem_1_2/B[2] ), .B(\u_div/PartRem[5][3] ), 
        .Y(n43) );
  OAI21XL U51 ( .A0(n44), .A1(n45), .B0(n43), .Y(n38) );
  OR2X1 U52 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/u_add_PartRem_1_2/B[1] ), 
        .Y(n46) );
  NOR2BX1 U53 ( .AN(n46), .B(n44), .Y(n37) );
  NOR2X1 U54 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/u_add_PartRem_1_2/B[0] ), 
        .Y(n40) );
  NAND2X1 U55 ( .A(\u_div/u_add_PartRem_1_2/B[0] ), .B(\u_div/PartRem[5][1] ), 
        .Y(n39) );
  OAI21XL U56 ( .A0(n40), .A1(n13), .B0(n39), .Y(n47) );
  OA22X1 U57 ( .A0(n38), .A1(n37), .B0(n38), .B1(n47), .Y(\u_div/CryTmp[4][4] ) );
  NAND2BX1 U58 ( .AN(n40), .B(n39), .Y(n41) );
  XOR2X1 U59 ( .A(n13), .B(n41), .Y(\u_div/SumTmp[4][1] ) );
  NAND2X1 U60 ( .A(n45), .B(n46), .Y(n42) );
  XNOR2X1 U61 ( .A(n42), .B(n47), .Y(\u_div/SumTmp[4][2] ) );
  NAND2BX1 U62 ( .AN(n44), .B(n43), .Y(n49) );
  OAI21XL U63 ( .A0(n3), .A1(n47), .B0(n46), .Y(n48) );
  XOR2X1 U64 ( .A(n49), .B(n48), .Y(\u_div/SumTmp[4][3] ) );
  NOR2X1 U65 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/u_add_PartRem_1_2/B[0] ), 
        .Y(n51) );
  NAND2X1 U66 ( .A(\u_div/u_add_PartRem_1_2/B[0] ), .B(\u_div/PartRem[6][1] ), 
        .Y(n50) );
  OA21XL U67 ( .A0(n51), .A1(n11), .B0(n50), .Y(n55) );
  NAND2X1 U68 ( .A(\u_div/u_add_PartRem_1_2/B[1] ), .B(\u_div/PartRem[6][2] ), 
        .Y(n53) );
  NOR2X1 U69 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/u_add_PartRem_1_2/B[1] ), 
        .Y(n54) );
  AOI21X1 U70 ( .A0(n55), .A1(n53), .B0(n54), .Y(\u_div/CryTmp[5][3] ) );
  NAND2BX1 U71 ( .AN(n51), .B(n50), .Y(n52) );
  XNOR2X1 U72 ( .A(\u_div/CryTmp[5][1] ), .B(n52), .Y(\u_div/SumTmp[5][1] ) );
  NAND2BX1 U73 ( .AN(n54), .B(n53), .Y(n56) );
  XOR2X1 U74 ( .A(n56), .B(n55), .Y(\u_div/SumTmp[5][2] ) );
  NOR2X1 U75 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/u_add_PartRem_1_2/B[0] ), 
        .Y(n58) );
  NAND2X1 U76 ( .A(\u_div/u_add_PartRem_1_2/B[0] ), .B(\u_div/PartRem[7][1] ), 
        .Y(n57) );
  OAI21XL U77 ( .A0(n58), .A1(n9), .B0(n57), .Y(\u_div/CryTmp[6][2] ) );
  NAND2BX1 U78 ( .AN(n58), .B(n57), .Y(n59) );
  XNOR2X1 U79 ( .A(\u_div/CryTmp[6][1] ), .B(n59), .Y(\u_div/SumTmp[6][1] ) );
  XOR2X1 U80 ( .A(b[0]), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  OAI21XL U81 ( .A0(b[0]), .A1(n10), .B0(\u_div/CryTmp[6][1] ), .Y(
        \u_div/SumTmp[6][0] ) );
  OAI21XL U82 ( .A0(b[0]), .A1(n12), .B0(\u_div/CryTmp[5][1] ), .Y(
        \u_div/SumTmp[5][0] ) );
  OAI21XL U83 ( .A0(b[0]), .A1(n14), .B0(\u_div/CryTmp[4][1] ), .Y(
        \u_div/SumTmp[4][0] ) );
  OAI21XL U84 ( .A0(b[0]), .A1(n16), .B0(\u_div/CryTmp[3][1] ), .Y(
        \u_div/SumTmp[3][0] ) );
  OAI21XL U85 ( .A0(b[0]), .A1(n17), .B0(\u_div/CryTmp[2][1] ), .Y(
        \u_div/SumTmp[2][0] ) );
  OAI21XL U86 ( .A0(b[0]), .A1(n18), .B0(\u_div/CryTmp[1][1] ), .Y(
        \u_div/SumTmp[1][0] ) );
  OAI21XL U87 ( .A0(b[0]), .A1(n19), .B0(\u_div/CryTmp[0][1] ), .Y(
        \u_div/SumTmp[0][0] ) );
  NAND2X1 U88 ( .A(b[0]), .B(n10), .Y(\u_div/CryTmp[6][1] ) );
  NAND2X1 U89 ( .A(b[0]), .B(n12), .Y(\u_div/CryTmp[5][1] ) );
  NAND2X1 U90 ( .A(b[0]), .B(n14), .Y(\u_div/CryTmp[4][1] ) );
  NAND2X1 U91 ( .A(b[0]), .B(n16), .Y(\u_div/CryTmp[3][1] ) );
  NAND2X1 U92 ( .A(b[0]), .B(n17), .Y(\u_div/CryTmp[2][1] ) );
  NAND2X1 U93 ( .A(b[0]), .B(n18), .Y(\u_div/CryTmp[1][1] ) );
  NAND2X1 U94 ( .A(b[0]), .B(n19), .Y(\u_div/CryTmp[0][1] ) );
  AOI211X1 U95 ( .A0(b[0]), .A1(n8), .B0(n60), .C0(n61), .Y(n64) );
  NAND2X1 U96 ( .A(\u_div/u_add_PartRem_1_2/B[0] ), .B(
        \u_div/u_add_PartRem_1_2/B[1] ), .Y(n60) );
  AND3X1 U97 ( .A(\u_div/CryTmp[6][2] ), .B(n4), .C(
        \u_div/u_add_PartRem_1_2/B[1] ), .Y(n65) );
  NOR2BX1 U98 ( .AN(\u_div/CryTmp[5][3] ), .B(n61), .Y(n66) );
  NOR2BX1 U99 ( .AN(\u_div/CryTmp[4][4] ), .B(n62), .Y(n67) );
  NAND3X1 U100 ( .A(\u_div/u_add_PartRem_1_2/B[3] ), .B(
        \u_div/u_add_PartRem_1_2/B[4] ), .C(n5), .Y(n62) );
  AND3X1 U101 ( .A(\u_div/CryTmp[3][5] ), .B(n5), .C(
        \u_div/u_add_PartRem_1_2/B[4] ), .Y(n68) );
  NOR2BX1 U102 ( .AN(\u_div/CryTmp[2][6] ), .B(n63), .Y(n69) );
  NAND2X1 U103 ( .A(n7), .B(n6), .Y(n63) );
  NOR2BX1 U104 ( .AN(\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n70) );
endmodule


module GCD ( CLK, RST_N, A, B, START, Y, DONE, ERROR );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Y;
  input CLK, RST_N, START;
  output DONE, ERROR;
  wire   \state[0] , N41, n9, n10, n11, n12, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127;
  wire   [1:0] state_next;
  wire   [7:0] diff;
  wire   [7:0] reg_a;
  wire   [7:0] data_b;
  wire   [7:0] reg_b;
  wire   [7:0] data_a;
  wire   [7:0] Y_next;

  GCD_DW_div_uns_0 rem_157 ( .a(data_a), .b(data_b), .remainder(diff) );
  DFFRX1 \Y_reg[7]  ( .D(Y_next[7]), .CK(CLK), .RN(RST_N), .Q(Y[7]), .QN(n58)
         );
  DFFRX1 \Y_reg[6]  ( .D(Y_next[6]), .CK(CLK), .RN(RST_N), .Q(Y[6]), .QN(n57)
         );
  DFFRX1 \Y_reg[5]  ( .D(Y_next[5]), .CK(CLK), .RN(RST_N), .Q(Y[5]), .QN(n56)
         );
  DFFRX1 \Y_reg[4]  ( .D(Y_next[4]), .CK(CLK), .RN(RST_N), .Q(Y[4]), .QN(n55)
         );
  DFFRX1 \Y_reg[3]  ( .D(Y_next[3]), .CK(CLK), .RN(RST_N), .Q(Y[3]), .QN(n54)
         );
  DFFRX1 \Y_reg[2]  ( .D(Y_next[2]), .CK(CLK), .RN(RST_N), .Q(Y[2]), .QN(n53)
         );
  DFFRX1 \Y_reg[1]  ( .D(Y_next[1]), .CK(CLK), .RN(RST_N), .Q(Y[1]), .QN(n52)
         );
  DFFRX1 \Y_reg[0]  ( .D(Y_next[0]), .CK(CLK), .RN(RST_N), .Q(Y[0]), .QN(n51)
         );
  DFFRX1 ERROR_reg ( .D(n76), .CK(CLK), .RN(RST_N), .Q(ERROR), .QN(n59) );
  DFFRX1 \state_reg[1]  ( .D(state_next[1]), .CK(CLK), .RN(RST_N), .QN(n93) );
  DFFRX1 \state_reg[0]  ( .D(state_next[0]), .CK(CLK), .RN(RST_N), .Q(
        \state[0] ) );
  DFFSRX1 \reg_b_reg[0]  ( .D(n92), .CK(CLK), .SN(n75), .RN(RST_N), .Q(
        reg_b[0]), .QN(n106) );
  DFFSRX1 \reg_a_reg[0]  ( .D(n91), .CK(CLK), .SN(n74), .RN(RST_N), .Q(
        reg_a[0]), .QN(n98) );
  DFFSRX1 \reg_b_reg[1]  ( .D(n77), .CK(CLK), .SN(n60), .RN(RST_N), .Q(
        reg_b[1]), .QN(n99) );
  DFFSRX1 \reg_b_reg[4]  ( .D(n80), .CK(CLK), .SN(n63), .RN(RST_N), .Q(
        reg_b[4]), .QN(n94) );
  DFFSRX1 \reg_a_reg[2]  ( .D(n89), .CK(CLK), .SN(n72), .RN(RST_N), .Q(
        reg_a[2]), .QN(n97) );
  DFFSRX1 \reg_a_reg[1]  ( .D(n90), .CK(CLK), .SN(n73), .RN(RST_N), .QN(n109)
         );
  DFFSRX1 \reg_a_reg[4]  ( .D(n87), .CK(CLK), .SN(n70), .RN(RST_N), .QN(n102)
         );
  DFFSRX1 \reg_b_reg[2]  ( .D(n78), .CK(CLK), .SN(n61), .RN(RST_N), .QN(n108)
         );
  DFFSRX1 \reg_b_reg[3]  ( .D(n79), .CK(CLK), .SN(n62), .RN(RST_N), .Q(
        reg_b[3]), .QN(n101) );
  DFFSRX1 \reg_b_reg[5]  ( .D(n81), .CK(CLK), .SN(n64), .RN(RST_N), .Q(
        reg_b[5]), .QN(n103) );
  DFFSRX1 \reg_a_reg[5]  ( .D(n86), .CK(CLK), .SN(n69), .RN(RST_N), .Q(
        reg_a[5]), .QN(n100) );
  DFFSRX1 \reg_a_reg[3]  ( .D(n88), .CK(CLK), .SN(n71), .RN(RST_N), .Q(
        reg_a[3]), .QN(n107) );
  DFFSRX1 \reg_a_reg[6]  ( .D(n85), .CK(CLK), .SN(n68), .RN(RST_N), .Q(
        reg_a[6]), .QN(n95) );
  DFFSRX1 \reg_a_reg[7]  ( .D(n84), .CK(CLK), .SN(n67), .RN(RST_N), .Q(
        reg_a[7]), .QN(n96) );
  DFFSRX1 \reg_b_reg[6]  ( .D(n82), .CK(CLK), .SN(n65), .RN(RST_N), .Q(
        reg_b[6]), .QN(n105) );
  DFFSRX1 \reg_b_reg[7]  ( .D(n83), .CK(CLK), .SN(n66), .RN(RST_N), .Q(
        reg_b[7]), .QN(n104) );
  OAI22XL U107 ( .A0(n127), .A1(n97), .B0(n110), .B1(n108), .Y(data_b[2]) );
  OAI22XL U108 ( .A0(n127), .A1(n107), .B0(n110), .B1(n101), .Y(data_b[3]) );
  OAI22XL U109 ( .A0(n127), .A1(n109), .B0(n110), .B1(n99), .Y(data_b[1]) );
  OAI22XL U110 ( .A0(n127), .A1(n96), .B0(n110), .B1(n104), .Y(data_b[7]) );
  OAI22XL U111 ( .A0(n127), .A1(n104), .B0(n110), .B1(n96), .Y(data_a[7]) );
  OAI22XL U112 ( .A0(n127), .A1(n105), .B0(n110), .B1(n95), .Y(data_a[6]) );
  OAI22XL U113 ( .A0(n127), .A1(n103), .B0(n110), .B1(n100), .Y(data_a[5]) );
  OAI22XL U114 ( .A0(n127), .A1(n94), .B0(n110), .B1(n102), .Y(data_a[4]) );
  OAI22XL U115 ( .A0(n101), .A1(n127), .B0(n110), .B1(n107), .Y(data_a[3]) );
  OAI22XL U116 ( .A0(n127), .A1(n108), .B0(n110), .B1(n97), .Y(data_a[2]) );
  OAI22XL U117 ( .A0(n127), .A1(n99), .B0(n110), .B1(n109), .Y(data_a[1]) );
  OAI22XL U118 ( .A0(n127), .A1(n106), .B0(n110), .B1(n98), .Y(data_a[0]) );
  CLKINVX1 U119 ( .A(RST_N), .Y(n112) );
  OR3X2 U120 ( .A(data_b[2]), .B(data_b[3]), .C(data_b[1]), .Y(n32) );
  OAI22XL U121 ( .A0(n127), .A1(n102), .B0(n110), .B1(n94), .Y(data_b[4]) );
  OAI22XL U122 ( .A0(n127), .A1(n100), .B0(n110), .B1(n103), .Y(data_b[5]) );
  OAI22XL U123 ( .A0(n127), .A1(n95), .B0(n110), .B1(n105), .Y(data_b[6]) );
  CLKINVX1 U124 ( .A(n110), .Y(n127) );
  OAI22X1 U125 ( .A0(n127), .A1(n98), .B0(n110), .B1(n106), .Y(data_b[0]) );
  OAI21XL U126 ( .A0(n10), .A1(n9), .B0(n11), .Y(state_next[0]) );
  CLKBUFX3 U127 ( .A(n12), .Y(n111) );
  OAI32X1 U128 ( .A0(n32), .A1(data_b[0]), .A2(n33), .B0(n34), .B1(n35), .Y(
        n12) );
  NAND4X1 U129 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n35) );
  NAND4X1 U130 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n34) );
  NOR2BX1 U131 ( .AN(n9), .B(n10), .Y(state_next[1]) );
  NAND2X1 U132 ( .A(n112), .B(data_b[0]), .Y(n75) );
  NAND2X1 U133 ( .A(n112), .B(data_b[1]), .Y(n60) );
  NAND2X1 U134 ( .A(n112), .B(data_b[3]), .Y(n62) );
  NAND2X1 U135 ( .A(n112), .B(data_b[2]), .Y(n61) );
  NAND2X1 U136 ( .A(n112), .B(data_b[7]), .Y(n66) );
  NAND2X1 U137 ( .A(n112), .B(data_b[4]), .Y(n63) );
  NAND2X1 U138 ( .A(n112), .B(data_b[5]), .Y(n64) );
  NAND2X1 U139 ( .A(n112), .B(data_b[6]), .Y(n65) );
  NAND2X1 U140 ( .A(diff[7]), .B(n112), .Y(n67) );
  NAND2X1 U141 ( .A(diff[6]), .B(n112), .Y(n68) );
  NAND2X1 U142 ( .A(diff[5]), .B(n112), .Y(n69) );
  NAND2X1 U143 ( .A(diff[4]), .B(n112), .Y(n70) );
  NAND2X1 U144 ( .A(diff[3]), .B(n112), .Y(n71) );
  NAND2X1 U145 ( .A(diff[2]), .B(n112), .Y(n72) );
  NAND2X1 U146 ( .A(diff[1]), .B(n112), .Y(n73) );
  NAND2X1 U147 ( .A(diff[0]), .B(n112), .Y(n74) );
  CLKBUFX3 U148 ( .A(N41), .Y(n110) );
  OAI31XL U149 ( .A0(n124), .A1(n123), .A2(n122), .B0(n121), .Y(N41) );
  CLKINVX1 U150 ( .A(n118), .Y(n125) );
  AO22X1 U151 ( .A0(n126), .A1(diff[7]), .B0(A[7]), .B1(START), .Y(n84) );
  AO22X1 U152 ( .A0(n126), .A1(diff[6]), .B0(A[6]), .B1(START), .Y(n85) );
  AO22X1 U153 ( .A0(n126), .A1(diff[5]), .B0(A[5]), .B1(START), .Y(n86) );
  AO22X1 U154 ( .A0(n126), .A1(diff[4]), .B0(A[4]), .B1(START), .Y(n87) );
  AO22X1 U155 ( .A0(n126), .A1(diff[3]), .B0(A[3]), .B1(START), .Y(n88) );
  AO22X1 U156 ( .A0(n126), .A1(diff[2]), .B0(A[2]), .B1(START), .Y(n89) );
  AO22X1 U157 ( .A0(n126), .A1(diff[1]), .B0(A[1]), .B1(START), .Y(n90) );
  AO22X1 U158 ( .A0(n126), .A1(diff[0]), .B0(A[0]), .B1(START), .Y(n91) );
  OAI2BB2XL U159 ( .B0(n51), .B1(n111), .A0N(n111), .A1N(data_a[0]), .Y(
        Y_next[0]) );
  OAI2BB2XL U160 ( .B0(n52), .B1(n111), .A0N(n111), .A1N(data_a[1]), .Y(
        Y_next[1]) );
  OAI2BB2XL U161 ( .B0(n53), .B1(n111), .A0N(n111), .A1N(data_a[2]), .Y(
        Y_next[2]) );
  OAI2BB2XL U162 ( .B0(n54), .B1(n111), .A0N(n111), .A1N(data_a[3]), .Y(
        Y_next[3]) );
  OAI2BB2XL U163 ( .B0(n55), .B1(n111), .A0N(n111), .A1N(data_a[4]), .Y(
        Y_next[4]) );
  OAI2BB2XL U164 ( .B0(n56), .B1(n111), .A0N(n111), .A1N(data_a[5]), .Y(
        Y_next[5]) );
  OAI2BB2XL U165 ( .B0(n57), .B1(n111), .A0N(n111), .A1N(data_a[6]), .Y(
        Y_next[6]) );
  OAI2BB2XL U166 ( .B0(n58), .B1(n111), .A0N(n111), .A1N(data_a[7]), .Y(
        Y_next[7]) );
  NAND2BX1 U167 ( .AN(n111), .B(n59), .Y(n9) );
  AOI33X1 U168 ( .A0(n127), .A1(n94), .A2(n44), .B0(n110), .B1(n102), .B2(n45), 
        .Y(n33) );
  NOR3X1 U169 ( .A(reg_b[5]), .B(reg_b[7]), .C(reg_b[6]), .Y(n44) );
  NOR3X1 U170 ( .A(reg_a[5]), .B(reg_a[7]), .C(reg_a[6]), .Y(n45) );
  AO22X1 U171 ( .A0(B[0]), .A1(START), .B0(n126), .B1(data_b[0]), .Y(n92) );
  AO22X1 U172 ( .A0(B[7]), .A1(START), .B0(n126), .B1(data_b[7]), .Y(n83) );
  AO22X1 U173 ( .A0(B[4]), .A1(START), .B0(n126), .B1(data_b[4]), .Y(n80) );
  AO22X1 U174 ( .A0(B[5]), .A1(START), .B0(n126), .B1(data_b[5]), .Y(n81) );
  AO22X1 U175 ( .A0(B[6]), .A1(START), .B0(n126), .B1(data_b[6]), .Y(n82) );
  AO22X1 U176 ( .A0(n126), .A1(data_b[1]), .B0(B[1]), .B1(START), .Y(n77) );
  AO22X1 U177 ( .A0(n126), .A1(data_b[3]), .B0(B[3]), .B1(START), .Y(n79) );
  AO22X1 U178 ( .A0(n126), .A1(data_b[2]), .B0(B[2]), .B1(START), .Y(n78) );
  OAI22XL U179 ( .A0(n59), .A1(n10), .B0(n46), .B1(n11), .Y(n76) );
  AOI22X1 U180 ( .A0(n47), .A1(n48), .B0(n49), .B1(n50), .Y(n46) );
  NOR4X1 U181 ( .A(B[7]), .B(B[6]), .C(B[5]), .D(B[4]), .Y(n50) );
  NOR4X1 U182 ( .A(B[3]), .B(B[2]), .C(B[1]), .D(B[0]), .Y(n49) );
  NAND3BX1 U183 ( .AN(\state[0] ), .B(n93), .C(START), .Y(n11) );
  NAND2X1 U184 ( .A(\state[0] ), .B(n93), .Y(n10) );
  XNOR2X1 U185 ( .A(A[3]), .B(B[3]), .Y(n40) );
  XNOR2X1 U186 ( .A(A[7]), .B(B[7]), .Y(n36) );
  XNOR2X1 U187 ( .A(A[0]), .B(B[0]), .Y(n43) );
  XNOR2X1 U188 ( .A(A[4]), .B(B[4]), .Y(n39) );
  XNOR2X1 U189 ( .A(A[1]), .B(B[1]), .Y(n42) );
  XNOR2X1 U190 ( .A(A[5]), .B(B[5]), .Y(n38) );
  XNOR2X1 U191 ( .A(A[2]), .B(B[2]), .Y(n41) );
  XNOR2X1 U192 ( .A(A[6]), .B(B[6]), .Y(n37) );
  NOR4X1 U193 ( .A(A[3]), .B(A[2]), .C(A[1]), .D(A[0]), .Y(n47) );
  NOR4X1 U194 ( .A(A[7]), .B(A[6]), .C(A[5]), .D(A[4]), .Y(n48) );
  NOR2X1 U195 ( .A(\state[0] ), .B(n93), .Y(DONE) );
  CLKINVX1 U196 ( .A(START), .Y(n126) );
  NOR2BX1 U197 ( .AN(reg_a[3]), .B(reg_b[3]), .Y(n113) );
  AOI21X1 U198 ( .A0(reg_a[2]), .A1(n108), .B0(n113), .Y(n114) );
  OAI32X1 U199 ( .A0(n108), .A1(reg_a[2]), .A2(n113), .B0(reg_a[3]), .B1(n101), 
        .Y(n115) );
  NAND2BX1 U200 ( .AN(reg_b[5]), .B(reg_a[5]), .Y(n119) );
  OAI221XL U201 ( .A0(reg_b[4]), .A1(n102), .B0(n114), .B1(n115), .C0(n119), 
        .Y(n124) );
  AOI2BB1X1 U202 ( .A0N(n109), .A1N(reg_b[1]), .B0(reg_a[0]), .Y(n116) );
  AOI221XL U203 ( .A0(reg_b[1]), .A1(n109), .B0(n116), .B1(reg_b[0]), .C0(n115), .Y(n123) );
  AND2X1 U204 ( .A(reg_a[7]), .B(n104), .Y(n117) );
  AO21X1 U205 ( .A0(n105), .A1(reg_a[6]), .B0(n117), .Y(n122) );
  OAI32X1 U206 ( .A0(n105), .A1(reg_a[6]), .A2(n117), .B0(reg_a[7]), .B1(n104), 
        .Y(n118) );
  AOI32X1 U207 ( .A0(reg_b[4]), .A1(n102), .A2(n119), .B0(n100), .B1(reg_b[5]), 
        .Y(n120) );
  AO22X1 U208 ( .A0(n125), .A1(n120), .B0(n122), .B1(n125), .Y(n121) );
endmodule

