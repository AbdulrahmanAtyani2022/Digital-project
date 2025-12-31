module Subtraction (input [3:0] a,b , input cin, output c_out ,output [3:0] result,output over_flow);
//This code demonstrates the process of subtracting the two inputs a and ~b, which contain four bits each, as this is done through four full adder and cin=1
wire [2:0] wa;

full_Adder(a[0], ~b[0], cin , wa[0] , result[0]);
full_Adder( a[1], ~b[1], wa[0], wa[1], result[1]);
full_Adder( a[2], ~b[2], wa[1], wa[2], result[2]);
full_Adder(a[3], ~b[3],wa[2], c_out, result[3]);
xor(over_flow,wa[2],c_out);

endmodule 