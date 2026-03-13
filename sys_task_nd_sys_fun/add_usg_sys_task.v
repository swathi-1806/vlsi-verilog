module tb;
  integer p,q,r,s;

  task add(input reg[7:0]p,q,output reg[7:0]r,s);
    begin
      r=p+q;
      $display("ADD:  p=%0d  q=%0d  r=%0d",p,q,r);
      s=p-q;
      $display("SUB:  p=%0d  q=%0d  s=%0d",p,q,s);
      $display("--------------------------");
    end
  endtask

  initial begin
    
      p=50;
      q=30;
      add(p,q,r,s);
      #10;
      p=100;
      q=150;
      add(p,q,r,s);
  end
endmodule
