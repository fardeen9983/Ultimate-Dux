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
___

## Builder - steps
1. Make all member private immutable type
2. Remove all getters
3. Create a static inner Builder class with all the member varaibles of the outer class but as mutable
4. Define different flavours of methods we need to use for creating the outer class instances all of which return a Builder instance.

The Builder constructors can enforce which paramter should be required for it.

## Pitfalls
1. Immutable instances
2. Implemented with static inner class
3. Designed first (in contrast to the Prototype pattern)
4. Complexity

## Constrast
**Builder** | **Prototype**
---|---|----
Returns same instance |  Returns various instaces
One constructor method with no args | Multiple constructors
No Interface | Interface driven
-  | Adaptable to environment more easily
