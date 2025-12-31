module  Behavioral_ALU (input [3:0] a,b , input cin, input [2:0] F ,output reg [3:0] result,output reg  cout,output reg  over_flow);
wire [3:0] w_or,w_and,w_add,w_sub ;// This code represents alu in a behavioral way
wire overflow_add,overflow_sub,c_add,c_sub;

Bitwise_or (a,b,w_or);
Bitwise_and (a,b,w_and);
addion (a , b , cin, c_add ,w_add,overflow_add);
Subtraction (a , b ,cin, c_sub ,w_sub,overflow_sub);


always @(*) begin

if (F==3'b000)result=w_add;
else if(F==3'b001)result=w_sub;
else if(F==3'b010)result=w_and;
else if(F==3'b011)result=w_or;
else result=3'bz;

if(F==3'b000)cout=c_add;
else if(F==3'b001)cout=c_sub;
else cout=1'bz;

if(F==3'b000)over_flow=overflow_add;
else if(F==3'b001)over_flow=overflow_sub;
else over_flow=1'bz;


end
endmodule 