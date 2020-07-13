package main

import (
	"fmt"
	"sort"
	"strconv"
)

func main() {
	slice := make([]int, 3)
	var y string
	for {
		fmt.Println("Enter digit (press X to exit)")
		fmt.Scan(&y)
		x, err := strconv.Atoi(y)
		if err == nil {
			slice = append(slice, x)
			sort.Ints(slice)
			fmt.Println(slice)
		} else if y == "X" || y == "x" {
			break
		} else {
			fmt.Println("Please enter a valid integer")
			continue
		}
	}
}
