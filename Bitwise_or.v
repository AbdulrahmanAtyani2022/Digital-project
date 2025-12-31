module Bitwise_or ( input [3:0] a,b,output [3:0] Out);
// This code represents the or operation for inputs a and b
or(Out[0],a[0],b[0]);
or(Out[1],a[1],b[1]);
or(Out[2],a[2],b[2]);
or(Out[3],a[3],b[3]);

endmodule