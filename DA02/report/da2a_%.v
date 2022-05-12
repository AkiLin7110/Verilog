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
wire found,err,swap;
reg [7:0] reg_a,reg_b,data_a,data_b;
reg [7:0] diff;
reg error_next;
reg [1:0] state,state_next;
//DFF
always @(posedge CLK ,negedge RST_N)
begin
if (RST_N==1'b0)
	begin
	ERROR=0;
	end
else 
	begin
	ERROR=error_next;
	end
end


//FSM
always @*
begin
case(state)
default:state_next<=IDLE;
	IDLE:
	begin
	if(!START)
		begin
		state_next<=IDLE;
		error_next<=0;
		end
	else
		begin
		state_next<=CALC;
		error_next<=(A==0||B==0);
		end
	end
	CALC:  
	begin
    if(!found&&!ERROR)
        begin
        state_next<=CALC;
        error_next<=ERROR;
        end
    else
        begin
        state_next<=FINISH;
        error_next<=0;
        end
	end
	FINISH:
		begin
		DONE<=1;
		error_next<=0;
		end
endcase
end

//Datapath
 //DFF A.B
always @(posedge CLK ,negedge RST_N)
begin
if (RST_N==1'b0)
	begin
    reg_a<=diff;
    end
else if (START)
    begin
    reg_a<=A;
    end
//if (RST_N==1'b0)
//	begin
//	reg_b<=data_b;
//	end
//else if (START)
//	begin
//	reg_b<=B;
//	end
end
always @(posedge CLK ,negedge RST_N)
begin
if (RST_N==1'b0)
	reg_b<=data_b;
else if(START)
	reg_b<=B;
end
//SWAP
assign swap=(reg_b>reg_a)? 1:0;
always@*
begin
//swap=(reg_b>reg_a)? 1:0;
if (swap==1)
	begin
	data_a<=reg_b;
	data_b<=reg_a;
	end	
end
//Sub
always@*
	diff=data_a%data_b;
//Y
assign found=(reg_a==reg_b||A==B)?1:0;
always@(posedge CLK,negedge RST_N)
begin
	//found=(reg_a==reg_b||A==B)?1:0;
if (RST_N==1'b0)
	begin
	Y=Y;
	end
else if (found)
	begin
	Y=reg_a;
	end
end
endmodule

