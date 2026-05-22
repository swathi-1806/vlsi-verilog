module tb;

  integer arr[10];
  integer i, fh;
  integer value;

  initial begin

    fh = $fopen("abc.txt", "w");

    for (i = 0; i < 10; i = i + 1) begin
      arr[i] = $urandom_range(100,200);
      $fdisplay(fh, "arr[%0d] = %0d", i, arr[i]);
    end

    $fclose(fh);

  // Read file contents
    fh = $fopen("abc.txt", "r");

    while (!$feof(fh)) begin
      value = $fgetc(fh);
      $write("%c", value);
    end

    $fclose(fh);

  end

endmodule
