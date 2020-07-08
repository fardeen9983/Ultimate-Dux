## Basics of a Go Program

* Every Go app starts with a package much like in Java. 
    ```go
    package basics
    ```
    By default every go executable/program entry point has the package set to `main`

* Imports in Go use the `import` keyword which acts like a function that takes comma separated names of packages/files in double quotes.
    ```go
    import ("fmt")
    ```
* Again like Java the main entry point of all GO programs is a `main` function where the functions are created using the `func` keyword with optional return types
    ```go
    func main(){
        fmt.Println("Hello World")
    }
    ```
    We can use the methods defined in the imported package `fmt` , like the `Println` method that takes an argument and the prints the `string` equivalent to the console output

----
### **Note**

1. Every package that is imported but not used in the program will through a compile time error

2. The Go compiler auto injects semicolons for us. 
3. In case of function if we move the signature and the opening braces like this
    ```go
    func main() 
    {
        fmt.Println("Hello World") // Now this wont work we will have to place a semicolon manually
    }
    ```
    The compiler injects a semicolon right after main(). This automatically closes the main function and without a body for main function the program wont run

    Right way to run
    ```go
    func main(){
        ...
        ...
    }
    ```
----



## Comments
The purpose of comments are to provide description for the code written in a program so that it's purpose and intent can be readily understood from the developer's explanation from the comments.

Comments may include actual go code but they are skipped by the compiler and not actually executed

**Types**
* Single line 
  
    The symbol `//` is used to start a single line comment. Anything after this in the same line will be part of comment. Everything else which is below or above is not included
    ```go
    // This is an example of comment
    this is not
    ```

* Multi Line comments
    
    As the name suggests these comments span through more than one lines. Theses comment blocks are enclosed in `/* ....  */` symbols.

---
## Variables

### Primitives
These are the fundamental data types analogous to other languages like integer, floating point (Decimal) values, strings, boolean values, etc

Primitive Types in Go
* Integers : (int, int8/byte, int16, int32/rune, int64)
* Unsigned integers : (unit, uint8, uint16, uint32, uint64, uintpr)
* Floating point numbers : (float32, float64)
* Complex Number (a+ib) : (complex64, complex128) -> complex(a,b) 
* Boolean : true, false
* Strings : "asdfasdf"

### Declaration

* A verbose method

    ```go
    var i int
    i = 40
    fmt.Println(i)
    ```
    The var keyword is used for variable declaration followed by its name and finally it's type. We can assign the needed value to it. But this is verbose method

    We can use a shorthand to combine declaration and initialization
    ```go
    var f float32 = 20.0
    ```
 * Implicit Inference

    Go includes type inference from initialized value
    ```go
    name := "My Name is Khan"
    ```
* Multiple Assignment
    
    Just like in Python we can use comma separated values assigned to number of variables
    ```go
    c := complex(3,5)
    a,b := real(c), imag(c)
    ```
---

## Pointers
The primitive variables are also known as value types as they hold certain value of specific type. Pointers on the other hand hold the address of such values stored in the memory

### Declaration
The operator `*` is used with a data type to define a pointer. It is also called the referencing/dereferencing operator
```go
var name *string

fmt.Println(name)
// output <nil>
```
Uninitialized pointers return the **nil** data type which is associated with empty pointer - a pointer that doesn't point to a memory location (ghost terminology)

Pointers in Go are stripped down for simplicity and as a result some concepts like pointer arithmetics are not allowed but this also removes some backdrops

### Initialization

Pointers cannot hold primitive value types. They as described hold the memory locations of such value types.
```go
var name *string

// This will lead to error
name = "Robert"

// This is the correct method. But will still lead to error as pointer is not pointing to a valid location in memory yet
*name = "Robert"

// The correct method
name = new(string)
*name = "Robert"
```

* Remember the actual value that a point holds is a memory location so no other type of value can be accepted. But by using the dereferencing  operator we can modify/access the value stored at the memory location held by the pointer.

* But before this can happen the pointer should be initialized, i.e it should point to a valid memory location. 

* For that we use the `new` operator. It dynamically allocates memory to hold the value type passed to it and now the pointer is pointing to this memory location

Another method of initialization - point to existing variable using the addressOf operator `&` to get the target variable's address in memory
```go
// Simple variable
name := "Robert"

// A pointer pointing to name variable
ptr := &name
```
* A point to remember is that if the variable's value changes the it will be reflected when we access it using the pointer. But the said address never changes actually
* Also making any changes to value stored at the address pointed by the pointer will also reflect onto the variable which has that address


### Using a pointer value
Again at the time of printing the actual value we need to use dereferencing first
```go
// Will print the memory address it hold. eg 0x40c124
fmt.Println(name)

// WIll print the actual value stored at the said memory address
fmt.Println(*name)
```

----

## Constants
Some variables need to have a fixed value that cant be changed after initialization. These are called as constants and in place of the keyword `var` we use `const` to declare constants variables

* Do note that constant variables are initialized on declaration itself. 
* Once assigned the value of the constant cannot be changed anymore
* Also the value assigned to the constant should be determinable at compile time. 
* So we cant assign function return value to it at times if the return value cant be acquired during compile time

```go
// A constant variable
const G = 6.674

// Cant change value. Will raise compile time error
G = 1.3
```