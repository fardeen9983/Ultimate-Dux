# Mordern Java : The Big Picture
A [Pluralsight course](https://app.pluralsight.com/library/courses/modern-java-big-picture/table-of-contents) by [Sander Mak](https://twitter.com/Sander_Mak)


## Components
1. Java Programming Language
2. The RUntive Environment
3. Java Standard Library

Together they form the Java Development Kit

## Flow of Execution
The Java language based source code is compiled to Bytecode (an high level intermediate code) which in combination of the Standard library and third party libraries is executed on host machine by Java Virtual machine through the Java Runtime Envrionment which basically interpretes the bytecode into system compatible machine code.

The format of the bytecode is recognised by the .class extension


## Philosophy of Java
1. Portability 
   * Java applications run on any OS and hardware (WORA - Write Once Run Anywhere)
   * This is achieved by breakdown of Java code into three parts
     * Application ByteCode
     * Java Standard Libray (SE) APIs
     * JVM for each OS/architecture
   * Java SE APIs are platform-agnostic
2. Optimized for readability
   * Reading code is more important than writing it
   * Java chooses maintainability over terseness   
   * Java chooses understandable code over clever code
3. Conservative : New Features
   * Planned ahead for 20 years
   * Not all new features make it into release
   * Principle - "First Do No Harm"
   * Difficult to remove a new feature after adding it
   * Developer producitivity main focus
   * Maintaining simplicity
4. Conservative : backward compatibility
   * Exisiting decade old codes should work with latest releases
   * Controlled deprecation of older features
   * Maintaining simplicity
5. Open : Specification Process
   * Open source driven and governed by Java Community Process 
   * Lot of vendor and community participation in JCP to decide specification for platforms
   * Thus many non-oracle implmentation by like IBM, Eclipse are available
6. Open-Source:
    * OpenJDK - Open source JDK 
    * Under GPL 2 license
    * Many experimnetal subprojects available 
7. Open : Java community
   * Millions of Java developers 
   * Hundreds of groups and communities around Java

## Why Java
1. Popularity (TIOBE Programming Community Index - based on web searches). Used to build a variety of applications:
    * Web applications
    * Backend services
    * Data-intesive applications
2. Scalable Development
    * Heirarchial and structured codebases
    * Effective for large scale collaborations
    * Established coding practices
    * Strong tooling support
    * Wealth of third party libraries
3. Type System
    * Explicity define the type of each variable defined
    * Catch bugs early
    * Prevents many type based runtime errors
4. Managed Runtime
    * Automatic maemory management
    * Garbage collection
    * Multi-threading
5. Performance
    * Just-In-Time compilation - JVM inspects underlying hardware and OS architecture to execute the bytecode

## When Not Java?
1. Real time systems - cause is uncertain garbage collection
2. Tight OS integration - inhibits portability
3. Quick Prototyping
4. For when cutting edge tech/language features are required

## Comparisons
#### C# / .NET
1. Common Language Runtime - C# equivalent of JVM
2. Like Java it's a managed language
3. Open-Source
4. Faster moving language
5. Compiles like Java into an intermediate state
6. Only recently cross-platform
7. Ecosystem is dominated by Microsoft