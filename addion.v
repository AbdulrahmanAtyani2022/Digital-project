module addion (input [3:0] a,b , input cin, output c_out ,output [3:0] sum,output over_flow);
//This code demonstrates the process of adding the two inputs a and b, which contain four bits each, as this is done through four full adder and cin=0
wire [2:0] w;

full_Adder(a[0], b[0], cin , w[0] , sum[0]);
full_Adder( a[1], b[1], w[0], w[1], sum [1]);
full_Adder( a[2], b[2], w[1], w[2], sum[2]);
full_Adder(a[3], b[3],w[2], c_out, sum[3]);
xor (over_flow,w[2],c_out);

endmodule 