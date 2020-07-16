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


