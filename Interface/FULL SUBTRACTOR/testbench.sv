`include "interface.sv"
module tbench_top;
  intf i_intf();
  subtractor DIT(
    .x(i_intf.x),
    .y(i_intf.y),
    .z(i_intf.z),
    .borrow(i_intf.borrow),
    .diff(i_intf.diff));  
  initial begin
    i_intf.x=0;
    i_intf.y=1;
    i_intf.z=0;
    $display("Value of x=%0d,y=%0d,z=%0d",i_intf.x,i_intf.y,i_intf.z);
    #5;
    $display("Difference:%0d",i_intf.diff);
    $display("Borrow:%0d",i_intf.borrow);
  end
endmodule
