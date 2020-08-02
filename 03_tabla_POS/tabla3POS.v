module tabla3POS();

  reg A,B,C,D;
  wire wa,wb,wc,wd,out,s1,s2,s3,s4,s5,s6,s7,s8,s9 ;

  not n1(wa,A);
  not n2(wb,B);
  not n3(wc,C);
  not n4(wd,D);

  or or1(s1,A,wb,C,D);
  or or2(s2,A,wb,C,wd);
  or or3(s3,A,wb,wb,D);
  or or4(s4,A,wb,wc,wd);
  or or5(s5,wa,B,C,wd);
  or or6(s6,wa,B,wc,wd);
  or or7(s7,wa,wb,C,D);
  or or8(s8,wa,wb,C,wd);
  or or9(s9,wa,wb,wc,wd);

  and and1(out,s1,s2,s3,s4,s5,s7,s8,s9);

  initial begin
    $display("A B C D Y");
    $monitor("%b %b %b %b %b", A,B,C,D,out);

    A=0; B=0; C=0; D=0;
    #1                D=1;
    #1           C=1; D=0;
    #1                D=1;
    #1      B=1; C=0; D=0;
    #1                D=1;
    #1           C=1; D=0;
    #1                D=1;
    #1 A=1; B=0; C=0; D=0;
    #1                D=1;
    #1           C=1; D=0;
    #1                D=1;
    #1      B=1; C=0; D=0;
    #1                D=1;
    #1           C=1; D=0;
    #1                D=1;

    #1 $finish;
  end

initial
  begin
    $dumpfile("tabla3POS_tb.vcd");
    $dumpvars(0,tabla3POS);
  end
endmodule
