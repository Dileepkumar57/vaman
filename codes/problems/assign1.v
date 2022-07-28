module Assignment1(

input wire D,
input wire C,
input wire B,
input wire A,
output reg T
);
reg P,Q,R,S,E,F;
//(A&&B&&!C)||(!B&&C)||(!C&&D);
not (E,C);
not (F,B);
and(P,A,B,E);
and(Q,F,C);
and(R,E,D);
or(S,P,Q);
or (T,S,R);

endmodule

