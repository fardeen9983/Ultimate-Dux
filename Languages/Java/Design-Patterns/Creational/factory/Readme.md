# Factory Methods

Opposite of the Singleton pattern and the second most used Creational Design pattern

## Concepts
1. It doesn't expose Instantiation logic
2. Defer the above logic to subclass
3.  The common interface it exposes
4. Specified by Architecture implemented by the user

**Example :**  Calendar, ResourceBundle, NumberFormat, etc

## Design
1. The factory is responsible for not only creating objects but also for managing their lifecycles
2. Created objects are accessed through a common interface
3. Refer to multiple concrete classes/implementations, but the client is unaware of this
4. Parameterized create method

**Code Example:**
```java
// This call looks like a singleton implementation
// But the method return concrete implementation of the Calendar class based on the parameter passed.
Calender cal = Calender.getInstance();
System.out.println(cal);
// output : java.util.GregorianCalender
```

## Pitfalls
1. Complexity
2. Creation in subclass
3. Refactoring

## Contrast
Same as described in [Singleton's Contrast]()

## Summary
1. Parameter driven
2. Solves complex creation
3. Complex
4. Opposite of Singleton