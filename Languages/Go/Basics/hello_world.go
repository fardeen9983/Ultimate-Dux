package main

// This is a single line comment

import (
	"fmt"
)

const (
	one = iota
	two
	three
)

const (
	five0 = iota * 5
	five1
	five2
	five3
)

func main() {
	fmt.Println("Hello World")
	fmt.Println(one, two, three)
	fmt.Println(five0, five1, five2, five3)
}
