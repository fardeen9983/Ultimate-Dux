# AbstactFactory method
Similar to the Factory method, but in fact implemented as the Factory for the Factory patterns.

## Concepts
1. Factory of Factories
2. Factory of related objects
3. Uses common interface all the way through
4. Defers creation logic to subclass

**Example :** DocumentBuilder

## Design
1. Group Factories together
2. Factories are responsible for the lifecycle (atleast for the creation)
3. Common interface carried throughout the AbstractFactory
4. Returns concrete classes
5. Parameterised create method
6. Build using composition

**Code Example :** Document Builder
```java
// AbstractFactory
DocumentBuilderFactory abstractFactory = DocumentBuilderFactory.newInstance();

// Factory
DocumentBuilder factory = abstractFactory.newDocumentBuilder();

// interface class that holds the concrete implementation
Document doc = factory.parse(param);
```