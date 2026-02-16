//
//module star_pattern;
//integer i;
//reg[40*8:1] stars;
//	initial begin
//		stars="";
//		for (i=1;i<=5;i=i+1)begin
//			stars={stars,"*"};
//			$display("%0s",stars);
//		end
//	end
//endmodule 

module star_pattern;
integer i,j;
initial begin
	for(i=1;i<=5;i=i+1)begin
		for (j=1;j<=i;j=j+1)
		$write("*");
		$write("\n");//$display("");=move to the next line
	end
end
endmodule
/*
output
*
**
***
****
*****

*/



