module tb;
  reg[14*8:0]str;
  initial begin
    str="good afternoon";//it has 14 charcaters and each charctr will take 8 bits so reg[14*8:0]
    $display("string_output=%s=0s",str);
  end
endmodule
  
  /*
output:
# string_output=good afternoon
  */
