module hellowordfpga(

input wire W,
input wire X,
input wire Y,
input wire Z,

output wire a,
output wire b,
output wire c,
output wire d,
output wire e,
output wire f,
output wire g
);

reg A,B,C,D;

always @(*)
begin
//decrementing dcoder
D = ((!W)&(!X)&(!Y)&(!Z))|(W&(!X)&(!Y)&Z);
C = ((!W)&X&Y&(!Z))|(W&X&Y&(!Z))|(W&(!X)&Y&(!Z))|((!W)&(!X)&(!Y)&Z);
B = ((!W)&X&(!Y)&(!Z))|(W&X&Y&(!Z))|((!W)&(!X)&Y&(!Z));
A = ((!W)&(!X)&(!Y)&(!Z))|((!W)&(X)&(!Y)&(!Z))|((!W)&(!X)&Y&(!Z))|((!W)&X&Y&(!Z))|((!W)&(!X)&(!Y)&(Z));
//
a=(!D&!C&!B&A)|(!D&C&!B&!A);
b=(!D&C&!B&A)|(!D&C&B&!A);
c=(!D&!C&B&!A);
d=(!D&!C&!B&A)|(!D&C&!B&!A)|(!D&C&B&A);
e=(!D&!C&!B&A)|(!D&!C&B&A)|(!D&C&!B&!A)|(!D&C&!B&A)|(!D&C&B&A)|(D&!C&!B&A);
f=(!D&!C&!B&A)|(!D&!C&B&!A)|(!D&!C&B&A)|(!D&C&B&A);
g=(!D&!C&!B&!A)|(!D&!C&!B&A)|(!D&C&B&A);


end
endmodule
