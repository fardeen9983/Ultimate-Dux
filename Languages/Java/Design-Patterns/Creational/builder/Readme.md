# Builder Patterns

This creational pattern is best to use when we want to create an instance with several parameters, and after that, we want it to be immutable.

## Concepts
1. Handles complex constructors
2. A large number of parameters
3. Immutability

Examples: StringBuilder, DocumentBuilder, Locale.Builder

## Design
1. Flexibility over telescoping constructors (multiple constructors with different args). Builder handles construction with an object than by parameters
2. Written with a static inner class - returns an instance of the object it is building
3. Workes in unison with constructors, calling the necessary one based on its state
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
So a simple bean, as referred to the Java Bean class [OrderBean]() has multiple getters and setter and also a default constructor. But despite this, the object is still mutable, and it does not specify a contract as to which member is to be set for the object to be in a state or be valid.

Thus even if we do not set the properties of the object, it will still work but will be void of any state/validation.

We can avoid the above situation using ***Telescopic constructors***, which are overloaded constructors that take different parameters to create different flavors of the class instance with varying number of properties set and unset. The difference is that we use these contructors within their bodies to create a telescoping effect. Check out this example [OrderBean](). This allows the objects created as immutable.

The main disadvantage of telescoping constructors is flexibility. We cannot pick out one property to add a custom combination of them as we see fit to create objects always.
___

## Builder - steps
1. Make all member private immutable type
2. Remove all getters
3. Create a static inner Builder class with all the member variables of the outer class but as mutable
4. Define different flavors of methods we need to use for creating the outer class instances, all of which return a Builder instance.

The Builder constructors can enforce which parameter should be required for it.

## Pitfalls
1. Immutable instances
2. Implemented with a static inner class
3. Designed first (in contrast to the Prototype pattern)
4. Complexity

## Contrast
|**Builder** | **Prototype**|
|---|---|
Handles complex constructor |  Implemented around the clone method|
|No interface required. But can add one | Avoids calling complex constructor|
|Can be a separate class/a static inner class | Always defined in the same class|
|Works with legacy code | Difficult to implement in legacy code|

## Summary
1. A creative way to deal with complexity
2. Easy to implement
3. Few Drawbacks
4. Can refactor in with a separate class