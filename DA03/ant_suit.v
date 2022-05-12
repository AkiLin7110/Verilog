module ant_suit (
  input wire clk,
  input wire rst_n,
  input wire ant_r,
  input wire ant_l,
  input wire hit,
  input wire escape,
// challenge mode
`ifdef CHALLENGE
  output reg [`PH_WIDTH - 1:0] ph_drop,
  input wire [`PH_WIDTH - 1:0] ph_detected,
`endif
  output reg [1:0] move
);

  // parameters: action
  parameter [1:0] halt       = `HALT;
  parameter [1:0] turn_right = `RIGHT;
  parameter [1:0] turn_left  = `LEFT;
  parameter [1:0] forward    = `FORWARD;
  parameter cyc = `CYC;
  parameter delay = `DELAY;
  // state
  reg [1:0] state,state_next;
  // replace the initial block with YOUR DESIGN
  //initial 
	// begin
    //	#cyc;
    //	#cyc;
    //	@(posedge rst_n);   // move after reset
		
	// end
		//if (rst_n==1'b1)
		//	state=turn_right;
	always@(posedge clk,negedge rst_n)
		begin
		if(rst_n==1'b0)
			state<=halt;
		else
			state<=state_next;
		end
		//if (ant_l==1 && ant_r==1)
		//	state<=turn_right;
		//else if (ant_l==0 && ant_r==1)
		//	state<=turn_right;
		//else if (ant_l==1 && ant_r==0)
		//	state<=forward;
		//else if (ant_l==0 && ant_r==0)
		//	state<=forward;
	always@*
		begin
		move=halt;	
		case(state)
			halt:
			begin
				//move=halt;
				if ((ant_l==1 && ant_r==1 )||(ant_l==0 && ant_r==1))
					begin
						state_next=turn_right;
						move=turn_right;
					end
				else 
					begin
						state_next=forward;
						move=forward;
					end
			end
			turn_right:
			begin
				//move=turn_right;
				if((ant_l==1 && ant_r==1 )||(ant_l==0 && ant_r==1))
				begin
					state_next=turn_right;
					move=turn_right;
				end
				else
				begin
					state_next=forward;
					move=forward;
				end
			end
			turn_left:
			begin
				//move=turn_left;	
				state_next=forward;
				move=forward;
			end
			forward:
			begin
				//move=forward;
				if ((ant_l==1&&ant_r==0))
					begin
						state_next=forward;
						move=forward;
					end
				else if ((ant_l==1 && ant_r==1)||(ant_l==0 && ant_r==1))
					begin
						state_next=turn_right;
						move=turn_right;
					end
				else 
					begin
					state_next=turn_left;
					move=turn_left;
					end		
			end
		endcase
		end


// challenge mode: deploy pheromone immediate after
// no pheromone being detected
`ifdef CHALLENGE
  always @* begin
    if (ph_detected == 0) ph_drop = 2'b1;
    else ph_drop = 0;
  end
`endif

  task moving_forward;
    begin
      @(posedge clk) move = forward;
    end
  endtask

  task turning_left;
    begin
      @(posedge clk) move = turn_left;
    end
  endtask

  task turning_right;
    begin
      @(posedge clk) move = turn_right;
    end
  endtask

  task standing_still;
    begin
      @(posedge clk) move = halt;
    end
  endtask
endmodule
