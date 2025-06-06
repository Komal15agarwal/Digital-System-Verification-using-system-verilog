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
- <b>fork join-any:</b> A fork and join_any will allow the main thread to resume execution of further statements that lie after the fork, if any one of the child threads complete.
- <b> fork join-none:</b> A fork and join_none will allow the main thread to resume execution of further statements that lie after the fork regardless of whether the forked threads finish.
- <b> disable fork join: </b> All active threads that have been kicked off from a fork join block can be killed by calling disable fork.
### OOPS IN SYSTEM VERILOG
#### Class
- class is a user-defined datatype, an OOP construct, that can be used to encapsulate data (property) and tasks/functions (methods) which operate on the data.
- The properties can be of any datatype in system verilog and can also be handle to another class.
- this keyword is used to refer to the current class. Normally used within a class to refer to its own properties/methods.
- display () is a function, and rightly so, because displaying values does not consume simulation time.
# Lab Exercise
