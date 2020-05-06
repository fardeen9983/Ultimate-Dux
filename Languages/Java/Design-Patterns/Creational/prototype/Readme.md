# Prototype
This type of Design pattern is used when the object to be created determined by a prototypical instance which is cloned to produce a new instance.

They are often used to create a unique instance of the same object.

## Concepts
1. Avoid costly creations
2. Avoids subclassing
3. Typically doesn't use the keyword "new"
4. Often utilizes instances
5. Usually implemented with some Registry. When we want an object, it is created and entered into the Registry. Next time we need another instance, we make a clone of the entry.

**Example :** java.lang.Object#clone()

## Design

When creating an object is expensive but just cloning the member variables does the job we use Prototyping.

1. Implements Clone/Cloneable interface
2. Avoids keyword "new"
3. Although a copy, each instance is unique
4. Costly construction not handled by the client
5. Can still utilize patterns for construction
6. Option: Shallow VS Deep copy

**Code Example:** [Statement.java]()

In that example, we use Shallow copy where we use the references to the members of the same object on which the Object#copy() method was called. Whereas in a Deep Copy, all the object's members will be created anew.

## Pitfalls
1. Sometimes not clear when to use
2. Used with another pattern
3. Uses some Registry
4. Shallow vs. Deep Copy

## Contrast
|**Prototype** | **Factory**|
|---|---|
|Lightweight Construction (copy/clone) |Flexible Objects (multiple constructors) |
|Shallow Vs Deep copy | Concrete Instance|
|Copy of Itself | Fresh Instance|

## Summary
1. Guarantees unique instance
2. Often Refactored in later
3. Can help with performance issues
4. Don't always jump to a factory