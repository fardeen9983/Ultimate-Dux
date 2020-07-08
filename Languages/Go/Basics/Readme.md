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

## Components

### 1. Comments
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