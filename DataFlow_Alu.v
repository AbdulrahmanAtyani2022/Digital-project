module DataFlow_Alu (input [3:0] a,b , input cin, input [2:0] op ,output [3:0] result1,output cout
,output c_out,output over_flow,output over_flow1);// This code represents alu in a Data flow way

wire [3:0] w_or,w_and,w_add,w_sub ;

Bitwise_or (a,b,w_or);
Bitwise_and (a,b,w_and);
addion (a , b , cin, cout ,w_add,over_flow);
Subtraction (a , b ,cin, c_out ,w_sub,over_flow1);

assign result1=(op==3'b000)?w_add:
(op==3'b001)?w_sub:
(op==3'b010)?w_and:
(op==3'b011)?w_or:3'bz;
              
endmodule              
 
 