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
* Variables are data stored in the memory
* Must have a **name** and  **type**
* All variables must have declarations
* Declared variables cant be left unused or they will raise compilation errors


### Naming Rules
* Names also called identifiers are used to reference all the variables and functions
* They are case sensitive
* Must start with a letter. Digits not allowed
* Followed by first character we can have any number of letters, digits, and only special character allowed - underscore
* Keywords like `if`, `switch`, etc cannot be used


### Types
ALl variables are types which are defines the value the variable may take and the operations that can be performed on it

**Primitive Types in Go :**
* Integers : (int, int8/byte, int16, int32/rune, int64)
* Unsigned integers : (unit, uint8, uint16, uint32, uint64, uintpr)
* Floating point numbers : (float32, float64)
* Complex Number (a+ib) : (complex64, complex128) -> complex(a,b) 
* Boolean : true, false
* Strings : "asdfasdf"

### Type Declaration
* It allows or defining an alias (alternate name) for a type
* May improve clarity
* Example
    ```go
    type alias type-name

    type Celsius float64
    type IDnum int
    ```
* Can declare variables using the type alias
    ```go
    var temp Celsius
    var pid **IDnum**
    ```

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
* Multiple declaration
    
    We can declare multiple variables in the same line using a single `var` keyword
    ```go
    var a,b int
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

### Type conversion
Most of the binary operations in Go need both the operands to be of the same type. Even between the various primitive type families like that of integers, different sizes mean different types. For example int32 is not equal to int16 despite both been integers but because of size difference
```go
var x int32 = 10
var y int16 = 8
x = y // not possible

// Use type conversion of smaller type to big
x = int32(y)
```
As you can see from the example type casting is achieved by using `T()` method. Where T is the target type and we pass the variable we want to convert

> Keep in mind that not all conversions are possible


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

### Constant Blocks

Just like import blocks where are all packages to be imported are placed in a single block we can also define a constant block that holds all the constant definitions at the package level
```go
const (
    one = 1
    two = "two"
)

func main(){
    fmt.Println(one,two)
}
```

### iota

Instead of assigning direct values to these constant declarations we can use the keyword **iota** which basically assigns a series of constant values as it is used. It starts from 0, goes on to 1,2,3, etc.
```go
const (
    one = iota // 0
    two = iota // 1
)
```
We can also use operators on iota turning them into **constant expressions**

```go
const (
    one = iota + 10 // 10
    two = 3 << iota // 6
)
```

If we are following a pattern of constant expression like `iota + 6` then we dont need to repeat the assignment for all constants in the block. Once written for the first constant the expression will be reused for all the following constants

```go
const (
    one = iota + 5 // 0 + 5
    two  // 1 + 5
    three // 2 + 5
)
```

The scope of an `iota` is limited to constant block its used in. It is reset to 0 on other constant blocks

```go
const (
    one = iota // 0
    two        // 1
    three      // 2
)

const (
    four = iota // 0
    five        // 1
)
```
----

## Collections

These are data types that are hold more than one type/collection of data types. 

### Array
An array is a fixed size collection of similar data types. So we can have an array of booleans, integers,etc. But no mixing is allowed

#### Declaration
Size of the array is defined in `[ ]` followed by the data type of element it holds
```go
var array [i]int
```
All elements are given indexes, starting from 0 to n-1, where n is the size of the array/

Each element in the array is a simple Go variable so assigning it a value is of the similar fashion but will be accessed using the array name and the member index
```go
array[0] = 24
array[1] = 2
array[2] = 4

fmt.Println(array)
// Output : [24,2,4]

fmt.Println(array[1])
// Output : 2
```


The shorthand (implicit) initialization of array is as follows:
```go
array := [4]int{1,2,3,4}
```


### Slices

These are basically dynamically sized arrays/ Meaning we can change it's size as needed. Since it is based on Array we can create a slice from an existing array
```go
array := [3]int{1,2,3}
slice := array[:]

fmt.Println(array, slice)
// Output : [1,2,3] [1,2,3]
```
So in the above example we are using the `[]` index operator with the slicing operator `:` to slice the given array (collection in general) from a beginning to end index (if not give it will take the extreme index values, hence the same values)

Note that any changes made to either of the collections will be reflected on both as slice will point to the same memory address held by the array

#### Declaring
We don't always need an existing array of fixed size to create a slice from. We can do so without one as well.
```go
slice := []int{1,2,3,4,5}
```
It is very similar to shorthand array declaration but without any notation of fixed size. What happens here is that the compiler will automatically create a 3 element array and populate it with this value and make the slice point to that

#### Adding/Removing to the slides
Since slices don't have fixed size we can add or remove elements easily

* Adding an element
  
    We use the method `append` for this. It takes the existing slice object, and a list of new values to be added
    ```go
    slice = append(slice,6)
    slice = append(slice,7,8,9)
    ```
    It returns the new slice with the added values

## Scopes
All variables, pointers included, have scope - which means the code sections where it can be accessed. It defines how a variable reference is resolved in code. The variable scope is achieved using blocks

### Blocks
* Blocks sequence of declarations and statements nesting within matching curly brackets `{ }`
* Blocks can be nested and can be maintained in hierarchial fashion
* Types 
  * **Explicit** - where we ourselves define a block by placing code in `{ }`. Example function definitions
  * **Implicit** - Blocks that are implicitly defined without the `{ }` . For example : 
    * The Universe block - all Go source
    * Package Block - all sources in a package
    * File Block - all source in file
    * `if`, `for`, `switch` - all code inside the statement
    * Clauses in `switch` and `select` - individual clauses get a block

### Lexical Scoping
* Go is a lexically scoped language using blocks
* This defines how variable references are resolved
> Scoping rule: "bᵢ >= bⱼ if bⱼ is defined inside bᵢ"

Hence a variable is accessible from bⱼ if
1. Variable is declared inside bᵢ and 
2. bᵢ >= bⱼ


## Strings & Unicode
The ASCII standard allows 8 bit character representation from the English language. But is severely limited in representing the world of characters and emojis, etc from all around the globe. 

To tackle this scenario Unicode standard was introduced, the default being UTF-32 standard, allowing use of 32 bits to represent a single character from any dialect; the first 8 bits are reserved for ASCII characters

The 8bit character representation in Unicode are called `code point` and in GO we call them `Runes`. SO effectively a string can be broken down into a sequence of 8-bit runes

### Unicode Package
* Runes in GO are divided into many categories
* The unicode package provides us a set of functions w can use to evaluate the properties of different runes of our string
* Example
  * IsDigit(r rune)
  * IsSpace(r rune)
  * IsLetter(r rune)
  * IsLower(r rune)
  * IsPunct(r rune)
* Some of these functions perform conversions between runes
  * ToUpper(r rune)
  * ToLower(r rune)

### String package
Instead of focusing and applying operations on individual runes, the string package's method aim to manipulate entire UTF-8 encoded strings

Search functions
* **Compare(a,b)** - returns an integer comparing two strings. 0 if a == b, -1 if a < b and +1 if a > b 
* **Contains(s, substr)** - returns true if substr is part of s string
* **HasPrefix(s,prefix)** - returns true if the string s begins with the prefix
* **Index(s,substr)** - returns the index of the first occurrence of substr in string s

String manipulation - returns modified string
* **Replace(s, old, new, n)** - returns a copy of s with first n instances of old replaced with new
* **ToLower(s), ToUpper(s)** - return the string with modified sentence case
* **TrimSpace(s)** - returns a new string with all leading and trailing white space removed

### Strconv package
This package provides functionality for conversions to and from string to basic data types
* **Atoi(s)**  - converts string s to int
* **Itoa(s)** - converts int (base 10) to string 
* **FormatFloat(f. fmt, prec, bitSize)** - converts floating point number to size
* **ParseFloat(s, bitSize)** - Converts a string to a floating point number
 