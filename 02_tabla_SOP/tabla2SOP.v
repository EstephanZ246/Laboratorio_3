module tabla2SOP();

  reg A,B,C;
  wire wa,wb,wc,s1,s2,s3,out;

  not n1(wa,A);
  not n2(wb,B);
  not n3(wc,C);

  and  a1(s1,wa,wb,C);
  and  a2(s2,A,B,wc);
  and  a3(s3,A,B,C);
  or   or1(out,s1,s2,s3);

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
    $dumpfile("tabla2SOP_tb.vcd");
    $dumpvars(0, tabla2SOP);
  end
endmodule
