module Bitwise_and ( input [3:0] a,b,output [3:0] Out_and );
//This code represents the and operation for inputs a and b
and(Out_and[0],a[0],b[0]);
and(Out_and[1],a[1],b[1]);
and(Out_and[2],a[2],b[2]);
and(Out_and[3],a[3],b[3]);

endmodule