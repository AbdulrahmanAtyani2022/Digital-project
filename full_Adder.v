module full_Adder(input a, b, c, output cout, sum);
//This code shows the internal structure of the full adder, which has 3 inputs and gives two outputs
wire w1, w2, w3;
and (w1, a, b);
xor (w2, a, b);
and (w3, w2, c);
xor (sum, w2, c);
or (cout, w1, w3);
endmodule 