# Go

Go (or Golang) is an open-source project, a highly reliable, efficient and a lightweight general purpose programming language created by a team of three people of Google, and recently becoming one of the most popular server-side languages.

Combines the performance and type safety of languages like C++, Java with developer friendliness and near instant compile time of scripting languages such as Python, JS.

Go is a weakly Object Oriented Programming language. It has implemented some concepts of OOP but not all like other counterparts (python, java, etc)
* Go doesn't uses keyword `class` for encapsulation. It uses `struct`
* Has no inheritance, constructors, generics

Concurrency in Go : GO is very effective in achieving concurrency. 
* Concurrency is the management of multiple tasks at the same time. The processes may be simply alive or even executing at the same time. Its responsible for
  * Management of task execution
  * Communication b/w tasks
  * Synchronization between tasks
* Generally speaking concurrency is achieved at hardware level using the concept of parallelism - Multiple tasks are performed at same time but on different cores of the same processor, increasing the throughput. 
* This comes with a disadvantage of managing the program flow and resource control by the software:
  * When do tasks start or stop?
  * Conflicts and dependencies between tasks

Go tackles concurrency problems by including concurrency primitives
* **Goroutines** represent concurrent tasks
* **Channels** are used for communication b/w tasks/routines
* **Select** enables task synchronization
  
This makes concurrency easy to achieve and efficient
## Development

Go was developed by a team of three very experienced and capable developers working in Google. At te point the 3 major languages used by Google were C++, Java & Python
<table>
    <thead>
        <tr>
            <th>Language</th>
            <th>Merits</th>
            <th>Demerits</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan=2>C++</td>
            <td>High Performance</td>
            <td>Highly complex syntax</td>
        </tr>
        <tr>
            <td>Type Safety</td>
            <td>Slow compilation</td>
        </tr>
       <tr>
            <td rowspan=2>Java</td>
            <td>Rapid Compilation</td>
            <td rowspan=2>Complicated ecosystem</td>
        </tr>
        <tr>
            <td>Type Safety</td>
        </tr>
       <tr>
            <td rowspan=2>Python</td>
            <td rowspan=2>Ease of Use</td>
            <td>Lacks Type Safety</td>
        </tr>
        <tr>
            <td>Relatively Slow</td>
        </tr>
    </tbody>
</table>

So the engineers at Google wanted to create a solution to a problem which all things languages couldn't inherently solve. hence they came up with **Go**

     
## Features
* Fast Compilation
  * Faster development
  * Generally faster cycles of testing while development continues
* Fully Compiled
  * Makes better use of Resources
  * More performance
* Garbage collection
  * Automatic memory management
  * More aggressive design of garbage collection to not interfere with real time application
  * Note that garbage collection is not a major feature of fast compiled language, but rather belongs to most of the interpreted languages. Hence it's addition slows down Go execution a bit but not significantly
* Concurrent by default
  * Designed in mind to perform better for concurrent tasks
* Simplicity as a core value
* Strongly typed
  * Improves code readability
  * Compile time, type checks
  * Editor features to avoid errors

## Use cases
* Good at networking and concurrency. So works well with (best use cases)
  * Web Service
  * Web applications
* Light syntax comparable to scripting language
  * Task Automation
  * Machine Learning, etc
* Experimental
  * GUI/Thick-client

## Installation 
To setup a go environment you need
* The Go CLI tools
* An editor of your choice

Thats all that's needed. For smaller code snippet/practise you can directly use the online Go editor : [Go Playground](https://play.golang.org/)


## Go CLI
The CLI tools for setting up GO environment on your systems can be downloaded from the [Official Go Website](https://golang.org/).

Distributaries for major operating systems with latest/previous releases are all available there

`go` command is used to access the CLI tools from terminal/cmd. It has a lot of commands to perform a variety of tasks such as getting all go packages, building the project, executing a file, etc

`go help <command>` prints all the ways we can use the command 

`go doc <topic>` prints all the documentation comments for the said command's source code. The `topic` can be an entire module, a class or even a method in it.

To run a file we use the command `go run /path/to/file.go`

## Workspaces & Packages
A workspace is a simple directory in which all the Go code and various packages reside. It exists as a hierarchy of directories to store Go codes of various uses. This allows for common organization of code for easy sharing.

The various subdirectories are :
* src - Contains source code files
* pkg - Contains packages (libraries)
* bin - Contains executable

One workspace can be used for creating multiple packages. This level of hierarchy is not necessary. A default workspace created by Go itself is stored as an environment variable `GOPATH`

## Packages
* Packages are group of related source files
* Each package can be imported by other packages
* First line of the file names the package
  ```go
  // Package 1
  package demo

  // Package 2
  package demo2
  ```
* We can import these packages in any other package/Go source file
  ```go
  import (
    "demo"
    "demo1"
  )
  ```
* There must be one package called `main`
* Building the main package generates the executable program 
* The main package must also contain a `main` function, which acts as the entry point for the program

## Creating a project (module)
1. Create the module directory
2. Run `go mod init <module-name>` command in the directory
3. This creates a **go.mod** file which is basically the configuration for Go project initialization. Example go.mod file:
    ```mod
    module demo

    go 1.14
    ```
4. Create the main entry point to the module like a HelloWorld program
5. Now to run the module code we can simply use `go run <module-name>`


