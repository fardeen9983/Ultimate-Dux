# Object Oriented Programming in Go
> Object-oriented programming is a programming paradigm based on the concept of "objects", which can contain data, in the form of fields, and code, in the form of procedures. A feature of objects is an object's procedures that can access and often modify the data fields of the object with which they are associated
>
> *From Wikipedia*

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