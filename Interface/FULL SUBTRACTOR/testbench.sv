`include "interface.sv"
module tbench_top;
  integer i;
  intf i_intf();
  subtractor DIT(
    .x(i_intf.x),
    .y(i_intf.y),
    .z(i_intf.z),
    .borrow(i_intf.borrow),
    .diff(i_intf.diff));  
  initial begin
    i_intf.x=0;
    i_intf.y=0;
    i_intf.z=0;
    $monitor("Value of x=%0b, y=%0b, z=%0b, Difference:%0b, Borrow:%0b",i_intf.x,i_intf.y,i_intf.z,i_intf.diff,i_intf.borrow);
    for(i=0;i<8;i++)
      begin
        #5;
        i_intf.x=$random;
        i_intf.y=$random;
        i_intf.z=$random;
      end    
  end
endmodule
