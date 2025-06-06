# Digital-System-Verification-using-system-verilog
### Function
- Function should have atleast one input arguement.<br>
- A function cananot have an input or output declaration.<br>
- Function must conatin a statement that assign the return value to the implicit function name register.<br>
- A function cannote have any trrigers.<br>
- A function cannot have any blocking assignemnet or force-release or assign, de-assign.<br>
- A function cannot contain any controlled statement such as #, @, posedge, negedge, etc.<br>
### Task
- Task is defined in the module in which they are  used.<br>
- Task have no of input and output.<br>
- The variable declare within the task are local to that task.<br>
- Task cannot call another task or function.<br>
- Task can be used for modelling both combinational and sequential logic.<br>
- When local vriable are used the output is assigned only at the end of the task execution.<br>
### Fork Join
SystemVerilog provides support for parallel or concurrent threads through fork join construct. Multiple procedural blocks can be spawned off at the same time using fork and join. There are variations to fork join that allow the main thread to continue executing rest of the statements based on when child threads finish.
#### Fork Join Types
- <b>fork join-any:</b>
