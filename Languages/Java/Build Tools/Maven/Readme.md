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
    <version>0.0.1-SNAPSHOT</ version>
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

## Getting Started
We can use IDE or text ediotr like Eclipse, Intellij or even notepad to get started

**Project Strucuture**
By default maven looks for the following project structure

Project > src > java > **.java
        > pom.xml

All the source code placed in such format will be compiled to a **target** directory. This is achieved by the default/our custom configuration written in the `pom.xml` file

While `src/main/java` contains all source code, unit tests are placed  in `src/test/main`. For different languages using maven we simply replace java by the language name such as `src/main/groovy`

The `target` folder is responsible for holding all the generated classes and all the tests are run. The contents of this directory are used for packaging into JAR/WAR artifacts.
**Instructions**
1. Paste the following code in pom.xml to get started
    ```xml
    <project>
        <groupId>com.pluralsight</groupId>
        <artifactId>HelloWorld</artifactId>
        <version>1.0-SNAPSOT</version>
        <modelVersion>4.0.0</modelVersion>
        <packaging>jar</packaging>
    </project>
    ```
2. Run `mvn clean` in the root directory of the project. This downloads a bunch of dependencies at first (initailly the project structure) and clean builds if any.
3. Running `mvn compile` will compile our source code to generate builds
4. In case the build fails and states that 
    ```cmd
    Source option 5 is no longer supported. Use 7 or later.
    ```
    It means we have to update the build configuration for Java 10+ . To do this simply modify the `pom.xml` file and add the following snippet inside the `<project>` tag
    ```xml
    <build>
		<plugins>
			<plugin>
				<groupId>org.apache.maven.plugins</groupId>
				<artifactId>maven-compiler-plugin</artifactId>
				<version>3.8.0</version>
				<configuration>
					<release>14</release>
				</configuration>
			</plugin>
		</plugins>
	</build>
    ```
5. To generate JAR file (artifact) we use the command `mvn package`

The first time we do this Maven downloads a lot of plugins to the Local Repo which are later on only referred to by subsequent projects

## Pom file
* The root tag `<project>` contains all information about the project and it's metadata
    ```xml
    <project xmlns="http://maven.apache.org/POM/4.0.0" 
            xmlns:xsi="https://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-4_0_0.xsd" >
    ....
    </project>
    ```
* The group ID is actually the package name of the project and similarly artifact ID is same as the project name
* Versiosing is enabled by `<version>` tag and is used ffor equential releases
* For packaging option we have 3 choices - WAR, JAR (default), EAR.

## Dependencies
Dependcies refer to libraries hosted on the maven repository which can be added to our project as an extension of the basic features. The depencies are all listed in the `pom.xml` file and Maven automatically handles any related transitive dependencies (i.e other dependencies the main dependency itslef has)

maven follows a unique naming convention for each of the dependency. Thus it is required to know the group and artifact ID and the version of the dependency we wish to use. 

Code example
```xml
<project>
    ....

    <dependencies>
        <dependency>
            <groupId>org.apache.commons</groupId>
            <artifactId>commons-lang3</artifactId>
            <version>3.8.1</version>
        </dependency>
    </dependencies>

</project>
```

In the above example we are adding the apache commons lang library and none of it's transitive dependencies are listed but they are automatically downloaded and managed.

Also once a dependency is added, it's stored in a local repo on the system thus enabling reuse wothout redownload for every neew environment that uses it.

## Goals
* **clean** - cleans the target directory (all the generated output)
* **compile** - compiles all the source code and places the result in the target
* **package** - First runs the compile goal and packages the compiled code into deliverables
* **install** - It runs the package goal and installs the generated output in the local repo
* **deploy** - It runs the install command and deploys it to a corporate/internal or private repository


## Reference
1. Bryan Hansen - [Website](http://completeprogrammer.com), [Twitter](https://twitter.com/completeprog)
2. Pluralsight - [Maven Fundamentals](https://app.pluralsight.com/library/courses/9819e2ce-def3-415c-8e86-da693fd33748/table-of-contents)