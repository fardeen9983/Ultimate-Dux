# GO Tools

## Imports
* `import` keyword is used for importing other packages in current working code
* Go Tool may includes many standard packages like `fmt`
* When `import` is called the said package is searched in the directories specified in the `GOROOT` & `GOPATH` environment variables

## Commands
* **go build** - compiles the program
  * Creates an executable for the main package, same name as the first `.go` file
  * Arguments can be passed which are list of packages or a list of .go files
* **go doc** - prints documentation for the package
  * Takes a package name as argument
  * All the documentation comments placed inside the said package and prints them out
* **go fmt** - formats source code
  * Refactors the code files to meet the standard code format 
  * This is optional
* **go get** - downloads and installs packages
* **go list** - Prints a list of all installed packages
* **go run** -  Compiles `.go` files and runs the executable
* **go test** - Runs tests using file ending in **_test.go**
* 