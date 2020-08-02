module tabla4SOP();

  reg A,B,C,D;
  wire wa,wb,wc,wd,s1,s2,s3,s4,s5,s6,s7,out ;

  not n1(wa,A);
  not n2(wb,B);
  not n3(wc,C);
  not n4(wd,D);

  and and1(s1,wa,wb,wc,wd);
  and and2(s2,wa,wb,C,wd);
  and and3(s3,wa,wb,C,D);
  and and4(s4,wa,B,C,wd);
  and and5(s5,wa,B,C,D);
  and and6(s6,A,wb,wc,wd);
  and and7(s7,A,wb,C,wd);

  or or1(out,s1,s2,s3,s4,s5,s6,s7);

  initial begin
    $display("A B C D Y");
    $monitor("%b %b %b %b %b", A,B,C,D,out);

    A=0; B=0; C=0; D=0;
    #1                 D=1;
    #1            C=1; D=0;
    #1  A=0;           D=1;
    #1       B=1; C=0; D=0;
    #1                 D=1;
    #1            C=1; D=0;
    #1                 D=1;
    #1  A=1; B=0; C=0; D=0;
    #1                 D=1;
    #1            C=1; D=0;
    #1                 D=1;
    #1       B=1; C=0; D=0;
    #1                 D=1;
    #1            C=1; D=0;
    #1                 D=1;

    #1 $finish;
  end

initial
  begin
    $dumpfile("tabla4SOP_tb.vcd");
    $dumpvars(0, tabla4SOP );
  end
endmodule
