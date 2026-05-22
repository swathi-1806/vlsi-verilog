module tb;

  integer arr[10];
  integer i;
  integer fh;
  integer idx, value;

  initial begin

    // WRITE OPERATION
    fh = $fopen("abc.txt", "w");

    for (i = 0; i < 10; i = i + 1) begin

      arr[i] = $urandom_range(100,200);

      $fdisplay(fh, "arr[%0d] = %0d", i, arr[i]);

    end

    $fclose(fh);

    // READ OPERATION
    fh = $fopen("abc.txt", "r");

    while (!$feof(fh)) begin

      $fscanf(fh, "arr[%0d] = %0d", idx, value);

      $display("idx = %0d value = %0d", idx, value);

    end

    $fclose(fh);

  end

endmodule

/*
output:
# idx = 0 value = 143
# idx = 1 value = 176
# idx = 2 value = 137
# idx = 3 value = 114
# idx = 4 value = 187
# idx = 5 value = 198
# idx = 6 value = 191
# idx = 7 value = 133
# idx = 8 value = 191
# idx = 9 value = 168
# idx = 9 value = 168
*/
