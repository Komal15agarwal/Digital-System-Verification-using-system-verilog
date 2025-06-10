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
#### Constructor
- It is done with a function new().
- It is called class constructor.
- It is function with no return type.This LHS of assigenment determine the return type.
- If a class doesnot provide any user defined new method the constructor is called implicitly.
#### Inheritance
- Inheritance is an OOP concept that allows the user to create classes that are built upon exisiting class.
- The new class will be with new properties and method along with having access to all the propeties and methods of the original class.
##### In
#### Polymorphism
- System verilog provides  an ability to an object to take on many forms.
- Method handle of super class can be made to refer to the subclass method,this allows polymorphism or different forms of the same method.
- For polymorphism use virtual keyboard to the befor the method name iniside the parent class.
- The method name must be same in parent class and the child class.
#### Virtual Keyboard
- <b>Pure virtual Keyboard:</b> A virtual method in an abstract class may be declared as a proptotype without providing an implementation.An extened subclass may provide an implementation by overriding the pure virtual method with having a method body.
#### Abstract Class
- An abstract class sets out the prototype for the sub classes.
- Abstract class can be created by using virtual keyboard.
- It xan only be derivied can not be instantiated.
- From this abstarct base class,a number of useful subclasses may be derived.
- Each of these subclass look vey similar, all needing the same set of the methods, nut they could vary significantly in the inner details.
#### Shallow Copy
The shallow copy is used to copy
- Class properties like integers, strings, instance handle, etc
- Nested objects are not copied, only instance handles are copied which means any changes are done in ‘nested copied object’ will also reflect in the ‘nested original object’ or vice-versa.
The new() method is used for copying.
#### Deep Copy
The deep copy is the same as shallow copy except nested created objects are also copied by writing a custom method. Unlike shallow copy, full or deep copy performs a complete copy of an object.
# Lab Exercise
### LAB 1: Introduction to function,Task and System verilog threads
- We learnt about the function,task and fork join.
- The process of passing the arguement by value and reference.
- Performed fews codes of this
### LAB 2: OOPS in system verilog
- SystemVerilog, though primarily a hardware description and verification language, supports Object-Oriented Programming (OOP) to enhance testbench reusability, modularity, and scalability, especially for Verification using UVM (Universal Verification Methodology).
### LAB 3: Inheritance and polymorphism
### LAB 4: Virtual keyboard,abstract class,class assignment:- handle copy and shallow copy
