package main

import (
	"fmt"
)

func main() {
	var xtemp int
	x1 := 0
	x2 := 1
	for x := 0; x < 5; x++ {
		xtemp = x2
		x2 = x2 + x1
		x1 = xtemp
	}
	fmt.Println(x2)
}

// func main() {
// 	var input string
// 	fmt.Println("Enter a string")
// 	fmt.Scan(&input)
// 	input = strings.ToLower(input)
// 	if input[0] == 'i' && input[len(input)-1] == 'n' && strings.Contains(input,"a") {
// 		fmt.Printf("Found!")
// 	} else {
// 		fmt.Printf("Not Found!")
// 	}
// }
