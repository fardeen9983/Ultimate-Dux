package main

import "fmt"

func main() {
	slice := make([]int, 0, 10)
	var temp int

	fmt.Println("Enter 10 elements for the array :")
	for i := 0; i < 10; i++ {
		fmt.Scan(&temp)
		slice = append(slice, temp)
	}
	BubbleSort(slice)
	fmt.Println("Sorted sequence : ", slice)
}

// Swap - Takes a slice and swaps the elements on given indices
func Swap(slice []int, i int) {
	temp := slice[i]
	slice[i] = slice[i+1]
	slice[i+1] = temp
}

// BubbleSort - Takes a slice and sorts it
func BubbleSort(slice []int) {
	for i := 0; i < len(slice)-1; i++ {
		for j := 0; j < len(slice)-i-1; j++ {
			if slice[j] > slice[j+1] {
				Swap(slice, j)
			}
		}
	}
}
