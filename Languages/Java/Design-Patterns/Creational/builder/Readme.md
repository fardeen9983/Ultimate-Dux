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