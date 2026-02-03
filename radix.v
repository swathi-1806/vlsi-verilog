//-->implemantation of radix conversation
module swathi;
integer a,b,c;


initial begin
    a='b11001100;
    b='d555;
    c='h77A;
$display("A:decimal=%0D|octal=%0o|hexadecimal=%0h|binary=%0b",a,a,a,a); 
$display("B:decimal=0%D|octal=%0o|hexadecimal=%0h|binary=%0b",b,b,b,b); 
$display("C:decimal=%0D|octal=%0o|hexadecimal=%0h|binary=%0b",c,c,c,c);
end 
endmodule
/*
A:decimal=204|octal=00000000314|hexadecimal=000000cc|binary=11001100
# B:decimal=555|octal=00000001053|hexadecimal=0000022b|binary=1000101011
# C:decimal=1914|octal=00000003572|hexadecimal=0000077a|binary=11101111010
*/
