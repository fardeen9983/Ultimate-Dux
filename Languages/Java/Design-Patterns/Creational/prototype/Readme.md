# Prototype
This type of Design pattern is used when the object to be created is determined by a prototypical instance which is cloned to produce a new instance.

Often used to create a unique instance of the same object.

## Concepts
1. Avoid costly creations
2. Avoids subclassing
3. Typically doesn't use the keyword "new"
4. Often utilises instances
5. Usually implemented with some sort of a Registry. When we wnat an object it is created and entered into the Registery. Next time we need another instance, we just make a clone of the entry.

**Example :** java.lang.Object#clone()

## Design

When createing an object is expensive but just cloning the members variables does the job we use Prototyping.

1. Implements Clone/Clonable interface 
2. Avoids keyword "new"
3. Although a copy, each instance is unique
4. Costly construction not handled by the client
5. Can still utilize patterns for construction
6. Option : Shallow VS Deep copy

**Code Example:** [Statement.java]()