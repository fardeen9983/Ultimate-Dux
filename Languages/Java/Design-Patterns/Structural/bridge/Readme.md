# Bridge Pattern

Similiar to Adapter pattern whereas it works with new code rather than legacy code

## Concepts
1. Decouple abstraction and implementation
2. Use encapsulation, composition and inheritance
3. Changes in abstraction wont affect the client
4. Details wont be right to begin with

**Example :** Driver

## Design
1. Utilises Interface and Abstract classes
2. Composition over Inheritance
3. More than just composition
4. Expect changes from both side
5. Abstraction, Implementor, Refined abstraction, Concrete implementor

**Code Example : JDBC Driver**
```java
DriverManager.registerDriver(new org.apache.derby.jdbc.EmbeddedDriver);

String dbURL = "jdbc:derby:memory:corejava/webdb;create=true";

Connection conn = DriverManager.getConnection(dbURL);

Statement = conn.createStatement();
```

## Note
___
In the example given in this [commit]() show a system for creating differnet concrete shapes and apply colors to them. The problem is for each new colored shape we have to create a new class definition and have concrete implementations for all the interfaces. this will work fine. But is cumbersome. This can be avoided with Bridge.
___

With the code changed for the example at this [commit]() we can easily add new variants of Color class without having to deal with much changes

## Pitfalls
1. Increases Complexity
2. Conceptually difficult to plan
3. More than just OO
4. Confusing as to what goes to where

## Contrast
As descibed for the contrast in [Adapter]()

## Summary
1. Designed for uncertainity
2. Can be complex
3. Provides flexibility
4. More than composition