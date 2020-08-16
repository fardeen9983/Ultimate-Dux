# Maven 
* Maven is a Build Tool .i.e, it a tool to build source code and produce an artifact or output. 
* Maven always builds an artificat. It can be a component, a JAR or ZIP file
* Maven helps manage dependencies in Java Projects
* At a higher level, maven can be used as a **Project Management Tool**
* It also handles project versioning and releases
* It can store and produce extra information about the project to describe itand metadata about the dependenices such as authors, etc
* Managed by Apache Software Foundation
* It's Open source and free to download

## Advantages
* Used for repeatable builds across platforms without changing environments
* It handles transitive dependencies automatically
* It creates a hassle free environment to write and reproduce our code
* It enables a feature called **Local Repo** where instead of downloading dependencies for each project/environment individually every time, we can just store it once locally and reference it in all the subsequent projects
* Works very well with IDEs and standalone environment too
* Preferred choive of build tool when working with CI/CD pipelines like Jenkins, etc
* Is a Full featred build tool
* With a lot of implicit features built in
* Higher consistency and reusability
* Achieves inheritance
* Has a versioning system
* Lot less overhead

## Code Example
```xml
<project>
    <modelVersion>4.0.0</modelVersion>
    <groupId>com.pluralsight</groupId>
    <artifactId>FitnessTracker</artifactId>
    <version>0.0.1-SNAPSHOT</version>
    <name>HelloWorld</name>
</project>
```

## Comparison
#### Ant
* Can be used in junction with Maven
* Originally made to replace a previoud build tool Make to improve upon crss platform operatibility
* Ant is built on top of Java and uses XML
* Very procedural in nature
* Have to explicitly code everything
    ```ant
    <target name="clean" description="clean up">
        <delete dir="${build}" />
    </target>
    ```
* It is declarative in nature, we have to describe each step as we want it to do
* Ant is not very standardized and can have many variations and leads to be problematic
* Reusability across projects is limited as all scripts in Ant are fairly unique
  
Code example
```xml
<project>
    <target name="delete_everything" description="clean up">
        <delete dir="build" />
    </target>

    <target name="compile_code" depends="init" description="compile the source">
        <mkdir dir="build/classes" />
        <javac srcdir="src" destdir="build">
    </target>
    
    <target name="wrap">
        <mkdir dir="build/jar" />
        <jar destfile="build/jar/HelloWorld.jar" basedir="build/classes">
    </target>
</project>
```
**Features to Ant**
* Very clear and straighforward at tasks
* Easy trace
* Copy paste friendly
* Large project size

**Disavantages of Maven**
* But it is a bit abstract and kinda like a black box
* Has a steeper leraning curve
* Forces convention over configration

## Reference
1. Bryan Hansen - [Website](http://completeprogrammer.com), [Twitter](https://twitter.com/completeprog)
2. Pluralsight - [Maven Fundamentals](https://app.pluralsight.com/library/courses/9819e2ce-def3-415c-8e86-da693fd33748/table-of-contents)