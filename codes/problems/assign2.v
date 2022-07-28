module Assignment2(

input wire D,
input wire C,
input wire B,
input wire A,

output reg T

);
reg P,Q,R,S;
//(C)||(!C&&!D);
not (P,C);
not (Q,D);
and (R,C);
and (S,P,Q);
or (T,R,S);
endmodule

