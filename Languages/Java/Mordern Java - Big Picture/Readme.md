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
#### Popularity 
* (TIOBE Programming Community Index - based on web searches). Used to build a variety of applications:
    * Web applications
    * Backend services
    * Data-intesive applications
#### Scalable Development
* Heirarchial and structured codebases
* Effective for large scale collaborations
* Established coding practices
* Strong tooling support
* Wealth of third party libraries
#### Type System
* Explicity define the type of each variable defined
* Catch bugs early
* Prevents many type based runtime errors
#### Managed Runtime
* Automatic maemory management
* Garbage collection
* Multi-threading
#### Performance
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

#### C/C++
1. Java syntax is inspired from C
2. C++ is also Object Oriented
3. C/C++ are unmanaged languages
4. C/C++ have more features and are thus more complex
5. C/C++ are compiled directly to native code (no portability)

#### Python
1. Both are high level languages
2. Open ecosystem
3. Python is an interpreted language
4. Python is not statically typed
5. Python 2/3 split. Not as backward compatible as Java

#### JavaScript
1. Managed runtime : NodeJS
2. Somewhat syntatically similar
3. JS is interpreted language and not statically typed
4. JS is single threaded

## Platforms 
#### Desktop
* Single machine, interactive applications
* GUI applications
* Desktop development was very popular at the time Java was launched
* It already shipped with a GUI toolkit AWT (Abstract Window Toolkit)
* Uses Native OS controls
* Offers simple graphics primitives for 2D
* New approach to GUI development was introduced as Swing - a pure Java implementation
* Options from many crossplatform look and feel
* Adhere to Model-View-Controller design pattern
* JavaFX, the third GUI toolkit was introduced
* It uses declaractive format for defining UI using XML. It was called FXML
* Thus decoupling the logic and design
* Offers much more advanced components
* Skinnable with CSS for styling
* Used for 3D graphics
* JFX offrered as separate release from JDK as OpenJFX

#### Enterprise (Java EE)
* Enterpise edition of Java replaces the Standard Edition APIs with the Enterprise Edition. It offers built functionalities to manage 
  * Networking
  * Web application
  * Security
  * Messaging
  * Batch processing
  * Database management, etc
* Hence now the Java stack is changed as following:
  * Enterpise application
  * Java EE APIs
  * Java SE APIs
  * JVM
* Still Java EE APIs provide specifications and not actual implementation. This is provided by a Java EE Application Server
* Such servers need to implement
  * Java Persistence Architecture
  * Enterprise Java Beans
  * Java Server Faces, etc
* Multiple applications can be packaged into WAR, EAR and be deployed onto the Java EE application serve
* Examples
  * Wildfly (Red Hat)
  * WebSphere (IBM)
  * Tomcat (Apache)
  * WebLogic (Oracle)
* Future of Java EE
  * Java EE 8 was last Oracle release
  * Move to Eclipse foundation
  * Rebranded to jakarta.ee
  * Rising competitor : Spring Framework
* Monolithic in nature and not very efficient in handling cloud architecture

#### Cloud
* Instead of deploying heavy weight Java EE application servers on few systems, cloud uses scalable microservices which can be deployed, scaled and modified individually with a smaller footprint 
* Thus to become cloud compatible, Java has realease some microframeworks with lighter footprint but scalable features. Example :
  * Spring Boot - based on Spring architecture and open source Netflix libraries. Completely dumps the Java EE application server
  * MicroProfile - Select subset of required Java EE API specifications and add some basic features
  * Vert.x - Open source framework by Red Hat
  * Play framework - Open source microframework by Libenth

#### Android
* Java is primarly language used for android development but now is actively replaced by Kotlin by JetBrains
* But the Andorid Java platform is distinctively different from the Java pltaform
* Android actually uses subset of Java 7,8 as it lacks official support for latest Java releases
* Java Bytecode is converted to Dalvik Executable format (DEX) which ultimately runs on android devices
* It uses additional libraries like Android API, and Java SE like API. JVM is replaced by Dalvik VM


## Popular Java Libraries
#### Spring Framework
* Rod Johnson released Java EE without EJB 
* Spring emerged as a Rebel Framework
* Notion of dependency injection - aimed at reducing tight coupling between the helper and utility classes the application class depends on, thus helps in unit testing 
  * Spring allows you to dictate and configure the number of classes in your application and dependencies between them (called Spring beans)
  * This helps in decoupling, flexible composition, Cross cutting concerns 
* Also features integration with data-access technologies, Java EE technologies
* Spring WebFlux - uses Web components and other libraries and features to develop web apps


#### Utility
##### 1. Google Guava
* Extends Java EE functionalities 
* Has additional collection types
* Caching implementation nad IO helper classes
##### 2. Apache Commons
* Collection of libraries hosted by Apache foundation
* Extends core Java functionality
* Exmample : Apache Commons 
  * Collections
  * CSV
  * IO
##### 3. Apache Log4J
* Structured applciation logging for java

#### Distributed System Libraries
##### 1. Netty
* Popular and Low level
* High performance networking
##### 2. Akka
* A more high level library
* Implements the Actor model for concurrency
* Works with single JVM
* Can transparently cluster and distibute them
##### 3. RxJava
* Together with Akka, they form the reactive programming  paradigm
* Highly concurrent and resilient applications
* Async and event-based model - all around creating listenable streams
##### 4. Apache Camel
* Wires together existing systems into new workflows
* Also called Enterprise application integration
* Many built in connectors and transports

#### Data access libraries
* Java EE has in build database management tools i.e., the Java Database Connectivity API (JDBC). This is solely for Realtional databases
* There are man JDBC drivers available for connecting Java applications to popular relational databases
* JDBC decouples data access opeartions from the applciation allowing it to work with multiple types of such databases with the same code
* Despite all this, the JDBC drivers are too low level, hence popular abstraction libraries emerged to ease the development. Examples
  * ORM - Object Relational Mapper. Automatically maps a java object to the database entity and back. Examples - Hibernate, EclipseLink. There is no need to write SQL queries in this case
  * SQL DSL - SQL Domain Specific Languages try a different apporach of embedding the SQL query language as a domain specific language into the Java language. Example : jOOQ, QueryDSL
* Java EE has integrated the ORM API of hubernate and EclipseLink directly into it's API umbrella in the name of Java Persitence Architecture (JPA)

#### Data Processing
##### 1. Apache Hadoop
* Open source Java implementation of Google's MapReduce
* This is suitable for processing large amount of data across server clusters running many instances of Hadoop
* It's not a library but a distributed system implemented in Java for processing Big Data
##### 2. Apache Spark
* Similar to Hadoop but a more scalable and new impementation
* Easier to process streaming data in Spark than in Hadoop
* Like Hadoop provides a Language model and is a distributed system
##### 3. DL4J - Deep Learning for Java    
* Implement Deep Neural Nets in Java
##### 4. Cassandra -
* NoSQL database written in Java
* Enormous clusters of Cassandra are run by tech giants
##### 5. Neo4J
* A graph database written in Java
##### 6. ElasticSearch 
* Used to write search indexes for big data sets
##### 7. HDFS
* Hadoop Distributed File System   

## Practises and Tools
##### 1. IDE - Integrated Development Environment
* Provides a set of ffeatures like code completion, code highlighting, debugging, etc which makes the process ofdevelopment faster and easier
* Most popular IDEs for writing Java Projects
   * Eclipse
   * IntelliJ
##### 2. Unit Testing
* Testing is performed to remove any potential bugs in the code and to make sure the code runs as expected
* In Testing we write code referred to as test cases which run the written programs in with a cerain degree of control like the input parameters or number of steps, etc and compares the output to the expected result
* Unit Testing is specialised for individual classes and methods i.e., the smallest units of a program
* JUnit - the frst and still the most popular Java unit testing framework
* Isolate  dependencies - provide mock data inputs and dependencies. Most popular mocking library is Mockito
##### 3. Build Tools
* Responsible for converting production build/code of the project
* They need to ensure repeatable builds, .i.e., different people in different environments but with the same code base should generate the same build
* They also hepl managing multiple modules of the java application
* Also manage external dependencies
* Automate running of tests
###### **Maven**
* The most used and popular build tool
* Builds are described in XML files with the name pom.xml
* This XML description is  declarative in nature
* This means that we dont have to specify each individual build step. We just need to specify the results we want. Maven will automatically achieve them.
* Also Maven assumes a lot of defaultslike packaging and project structure
* As a result most Maven projects are very similar and easy to get started with
* The usual flow of Maven involves the following steps
  1. Download Dependencies
  2. Compile source code
  3. Run Tests
  4. Build the package
* Maven is installed on the client system but communicates with a repository called Maven central to download all the dependencies
* Maven has become the ultimate sorce of all Java libraries. To find a dependecy we just need to place the group and artifact id followed by the version no of the dependency we wish to add
* Any transitive dependency will also be added
###### **Gradle**
* The second most popular Java build tool
* The major difference is that Gradle doesn't use declarative configurations as in Maven but defines builds using Groovy Scripts
* Supports incremental builds (Not possible in maven)
* The default source layout used in Maven can also be used in Gradle
* Can also use dependencies from maven central using the same format as well
* Gradle is the default build tool used for the android platform and is endorsed by Google
##### 4. Continous Integration  & Quality Control
* CI enables automated build releases from code changes
* A CI server is setup with pre written scripts to monitor any code changes meant for release. 
* We push code changes to the CI servers and using automated testing like using the Java build tools, proper tests are conducted
* The production level code (build) is generated and released to consumers. All of this is automated
* Ensures that we have a working application of sufficient quality at the end
* Examples - Jenkins (Written in and for java)

##### 5. Static Code Analysis
* **Checkstyle**
  * Enforces stylistic choices over the java code base
  * Can be made to adhere to default Java code style
  * Or we can create our own
* **Spotbugs** -Scans Java code with predefined rules to look out for bugs. It works at byte code level
* **PMD** - Another tool in the liking sof SpotBugs but scans the source code level
* **SonarQUBE**
  * Defined as continous inspection tool
  * Works together with a CI server
  * Keeps track of all findings from code analysis tools for each build
  * Also covers code coverage for unit tests
  * Has added some of it's quality checks like detecting duplicate code


## Other JVM Languages
Alternate JVM based languages capable of converting their source code into ByteCode do take all the advantages of JVM. In addition they provide improvements over some features from the original Java Language

As for why we there exists such alternative languages : 
  1. For when the features of Java such as it's simplicity, lack of feature, more emphasis on understandibility than shorted code size, etc are a hamper nfor better developer productivity
  2. Not everyone is familiar with Java. On the other and people with experience with languages that have their JVM based implementation can make use of their familiarity with that language to code more efficiently like JRuby and JPython
  3. When programming paradigms other than Object oriented programming are required or favourable

#### Groovy
* Dynamic scritping language for the JVM
* It is interpreted at runtime hence is more similar to languages like python
* Compiling source code to bytecode is an optional choice using the Groovy compiler
* Opt-in type system enables developer to later add in type annotation to Groovy code
* Syntax is concise but still very close to Java
* Groovy works very well with existing Java code

#### Scala
* Combines Object Oriented Programming with Function Programming paradigm
* Scala is a compiled language
* Extensive type system like Java
* Akka, Spark are written in Java

#### Kotlin
* A 'better Java'
* Developed by Jetbrains
* Seamless Java interoperatibility
* Pragmatic langauge offering features like null safety and data classes
* Endorsed by Google for Android development
* As it can also be compiled to JS, it also runs on Browser
