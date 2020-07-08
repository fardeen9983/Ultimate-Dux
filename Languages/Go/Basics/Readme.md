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
