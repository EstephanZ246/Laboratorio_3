module tabla2POS();

  reg A,B,C;
  wire wa,wb,wc,s1,s2,s3,s4,s5,out;

  not n1(wa,A);
  not n2(wb,B);
  not n3(wc,C);

  or or1(s1,A,B,C);
  or or2(s2,A,wa,C);
  or or3(s3,A,wb,wc);
  or or4(s4,wa,B,C);
  or or5(s5,wa,B,wc);

  and and1(out,s1,s2,s3,s4,s5);

  initial begin
    $display("A B C Y");
    $monitor("%b %b %b %b", A, B, C, out);

    A=0; B=0; C=0;
    #1           C=1;
    #1      B=1; C=0;
    #1           C=1;
    #1 A=1; B=0; C=0;
    #1           C=1;
    #1      B=1; C=0;
    #1           C=1;
    #1 $finish;
  end

initial
  begin
    $dumpfile("tabla2POS_tb.vcd");
    $dumpvars(0,tabla2POS);
  end
endmodule
