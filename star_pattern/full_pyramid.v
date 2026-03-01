module tb;

integer i, j, k;
integer n;

initial begin
    n = 5;   // number of rows

    for(i = 1; i <= n; i = i + 1) begin
        
        // Print spaces
        for(j = 1; j <= n - i; j = j + 1) begin
            $write("  ");   // two spaces for better shape
        end
        
        // Print stars
        for(k = 1; k <= (2*i - 1); k = k + 1) begin
            $write("* ");
        end
        
        // Move to next line
        $write("\n");
        
    end
end

endmodule


/*
         * 
       * * * 
     * * * * * 
   * * * * * * * 
 * * * * * * * * * 
 
*/
