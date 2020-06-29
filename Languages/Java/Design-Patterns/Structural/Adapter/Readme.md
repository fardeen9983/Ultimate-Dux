# Adapter Pattern

Useful when connecting new code to legacy code without having to change the working contract produced by the legacy code.

## Concepts
1. Plug Adaptor
2. Convert one interface to another
3. Use with/connect to Legacy code
4. Translating requests from the client to the code we are adapting to
5. Client --> Adapter --> Adaptee

**Examples:** Arrays -> List (methods in Collections API to adopt Arrays into Lists), Stream classes have an adapter to work with other streams or readers.

## Design
1. Client-Centric
2. Integrate new to Old
3. Can use interface but no required
4. Adaptee can be the (new) implementation

**Code Example : Arrays.asList**
```java
// Fundamental Array type
Integer[] array = new Integer[]{1,2,3};

// List from Collections API
List<Integer> list;

// Converting the Array to List
list = Arrays.asList(array);
```

## Pitfalls
1. Not a Lot
2. Don't complicate it
3. Multiple adapters
4. Don't add Functionality (It will become a Decorator otherwise)

## Contrast
|**Adapter**|**Bridge**|
|---|----|
|Works after code is designed| Designed Upfront |
|Deals with Legacy code|Abstraction and implementation may vary |
|Retrofitted to make unrelated classes work together|Built in advance |
|Provide a different interface to legacy code than which was initially intended| |


## Summary
1. Simple solution
2. Easy to implement
3. Integrate with Legacy code
4. Can provide Mulitple adapters