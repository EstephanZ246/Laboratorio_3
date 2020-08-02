module tabla3SOP();

  reg A,B,C,D;
  wire wa,wb,wc,s1,s2,s3,s4,s5,s6,s7,out ;

  not n1(wa,A);
  not n2(wb,B);
  not n3(wc,C);
  not n4(wd,D);

  and and1(s1,wa,wb,wc,wd);
  and and1(s2,wa,wb,wc,D);
  and and1(s3,wa,wb,C,wd);
  and and1(s4,wa,wb,C,D);
  and and1(s5,A,wb,wc,wd);
  and and1(s6,A,wb,C,wd);
  and and1(s7,A,B,C,wd);

  or or1(out,s1,s2,s3,s4,s5,s6,s7);

  initial begin
    $display("A B C D Y");
    $monitor("%b %b %b %b %b", A, B, C, D, out);

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
    $dumpfile("tabla3SOP_tb.vcd");
    $dumpvars(0, tabla3SOP);
  end
endmodule
