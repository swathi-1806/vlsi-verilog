module tb;
  integer i, j;
  integer n = 5;

  initial begin

    // Top half
    for(i = 1; i <= n; i = i + 1) begin
      
      // Spaces
      for(j = 1; j <= n-i; j = j + 1)
        $write(" ");
      
      // Stars
      for(j = 1; j <= 2*i-1; j = j + 1)
        $write("*");
      
      $write("\n");
    end

    // Bottom half
    for(i = 1; i < n; i = i + 1) begin
      
      // Spaces
      for(j = 1; j <= i; j = j + 1)
        $write(" ");
      
      // Stars
      for(j = 1; j <= 2*(n-i)-1; j = j + 1)
        $write("*");
      
      $write("\n");
    end

  end
endmodule
