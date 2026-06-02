module tb;

  integer arr[10];
  integer i, fh;
  integer value;

  initial begin

    fh = $fopen("abc1.txt", "w");

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

/*

# arr[0] = 143
# arr[1] = 176
# arr[2] = 137
# arr[3] = 114
# arr[4] = 187
# arr[5] = 198
# arr[6] = 191
# arr[7] = 133
# arr[8] = 191
# arr[9] = 168
*/
