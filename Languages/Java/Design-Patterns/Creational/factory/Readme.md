# Factory Methods

Opposite of the Singleton pattern and the second most used Creational Design pattern

## Concepts
1. It doesn't expose Instantiation logic
2. Defer the above logic to subclass
3.  Common interface it exposes
4. Specified by Architecture implemented by user

**Example :**  Calendar, ResourceBundle, NumberFormat, etc

## Design
1. Factory is responsible for not only creating objects but also managing their lifecycles
2. Created objects are accessed through common interface
3. Refer multiple concrete classes/implementations, but the client is unaware of this
4. Parameterized create method

**Code Example:**
```java
// This call looks like a singleton implementation
// But in fact the method return concrete implementation of the Calendar class based on parameter passed.
Calender cal = Calender.getInstance();
System.out.println(cal);
// output : java.util.GregorianCalender
```
