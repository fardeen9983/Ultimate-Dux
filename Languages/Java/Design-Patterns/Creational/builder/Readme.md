# Builder Patterns

This creational pattern is best to use when we want to create an instance with a number of parameters and after that we want it to be immutable.

## Concepts
1. Handles complex constructors
2. Large number of parameters
3. Immutability

Examples : StringBuilder, DocumentBuilder, Locale.Builder

## Design 
1. Flexibility over telescoping constructors (multiple constructors with different args). Builder handles construction with an object than by parameters
2. Written with a static inner class - returns an instance of the object it is buiding
3. Workes in unison with constructors, caling the necessary one based on its state
4. Negates the need for extra setters.
5. Java 1.5+ can take advantage of Generics

**Code Example :** String Builder
```java
StringBuilder builder = new StringBuilder();
builder.append("This is example");
builder.append(" of a builder pattern");
builder.append(42);

System.out.println(builder.toString());
```

**Notes - Beans**
___
So a simple bean as referred to the Java Bean class [OrderBean]() has multiple getters and setter and also a default constructor. But despite this the object is still mutable and it does not specify a contract as to which member is to be set for the object to be in a state or be valid.

Thus even if we do not set the properties of the object, it will still work but will be void of any state/validation

We can avoid above situation using ***Telescopic constructors*** which are basically overloaded constructors that take different parameters to create different flavours of the class instance with varying number of properties set and unset. The difference is that the we use these contructors withtin their bodies to create a telescoping effect. Check out this example [OrderBean](). This allows the objects created as immutable.

The main disadvantage of telescoping constructors is flexibility. We cannot pick out one property to add a custom combination of them as we see fit to create objects always.