# Go

Go (or Golang) is an open-source project, a highly reliable, efficient and a lightweight general purpose programming language created by a team of three people of Google, and recently becoming one of the most popular server-side languages.

Combines the performance and type safety of languages like C++, Java with developer friendliness and near instant compile time of scripting languages such as Python, JS.


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
* Garbage collector
  * More aggressive design of garbage collection to not interfere with real time application
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


