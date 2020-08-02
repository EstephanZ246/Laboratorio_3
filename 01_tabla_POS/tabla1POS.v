module  tabla1POS();

  reg A,B,C;
  wire na,nb,nc,s1,s2,s3,out;

  not nota(na,A);
  not notb(nb,B);
  not notc(nc,C);

  or or1(s1,A,B,nc);
  or or2(s2,A,nb,nc);
  or or3(s3,na,nb,C);
  and and1(out,s1,s2,s3);

initial begin
  $display("A B C Y");
  $display("-------");
  $monitor("%b %b %b %b",A,B,C,out);

  A=0; B=0; C=0;
  #1 A=0; B=0; C=1;
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
  $dumpfile("tabla1POS_tb.vcd");
  $dumpvars(0, tabla1POS);
end

endmodule
