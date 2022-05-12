module GCD (
  input wire CLK,
  input wire RST_N,
  input wire [7:0] A,
  input wire [7:0] B,
  input wire START,
  output reg [7:0] Y,
  output reg DONE,
  output reg ERROR
);

parameter [1:0] IDLE   = 2'b00;
parameter [1:0] CALC   = 2'b01;
parameter [1:0] FINISH = 2'b10;

// [HW]
// Finish this design based on
//   1. FSM
//   2. Datapath diagram
//
// Note: You may manipulate the signals by using either
//       assign statement or always block. Just remember
//       to use the proper signal type (namely, wire or reg).
//

endmodule
