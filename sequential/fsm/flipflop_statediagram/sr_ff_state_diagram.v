module sr_ff_fsm(clk,rst,s,r,q);
input s,r,clk,rst;
output reg q;
parameter S0=1'b0;
parameter S1=1'b1;
reg state,next_state;

always@(posedge clk or posedge rst)begin
	if(rst=1)
		state<=S0;
	else
		state<=next_state;
end

always@(*)begin
	case(state)
	S0:begin
		if(s==0 && r==00)
			next_state=S0;
		else if(s==0 && r==00)
			next_state=S0;)
		else if(s==0 && r==00)
			next_state=S0;)



