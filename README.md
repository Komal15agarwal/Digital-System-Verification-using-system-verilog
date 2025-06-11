# Digital-System-Verification-using-system-verilog
## Introduction
SystemVerilog is commonly used in the semiconductor. It is a hardware description and hardware verification language used to model, design, simulate testbench. SystemVerilog is based on Verilog and some extensions. It is standardized as IEEE 1800.

SystemVerilog provides support for gate-level, RTL, and behavioral descriptions, coverage, object-oriented, assertion, and constrained random constructs. It also includes application programming interfaces (APIs) to foreign programming languages.
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
- <b>Inheritance Terminology: </b> Parent class and Child Class
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
- Nested objects are not copied, only instance handles are copied which means any changes are done in ‘nested copied object’ will also reflect in the ‘nested original object’ or vice-versa.<br>
The new() method is used for copying.
#### Deep Copy
The deep copy is the same as shallow copy except nested created objects are also copied by writing a custom method. Unlike shallow copy, full or deep copy performs a complete copy of an object.
#### Scope Resolution
- The class scope operator :: is used to specify an identifier defined within the scope of a class.
- Classes and other scopes can have the same identifier.
- The scope resolution operator uniquely identifies a member of a particular class.
#### Extern Methods
An extern method provides a facility for class methods to define them outside of the class body.
If the method definition is lengthy (many lines of code inside a method), the extern method provides better readability and cleaner implementation of the class.
- <b>External function: </b> The definition of the function is written outside the class body.
- <b>External Task:</b> The definition of the task written outside the class body.
- Declare the method(Function/Task) with an extern keyword in the keyword in the class body. 
#### Casting
- casting means the conversion of one data type to another datatype.
- In some situation its is neccessary to convert data type is
Two type of casting:
- <b>Static casting:</b> It converts one data type to another compatible data type.As the name suggests, static casting is only applicable to fixed data types. It does not apply to the Object-Oriented programming concept.
- <b>Dynamic Casting:</b> Dynamic casting is used to cast the assigned values to the variables that might not be ordinarily valid. The $cast is the system method.
#### Data Hiding and Encapsulation
Data encapsulation is a mechanism that combines class properties and methods.
Data hiding is a mechanism to hide class members within the class. They are not accessible outside of class scope. This avoids class member modification outside the class scope and its misuse.
By default, all class members are accessible with class handles in SystemVerilog. To restrict access, access qualifiers are used.
#### Randomization
Randomization is a process of producing random values of the mentioned data type.
As SystemVerilog also deals with objects, the $random method from Verilog is not sufficient for randomizing an object.<br>
<b>Need for Randomization</b><br>
As per the increasing complexity of the design, there are high chances to have more bugs in the design when it is written for the first time. To verify DUT thoroughly, a verification engineer needs to provide many stimuli. There can be multiple cross combinations of variables in a real system. So, it is not possible practically to write directed cases to verify every possible combination. So, it is very much required to have randomization in the verification testbench.<br>
rand and randc keywords
<b>To randomize a class object, the following keywords are used while declaring class variables.</b><br>
- rand
- randc
<b>rand Keyword</b>
On randomizing an object, the rand keyword provides uniformly distributed random values.
rand bit [4:0] value;
On randomizing, any values within 5’h0 to 5’h1F will be generated with equal probability

<b>randc Keyword</b>
On randomizing an object, the randc keyword provides random value without repeating the same value unless a complete range is covered. Once all values are covered, the value will repeat. This ensures that to have all possible values without repeating the same value unless every value is covered.
randc bit [1:0] value;   // Possible values = 0, 1, 2, 3
Possible random value generated:  2, 3, 1, 0, 3, 2, 0, 1..
# Lab Exercise
### LAB 1: Introduction to function,Task and System verilog threads
- We learnt about the function,task and fork join.
- The process of passing the arguement by value and reference.
- Performed fews codes of this
### LAB 2: OOPS in system verilog
- SystemVerilog, though primarily a hardware description and verification language, supports Object-Oriented Programming (OOP) to enhance testbench reusability, modularity, and scalability, especially for Verification using UVM (Universal Verification Methodology).
### LAB 3: Inheritance and polymorphism
### LAB 4: Virtual keyboard,abstract class,class assignment:- handle copy and shallow copy
### LAB 5: Deep Copy and Extern Method
### LAB 6: Casting
