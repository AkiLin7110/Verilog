`timescale 1ns/100ps
module test;
	reg signed[1:0] A,B;  //two-bit input
	wire [1:0] G;			//output
	//instantiate the majority block
	majority m(G[0],G[1],A[0],A[1],B[0],B[1]);
	initial begin
		$fsdbDumpfile("DA01.fsdb");
		$fsdbDumpvars;
	end
	initial begin
		A=2'b00;
		repeat (4) begin
			B=2'b00;
			repeat(4) begin
					#10;
					$display("a = %b%b,b = %b%b,c = %b%b",A[0],A[1],B[0],B[1],G[0],G[1]);
					B=B+2'b01;
			end
			A=A+2'b01;
		end
	end
endmodule
