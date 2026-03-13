module tb;
  reg[7:0]p,q;
  reg[7:0]r;
  function reg[7:0]sum(input reg[7:0]a,b);
    begin
    sum=a+b;
    end
  endfunction

  initial begin
    repeat(5)begin
      p=$urandom_range(10,15);
      q=$urandom_range(50,20);
      r=sum(p,q);
      #10;
      $display("p=%0d  q=%0d  r=%0d",p,q,r);
      $display("---------------------");
    end
  end
endmodule
/*
# p=11  q=30  r=41
# ---------------------
# p=12  q=43  r=55
# ---------------------
# p=12  q=37  r=49
# ---------------------
# p=14  q=49  r=63
# ---------------------
# p=12  q=23  r=35
# ---------------------
*/
