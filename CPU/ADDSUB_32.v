`include "CLA_4.v"

`ifndef ADDSUB_32_V
`define ADDSUB_32_V

module cla_32(X,Y,Cin,S,Cout);
    input [31:0] X, Y;
    input Cin;
    output[31:0]S;
    output Cout;
    wire Cout0,Cout1,Cout2,Cout3,Cout4,Cout5,Cout6;
    CLA_4 add0(X[3:0],Y[3:0],Cin,S[3:0],Cout0);
    CLA_4 add1(X[7:4],Y[7:4],Cout0,S[7:4],Cout1);
    CLA_4 add2(X[11:8],Y[11:8],Cout1,S[11:8],Cout2);
    CLA_4 add3(X[15:12],Y[15:12],Cout2,S[15:12],Cout3);
    CLA_4 add4(X[19:16],Y[19:16],Cout3,S[19:16],Cout4);
    CLA_4 add5(X[23:20],Y[23:20],Cout4,S[23:20],Cout5);
    CLA_4 add6(X[27:24],Y[27:24],Cout5,S[27:24],Cout6);
    CLA_4 add7(X[31:28],Y[31:28],Cout6,S[31:28],Cout);
endmodule

module ADDSUB_32 (X, Y, Sub, S, Cout);
   input [31:0] X, Y;
   input Sub;
   output [31:0] S;
   output Cout;
   cla_32 adder0 (X, Y^{32{Sub}}, Sub, S, Cout);
endmodule
`endif