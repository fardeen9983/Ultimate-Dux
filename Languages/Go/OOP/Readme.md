# Object Oriented Programming Concepts
> Object-oriented programming is a programming paradigm based on the concept of "objects", which can contain data, in the form of fields, and code, in the form of procedures. A feature of objects is an object's procedures that can access and often modify the data fields of the object with which they are associated
>
> *From Wikipedia*

### Classes 
Classes can be referred to as collection of data fields and functions associated with them that together share a wll defined responsibility

### Objects
Objects are instantiation of the class. If a class is thought to be a blueprint then an object is thought to be the thing made out of the blueprint instructions

### Encapsulation
Data in a class can be protected from outside influence by allowing access to it through it's own methods

### Polymorphism
Ability of an object to have different forms depending on the context. These forms are identical at a high level of abstraction but are different at a low level of abstraction

### Inheritance
Enables code reusability of existing classes by creating new classes from previous ones with/or without additional functionalities and perhaps different implementation of inherited behavior. The  inherited class is called the superclass and the inheriting class is called subclass

Subclass may/may not redefine a method inherited from the superclass. This is called **overriding**. The overridden superclass method of the superclass is thus polymorphic in nature as the signature is same but the implementing the member is different



# OOP Support in Go
* Most Object oriented languages have the class keyword. Data fields and methods are defined inside the class block to create a class type
* Go doesn't actually has a "**class**" keyword. Hence we need a way to associate data with methods
* Instead we have a data structure called **struct** (short for structure) which only keeps together a number of data fields but not the methods associated with them

## Struct
* Struct is an aggregate data type that groups together objects of other/arbitrary types into one object
* Example: Student Struct can have 3 member variables: string name, address and int age

### Declaration
```go
type Person struct {
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

## Method binding - Receiver type
In order to bind the data fields to their related methods like in OOP we use the feature **Receiver type** inherent in functions

When we define the receiver type of a function which is just a fancy name for a value type in Go, that method gets binded to the value type. 

It acts like an extension to the value type and just like a normal OOP class method call, we can use the `dot(.)` operator to invoke it via the variable of that value type. 

Such methods can freely use the value of the variable without having to pass it to it

The only drawback is that this feature cannot be used on primitive types like int. Also the said value type needs to be in the same package for this to work

```go
type Some int
func (x Some) Square() int {
    return int(x*x)
}

func main(){
    v := Some(10)
    fmt.printf("Square : %d",v.Square())
}
```

The same thing can be achieved by replacing the `Some` type with anything ranging from primitive values to collections to structs

### Limitations
* Receiver object is passed implicitly as an argument to the method
* Method cannot modify the data inside the receiver as it always receives a copy of it by call by value
* This also presents a problem when the receiver is large in size so copying might be costly
* So to simply solve this we pass a pointer type  to the receiver value instead of making a copy of it
* In such case it is no longer required to deference the pointer variable to actually access the receiver because this is very common use case and is allowed by the Go compiler itself. The dereferencing is automatically carried out by the `.` operator
* At the same time we are also not needed to reference the value in the function call
```go
type Point struct {
    x int
    y int
}

func (p *Point) add(x,y int) {
    p.x = p.x + x
    p.y = p.y + y 
    // No Need to dereference
    // (*p).x = (*p).x + x 
}

func main(){
    p := Point(1,2)
    p.add(3,6)
    fmt.Print(p)
}
```

* All methods for a type have pointer receivers, or All methods for a type have non-pointer receivers 
* Mixing them together can be confusing
## Controlling access
The main object behind forming classes in OOP is to implement the concept of encapsulation and so only allow access to the data fields through some selected methods of the same class

This is extended in Go to enable the effect in any scope. Mostly variables of a package cannot be directly modified by other package as it is stated to be hidden data

This can only be accessed by an exported(public) function that starts with a Capital Camel case name
```go
package demo
// hidden data
var data :=1
// public function
func PublicFunc() int { return data }
// hidden function
func hiddenFunc() int {return data}
//////////////////////////////////////

//other Package
package main
import "demo"
func main(){
    demo.PublicFunc()
    // demo.hiddenFunc() Not possible
}
```

A similar kind of effect can be achieved in structs as well
* Variables starting with a lowercase are by default hidden
* Define public methods with receiver type to perform operations on hidden fields
  
```go
package demo
type Point struct{
    x float64
    y float64
}

// Initialize hidden points
func (p *Point) Init(a,b float64){
    p.x = a
    p.y = b
 }


// Main package
package main
import "demo"
func main(){
    var p demo.Point
    p.Init(10.2,45.0)
    fmt.Print(p) 
}
```

## Interface 

* Interfaces in Go are a method to implement Polymorphism in the absence of inheritance.
* Interfaces are set of method signatures (without any function definition, which is left to the implementing type)
* Used to express conceptual similarities between types implementing the same interface. 
* A type satisfies an interface when it defines all the methods specified in the interface with the same signatures
* Additional methods and member defined in the structure are irrelevant in the context of interfaces
* This has a similar effect of implementing inheritance with overriding


### Declaring
INterfaces can be defined in the same manner sas struct but replacing the data fields for method signature
```go
type Shape interface{
    Area() float64
    Perimeter() float64
}

type Triangle struct {
    base, height float64
}

func (t Triangle) Area() float64 {
    return 0.5 * base * height
}

func (t Triangle) Perimeter() float64 {
    return 2 * (base + height)
}
```

To satisfy the interface we simply make receiver type functions for all the interface methods. It is no need to explicitly specify that the interface is satisfied by the type

### Difference from Concrete Types
* Concrete types
  * Specifies the exact representation of the data and methods
  * Complete method implementation is included
* Interface types 
  * Specifies some method signatures
  * Implementations are abstracted

### Interface values
Interfaces can be treated as any other value type. The can assigned to variables and passed to & returned from functions. 

Interfaces have two components:
1. Dynamic type : Concrete type which it is assigned to
2. Dynamic value : Value of the dynamic type

Interface value is actually a pair : (dynamic type, dynamic value)

```go
type Speaker interface { Speak() }
type Dog struct { name string }

func (d Dog) Speak(){
    fmt.Println(d.name)
}

func main(){
    var s1 Speaker
    var d1 Dog{ "Brian" }
    s1 = d1
    s1.Speak()
}
```

Here the dynamic type is `Dog` and the dynamic value is `d1`

It is legal to have a nil dynamic value for an interface
```go
var s1 Speaker
var d1 *Dog
s1 = d1
```
Here d1 has no actual value
> An interface can have a dynamic type with a nil dynamic value

We can still make a call to the interface methods if we have a dynamic type but no dynamic value associated with the interface value. This cannot be achieved with a nil dynamic type as we cannot resolve the method to be called and this will lead to runtime error


### Empty interface
* Such Interfaces specify no methods. 
* As a result all types satisfy the empty 
interface
* We can use it in a function to accept any type of parameter
```go
func something(obj interface {}){
    fmt.Print(obj)
}
```
### When to use Interface
* When we need to define a function which takes multiple types of parameter.
* For ex if the function either needs X or Y type of parameter then we can first make X, Y satisfy an interface and pass the parameter as an interface vale rather than actual object

### Type Assertions
* Interfaces hide the differences between types
* But sometimes is needed to exposing the type difference
* Interfaces provide mechanism to extract the dynamic type from the interface value for disambiguation of type differences

```go
func DrawShape(s Shape) {
    rect, noErr := s.(Rectangle)
    if noErr {
        DrawRect(rect)
    }

    tri, noErr := s.(Triangle)
    if noErr {
        DrawTriangle(tri)
    }
}
```

So we can extract concrete types from the interface which returns 2 values. the second value is set to true if the dynamic type matches else returns zero for the type value

This can be improved by using a switch statement with a case for each type

```go
func DrawShape(s Shape) {
    switch := shape := s.(type){
        case Rectangle:
            DrawRectangle(shape)
        case Triangle:
            DrawTriangle(shape)
    }
}
```

## Error handling
Go programs handle errors by returning error interface objects. This object has an `Error` method  that returns a error message. It is nil in case no error occurs. For ex:
```go
type error interface{
    Error() string
}
```