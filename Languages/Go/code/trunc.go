package main

import (
	"fmt"
)

func main() {
	var num float32
	fmt.Println("Enter a decimal value")
	fmt.Scan(&num)
	fmt.Printf("%d", int(num))
}
