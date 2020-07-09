# GO Tools

## Imports
* `import` keyword is used for importing other packages in current working code
* Go Tool may includes many standard packages like `fmt`
* When `import` is called the said package is searched in the directories specified in the `GOROOT` & `GOPATH` environment variables

## Commands
* **go build** - compiles the program
  * Creates an executable for the main package, same name as the first `.go` file
  * Arguments can be passed which are list of packages or a list of .go files