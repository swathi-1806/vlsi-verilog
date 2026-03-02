module tb;
  integer i, j;
  integer n = 5;

  initial begin

    // Top half
    for(i = 1; i <= n; i = i + 1) begin

      // Left spaces
      for(j = 1; j <= n-i; j = j + 1)
        $write(" ");

      // First star
      $write("*");

      // Middle hollow space + second star
      if(i > 1) begin
        for(j = 1; j <= 2*i-3; j = j + 1)
          $write(" ");
        $write("*");
      end

      $write("\n");
    end

    // Bottom half
    for(i = 1; i < n; i = i + 1) begin

      // Left spaces
      for(j = 1; j <= i; j = j + 1)
        $write(" ");

      // First star
      $write("*");

      // Middle hollow space + second star
      if(i < n-1) begin
        for(j = 1; j <= 2*(n-i)-3; j = j + 1)
          $write(" ");
        $write("*");
      end

      $write("\n");
    end

  end
endmodule
