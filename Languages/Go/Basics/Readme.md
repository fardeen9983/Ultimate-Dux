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

**Constants** are expressions whose values are known at compile time and they hold this value for as long as the program is running

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

>**iota** generates a set of related but distinct constants

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
  
## Control Structures
Control flow dictates the order in which the statements are executed in the program

Control Structures are statements which alter the control flow

#### if condition
Evaluates a condition (expression) and executes a bunch of statement (block) following it if the expression is evaluated to true, else the subsequent block is skipped

```go
if y > 10{
    fmt.Printf("y > 10")
}
```

To execute another set of statements in case the **if** condition fails we use the **else** keyword 
```go
if y > 10{
    fmt.Printf("y > 10")
} else {
    fmt.Printf("y <= 10")
}
```

#### For Loops
Loops in general execute a block of statements repeatedly based on a condition. As long as the condition evaluates to true the loop iterates. It may have an initialization and update operation

```go
for init; cond; update{
    statements
}
```
* init (optional) - executed only ones at the start of loop. Mostly used to initialize the loop control variable
* cond - the condition which is evaluated each time after a iteration. The next iteration only happens if the condition evaluates to true
* update (optional) - the operation applied on loop variables at the start of each next iteration. It is mainly used to change the loop variables such that the condition  fails after certain no of iterations

Types of for loop
```go
for i:=0; i<10; i++{
    fmt.Printf("%d",i)
}

i:=0
for i<10{
    fmt.Printf("%d",i)
    i++
}

for {
    fmt.Printf("Yup")
}
```

#### Switch
It is  a multi-case if statement. It takes a value (**tag**) and compares it with a bunch of listed **cases** and whichever has the match will get it's associated code block executed

It is a better way than writing if-else ladders     
```go
switch x {
    case 1:
        fmt.Printf("Winner")
    case 2:
        fmt.Printf("Looser")
    default:
        fmt.Printf("Confused Pikachu face")
}
```

Unlink other languages that use switch, Go automatically breaks a switch after a case match. So no breakthrough in switch is allowed

#### Tagless Switch

* It is basically a switch statement without a tag to compare with cases
* Each case instead of having a value, has a boolean expression
* First case to evaluate to true is executed

```go
switch {
    case a < b:
        fmt.Printf("B is bigger")
    case a == b:
        fmt.Printf("Equals")
    default:
        fmt.Printf("A is bigger")
}
```

#### Break
Exits the most closest loop it is placed in and moves the control flow to the next following statement
```go
for i:=0; i<10; i++{
    if i == 5 { break }
    fmt.Printf("%d",i)
}

// Output : 0 1 2 3 4
```

#### Continue
The continue statement skips the remaining function body statements and skips to the next iteration

```go
for i:=0; i<6; i++{
    fmt.Printf("i_")
    if i == 3 { continue }
    fmt.Printf("%d ",i)
}

// Output : i_0 i_1 i_2 i_ i_4
```

## User Input
The most basic method of getting input from user is to fetch it from the console like the keyboard input.

### Scan
* It is a method to read user input
* Present in te **fmt** package
* Takes a pointer as an argument
* The typed data is written to the passed pointer
* The program usually is blocked until the user enters so that the scan call can be completed
* It returns the number of items scanned, and if there is an error, it will be returned else nill

```go
var num int

fmt.Printf("Enter a number: ")
items, err := fmt.Scan(&num)

fmt.Printf("Entered num is : %d", num)
```

## Collections

These are data types that are hold more than one type/collection of data types. 

### Array
An array is a fixed size collection of similar data types. So we can have an array of booleans, integers,etc. But no mixing is allowed

#### Declaration
Size of the array is defined in `[ ]` followed by the data type of element it holds
```go
var array [i]int
```
All elements are given indexes, starting from 0 to n-1, where n is the size of the array. All the elements are initialized to default value like 0

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


The shorthand (implicit) initialization of array also known as **array literal** is as follows:
```go
array := [4]int{1,2,3,4}

// You can skip the data type
array2 := [5]{1,5,6,7,3}

// You can also skip the size of the array literal
array3 = [...]{1,2,3,4} // size will be set to 4
```

#### Iteration
Most basic operation of an array is to iterate through it's values to perform some operation. This can be achieved through loops but is easier when combined with **range** keyword

```go
array := [...]{1,2,3,4,5}

for i,v := range array {
    fmt.Printf("index %d, value : %d",i,v)
}
```
The range for each iteration returns the index and the value at the index in the array


### Slices

> Slice is a window on an underlying array

These are basically dynamically sized arrays/ Meaning we can change it's size as needed. Since it is based on Array we can create a slice from an existing array

```go
array := [3]int{1,2,3}
slice := array[:]

fmt.Println(array, slice)
// Output : [1,2,3] [1,2,3]
```
So in the above example we are using the `[]` index operator with the slicing operator `:` to slice the given array (collection in general) from a beginning to end index (if not give it will take the extreme index values, hence the same values)

Note that any changes made to either of the collections will be reflected on both as slice will point to the same memory address held by the array

#### Properties
* A pointer to the start of the slice. Points to the index in underlying array from where the slice begins
* Length: No of elements in the slice. **len()**
* Capacity : Maximum number of elements in the slice. **cap()**
* 
#### Declaring
We don't always need an existing array of fixed size to create a slice from. We can do so without one as well.
```go
slice := []int{1,2,3,4,5}
```
It is very similar to shorthand array declaration but without any notation of fixed size. This is called a Slice Literal.

What happens here is that the compiler will automatically create a 3 element array and populate it with this value and make the slice point to that. The slice created like this will always point to the start of created array, and the array length will be it's capacity

Example
```go
array := [...]{"a","b","c","d","e","f","g"}

// Slices
s1 := array[1:3] // [b,c]
s2 := array[2:5] // [c,d,e]
```
Overlapping slices refer to the same elements in the array

#### Make
Make is another way of creating slices in case we do not want to initialize them.

Its takes 3 arguments
* Type of the collection of the slice
* The length of the size. In case of slice the length will match the capacity
* Capacity (optional) - In case we want the slice to have more capacity then it's length then we can pass the capacity separately 

```go
slice1 = make([]int, 10)
slice2 = make([]float32, 10, 25)
```

#### Adding/Removing to the slides
Since slices don't have fixed size we can add or remove elements easily

* Adding an element
  
    We use the method `append` for this. It takes the existing slice object, and a list of new values to be added
    ```go
    slice = append(slice,6)
    slice = append(slice,7,8,9)
    ```
    It returns the new slice with the added values at the end

### Hash Map
* Data structure that holds key/value pairs
* All the values are associated and can be accessed via their unique keys
* Allows accessing large size structures very quickly
* A hash function is used to compute a slot for a key. This function is called implicitly and manages the connection of keys to values and their organization in the hash table
* Hash Tables boast of faster lookup time than lists (constant vs linear time) and use of arbitrary and meaningful keys rather than simple indices
* But the tradeoff is that key/value pairs may have collisions (rarely) when the hash value generated for them is the same (they have the same slot)

Hash Tables are not actually a data type in Go. They are implemented as **Map** in Go

#### Map
* The Go version of Hash Table
* Can use **make** to create a Map
    ```go
    var demo map[string][int]
    demo = make(map[string][int])
    ```
    Here string is the type for the key and int is the type for the value
* Map Literal declaration 
    ```go
    demo := map[string]int {
        "one" : 1, "two" : 2
    }
    ``` 
* Accessing a map is similar to how we do in array/slices but the indices there are replaced by keys and hence we get their corresponding value
    ```go
    fmt.Printf("one : %d", demo["one"])
    ```
* Adding a key/value pair is again similar to arrays/slice by just replacing the new index with key
    ```go
    demo["three"] = 3
    ```
    This will update any value if any existing key is passed
    ```go
    demo["one"] = 4
    ```
* Deleting a key/value pair from map is achieved via the **delete** keyword
    ```go
    delete(demo,"two")
    ```
**Map Operations**
* Two value assignment
  * Tests for existence of a key value pair in the map

    ```go
    val, exists := demo["two"]
    ```
  * `val` refers to the value of map key `two`
  * The second value `exists` as the name suggests is a boolean value that is true only if the key exists in the map
* Length of the map
  * Returns the count of key/value pairs
    ```go
    fmt.Printf(len(demo))
    ``` 
* Iterating through the map
  * Very similar output achieved from **for-range** like in array/slice
  * The index returned will be changed to the key

    ```go
    for key, value := range demo {
        fmt.Printf("Key : %s, Value : %d",key,value)
    }
    ```

## Struct
* Struct is an aggregate data type that groups together objects of other/arbitrary types into one object
* Example: Student Struct can have 3 member variables: string name, address and int age

### Declaration
```go
type struct Person{
    name string
    address string
    age int
}
```
### Initialization
* We can use the struct name as a type to declare its instance (variable of it's type/kind)

* To assign values to this newly created object we use the **new** method. This will initialize all the fields to their 0 value

* The other method is to use a struct literal where we pass in all the field values on initialization

```go
// Creating an object from this struct
var p1, p2 Person

// Initialize
p1 := new(Person)

// Literal method
p2 := Person(
    name: "Agatha",
    address: "221B Baker Street, London",
    age: 45
)
```
### Accessing members
All the fields of the struct are accessed using the **dot (.)** notation. This can be used to assign/access/modify the field values
```go
p1.name = "Agatha"

add  = p1.address
```