# AbstactFactory method
Similar to the Factory method, but implemented as the Factory for the Factory patterns.

## Concepts
1. Factory of Factories
2. Factory of related objects
3. Uses common Interface all the way through
4. Defers creation logic to subclass

**Example :** DocumentBuilder

## Design
1. Group Factories together
2. Factories are responsible for the lifecycle (at least for the creation)
3. Common Interface carried throughout the AbstractFactory
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

## Pitfall
1. Very Complex
2. Difficult to implement
3. Runtime Switch
4. Pattern within pattern
5. Very problem-specific
6. Starts as Factory and then is refactored to be AbstractFactory

## Contrast
|**AbstractFactory** | **Factory**|
|---|---|
|Hides the factory  |Returns Various instaces|
|Implemented with a Factory| Uses Multiple Constructors|
|Abstracts Environment |Adaptable to the environment more easily|
|Builds through composition | Interface Driven|

In the end, we can say that all features of **Factory** applies to **AbstractFactory** with some bonus

## Summary
1. Group of similar factories
2. Complex
3. Heavily abstracted
4. Written as Framework Pattern
